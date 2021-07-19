# Pyrite

A Kubernetes Resource Mappings for the Crystal Language.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  pyrite:
    github: psykube/pyrite
```

## Usage

Pyrite should support Kubernetes API from 1.6.0 and beyond. In order to use 
pyrite, you will want to include the VERSION that best maps to your k8s api version.
Requiring more than one version at this time will result in an error.

```crystal
require "pyrite/versions/v1.21"
```

## Docs

Each version of kubernetes has its own generated types. The docs for each are listed below:

* [1.11](https://psykube.github.io/pyrite/versions/v1.11)
* [1.12](https://psykube.github.io/pyrite/versions/v1.12)
* [1.13](https://psykube.github.io/pyrite/versions/v1.13)
* [1.14](https://psykube.github.io/pyrite/versions/v1.14)
* [1.15](https://psykube.github.io/pyrite/versions/v1.15)
* [1.16](https://psykube.github.io/pyrite/versions/v1.16)
* [1.17](https://psykube.github.io/pyrite/versions/v1.17)
* [1.18](https://psykube.github.io/pyrite/versions/v1.18)
* [1.19](https://psykube.github.io/pyrite/versions/v1.19)
* [1.20](https://psykube.github.io/pyrite/versions/v1.20)
* [1.21](https://psykube.github.io/pyrite/versions/v1.21)

## Contributing

1. Fork it ( https://github.com/jwaldrip/pyrite/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [[jwaldrip]](https://github.com/jwaldrip) Jason Waldrip - creator, maintainer
