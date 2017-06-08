all: local

local:
	mkdocs serve

build:
	mkdocs build

deploy:
	mkdocs gh-deploy -v
