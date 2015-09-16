.DEFAULT_GOAL = update

update:	refresh-submodules

refresh-submodules:
	@echo "Refreshing submodules..."
	@git submodule sync && git submodule update --recursive --init
	@git submodule foreach --recursive 'git fetch origin master; git checkout master; git reset --hard origin/master'


.PHONY: update refresh-submodules
