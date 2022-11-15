.PHONY: deploy_hooks
deploy_hooks:
	chmod ug+x hooks/deploy_hooks.sh
	./hooks/deploy_hooks.sh

.PHONY: run
run:
	python main.py

.PHONY: all
all: deploy_hooks run
	