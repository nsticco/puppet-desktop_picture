# desktop_picture

This module will set a profile on an OS X machine to enforce the desktop picture.

## Usage

``` puppet
class {'desktop_picture':
    path => '/Library/Desktop Pictures/Grass Blades.jpg'
}
```

Or to configure with Hiera:

``` yaml
---
desktop_picture::path: '/Library/Desktop Pictures/Grass Blades.jpg'
```

## Dependencies

* [keeleysam/puppet-mac_profiles_handler](https://github.com/keeleysam/puppet-mac_profiles_handler)

## References
<a href="https://puppet.com/docs">Puppet Docs</a>

<a href="https://developer.apple.com/business/documentation/Configuration-Profile-Reference.pdf">Mac Developers Configuration Profile Reference</a>

<a href="https://puppet.com/docs/puppet/6.3/lang_template_erb.html">ERB Template Reference</a>
