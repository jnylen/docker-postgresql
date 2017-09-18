all: build

build:
	@docker build --tag=jnylen/postgresql .

release: build
	@docker build --tag=jnylen/postgresql:$(shell cat VERSION) .
