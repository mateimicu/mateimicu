---
title: "what-to-code"
date: 2017-11-28T23:57:06+02:00
draft: false 
---
This is a list with projects I want to code for myself. Some of them are born from curiosity and some try to solve a problem that I have.


 - CLI C++.
   When I implemented a simple DNS (minimal functionality) [here](https://github.com/mateimicu/dns) I also added a little OOP style CLI
   utility. That can be a simple C++ project that lets you define what parameters you want (if they are required, default values and help
   messages).
   This is how it currently works:
   ```
    Parser parser;
    StrOption* verbosity = new StrOption('v', "verbose", "Verbosity level(v, vv, vvv).", false);
    verbosity->set_default("v");

    BoolOption* debug = new BoolOption('d', "debug", "Debug mode(default false).", false);
    debug->set_default(false);

    ...

    parser.add_option(verbosity);
    parser.add_option(debug);
   ```
 - A utility that automatically unsubscribes you from emails. For example, you can decrees the number of spam emails by unsubscribing to all
   emails. Or you can selectively mark some emails and the utility would try to unsubscribe from them.
   It should be smart enough to follow some steps when trying to finish the process and also smart enough to find the link in the email.
 - Find a old game and implement an AI for it (using different algorithms like from ML, IA, mostly based on reinforcement learning)

