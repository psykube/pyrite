generate:
	@rm -rf ./src/pyrite/*/
	@crystal run ./vendor/generator/src/generator.cr

format:
	@crystal tool format

docs: build
	@rm -rf doc
	@crystal doc

build: generate format
