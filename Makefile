CMD=./kanban

help:
	@cat .make_help	

test:
	@test/new_context.sh
	@test/test.py

.PHONY: help test
