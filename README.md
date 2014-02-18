# Sphinx module for Puppet

This module manages the [sphinx search](http://sphinxsearch.com/) server on Linux (RedHat/Debian) distros.

## Installation

Clone this repo to your Puppet modules directory

```sh
    git clone git://github.com/scalia/puppet-sphinx.git sphinx
```

## Usage

Add the following to your site manifest:

```puppet
    class { 'sphinx':
      config_file => 'puppet:///modules/scaliadev/sphinx/project.sphinx.conf',
    }
```

Customize the package and service name for your custom maintained sphinx build:

```puppet
    class { 'sphinx':
      config_file  => 'puppet:///modules/scaliadev/sphinx/project.sphinx.conf',
      package_name => 'sphinxsearch-odbc',
      service_name => 'sphinxsearch-odbc',
    }
```

Initialize indexes directly after install by calling the `indexer` tool:

```puppet
    class { 'sphinx':
      config_file => 'puppet:///modules/scaliadev/sphinx/project.sphinx.conf',
      init_index  => true,
    }
```

**Note:** This module does not manage any routine indexing processes.

## Anchors

This module defines the following anchors so you can control when the class will be run

```puppet
    Anchor['sphinx_first']
```
```puppet
    Anchor['sphinx_last']
```

## Author

[Scalia](https://github.com/scalia)
