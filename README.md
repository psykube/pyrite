# Pyrite

A Kubernetes Client for Crystal-lang

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
require "pyrite/versions/v1.7.5"
```

## Contributing

1. Fork it ( https://github.com/jwaldrip/pyrite/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [[jwaldrip]](https://github.com/jwaldrip) Jason Waldrip - creator, maintainer
