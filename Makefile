CMD=./kanban

help:
	@cat .make_help	

test:
	@test/test.py

.PHONY: help test
