HUGO ?= hugo

.PHONY: server build pull update_theme

server:
	$(HUGO) server -D --disableFastRender

build:
	$(HUGO) --minify

pull:
	git submodule update --init

update_theme:
	git submodule update --remote themes/kiss
	git add themes/kiss
	git commit -m "update: theme"
