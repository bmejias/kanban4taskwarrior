CMD=./kanban

help:
	@cat .make_help	

test:
	$(CMD) 
	$(CMD) add
	$(CMD) start
	$(CMD) done
	$(CMD) block
	$(CMD) backlog
	$(CMD) ready
	$(CMD) blocked
	$(CMD) completed
	$(CMD) open
	$(CMD) close

.PHONY: help test
