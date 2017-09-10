generate:
	@crystal run ./src/generator.cr

format:
	@crystal tool format src

docs: build
	@rm -rf doc
	@crystal doc

build: generate format
