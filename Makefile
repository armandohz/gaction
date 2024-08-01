# current-dir := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
# SHELL = /bin/sh

deps:
	@npm ci

test-ci:
	@npm run test-ci

#.PHONY: build # Ignore build directory
build: 
	@npm run build

deploy: build
	@echo "🚀 Deploy!!!"

up-dev:
	@ng serve

lint:
	@echo "🔦 Code linted\n" \
	      "  --- Level supreme"

clean-cache:
	@rm -rf apps/*/*/var

#save-the-world:
#	@rm -rf node_modules
