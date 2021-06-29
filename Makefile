.PHONY: help build start stop clean

help: #Display this help message.
	@echo ""
	@echo "Title of the project"
	@echo ""
	@grep '^[a-zA-Z_\-]\+:' Makefile | sed 's/:.*#[ ]*/:/' | column -s ':' -t | sort -h


build: #Create the X

start: #Start the X

stop: #Stop everything.

clean: stop #Stop everything, and remove X
