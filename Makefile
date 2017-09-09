generate:
	@crystal run ./src/pyrite-generator.cr

format:
	@crystal tool format kube-versions

docs: build
	@rm -rf doc
	@crystal doc

build: generate format
