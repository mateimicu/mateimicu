---
title: "Docker Dynamic Commands"
date: 2017-12-04T19:51:58+02:00
draft: false
---
When learning docker an interesting question you may have is: **What happens with commands that install software when rebuilding a image**.
<!--more-->

Let's give a scenario:

You create a simple docker file like this:
```bash
FROM python:2.7-slim

# Update the system 
RUN apt-get update -y && apt-get upgrade -y

# add some source files
ADD . /app

# expose a port
EXPOSE 80

# Run app.py when the container launches
CMD ["python", "app.py"]
```
this is not a complete `Dockerfile`, just the snippets we are interested in.
If we try to build this a image based on this file we get something like this:
```
Step 1/5 : FROM python:2.7-slim
...
Step 2/5 : RUN apt-get update -y && apt-get upgrade -y
...
Step 3/5 : ADD . /app
...
Step 4/5 : EXPOSE 80
...
Step 5/5 : CMD ["python", "app.py"]
...
Successfully built 3609163bdce5
```
(the output is truncated to save space).
The important step is `2` where we update the system. We can see that this will download and install new versions for the libraries that we have on the system.

This can pose a problem because we may rely on specific version of the library. In other words next time we build the image (imagine we updated the codebase and need to create a new image
to deploy) the `apt-get update -y && apt-get upgrade -y` run and ruin out image (our application not handling the new libraries).

### UnionFS tot the rescue 
One thing to keep in mind is the way images are build/stored/transferred using a Union file system that works with layers. If I layer is already found it will not be "compiled" again, this means that if we add a new file to our directory `echo "new dummy file" >> dummy` and our current directory look like this:
```bash
~ $ ls
Dockerfile   dummy
```
When running a new build:
```bash
~ $ docker build .
Sending build context to Docker daemon  3.072kB
Step 1/5 : FROM python:2.7-slim
 ---> b0259cf63993
Step 2/5 : RUN apt-get update -y && apt-get upgrade -y
 ---> Using cache
 ---> 00414512ae60
Step 3/5 : ADD . /app
 ---> 7c8266369b33
Step 4/5 : EXPOSE 80
 ---> Running in 6bc4c5a16d2f
Removing intermediate container 6bc4c5a16d2f
 ---> ae8b02e34ced
Step 5/5 : CMD ["python", "app.py"]
 ---> Running in a78e73b6e1b9
Removing intermediate container a78e73b6e1b9
 ---> 96dd2f890cbf
Successfully built 96dd2f890cbf
```
we can see that the step `2` was skipped and the cached version for that layer (that runs `RUN apt-get update -y && apt-get upgrade -y`) was used.
This is an important distinction to make, if we build this image on the same machine (environment) where it was previously build the `RUN` command will not be executed.

This helps us maintain the same OS-lvl libraries and binaries when we build images but open a new problem **security**.

One reason why you may want to update the libraries is to make sure you have the latest security patches.
The build command helpfully allows us to disable the cache with the `--no-cache` command. Running the build in this way we can see that the updates are running.
```bash
docker build . --no-cache
Sending build context to Docker daemon  3.072kB
Step 1/5 : FROM python:2.7-slim
 ---> b0259cf63993
Step 2/5 : RUN apt-get update -y && apt-get upgrade -y
 ---> Running in cce3fb472a18
Get:1 http://security.debian.org jessie/updates InRelease [63.1 kB]
Get:2 http://security.debian.org jessie/updates/main amd64 Packages [588 kB]
...
...
 ---> 1dc0f9d842b1
Step 3/5 : ADD . /app
 ---> 597a83647250
Step 4/5 : EXPOSE 80
 ---> Running in 4e0da110e6f4
Removing intermediate container 4e0da110e6f4
 ---> 8159270ed233
Step 5/5 : CMD ["python", "app.py"]
 ---> Running in 8c3928f25d7a
Removing intermediate container 8c3928f25d7a
 ---> 4eb0161a51ab
Successfully built 4eb0161a51ab
```
Another problem with updating images is the amount of unnecessary updated it will bring, a docker image should be light and only contain the **required** dependencies.
Thankfully most containers don't and **shouldnt** be exposed to internet, this minimises the attack vectors a bad actor can use.

### Caching
Another problem with `apt-get` in a container is the caching problem. You can't have a docker file that looks like this
```bash
RUN apt-get update -y
RUN apt-get upgrade -y
```
The first command will use a cache that is not shared with the second command, this is a good reason why you should chain them using bash `&&`.

