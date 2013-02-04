# RWCI Server

## Description

Installs the [Railsware](https://railsware.com/) Continuous Integration Server.


## Requirements

This cookbooks requires the excellent [chef-rvm](https://github.com/fnichol/chef-rvm) cookbook from @fnichol.


### Supported Platforms

The following platforms are supported by this cookbook, meaning that the recipes run on these platforms without error:

* Ubuntu
* Debian
* Red Hat
* CentOS
* Fedora
* Amazon


## Recipes

* `chef-ci` - The default recipe.

## Usage

This cookbook installs the rwci components if not present, and pulls updates if they are installed on the system.

## Attributes

```ruby
default["rwci"]["user"]        = "rwci"
default["rwci"]["group"]       = "rwci"
default["rwci"]["rvm_ruby"]    = "ruby-1.9.3-p194"
default["rwci"]["rvm_gemset"]  = "rwci"
```

