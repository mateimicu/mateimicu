server:
	hugo server -D -v --disableFastRender
pull:
	git submodule init
	git submodule update
update_theme:
	pushd themes/kiss
	git fetch
	git pull master
	popd
	git add themes
	git commit -m "update: theme"
