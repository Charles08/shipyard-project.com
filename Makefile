all: build bundle

build:
	@cd app && go build -v .

bundle:
	@sudo box --debug build -c ./ package.toml
	@sudo box --debug packages create shipyard-project
