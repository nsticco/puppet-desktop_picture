# puppet-mac_profiles

This module provides an additional layer of abstraction over Mac Configuration Profiles allowing you to adjust them simply by passing parameters to Puppet classes.

WARNING: This is an incomplete work in progress as of 3/2/19. While it shouldn't crash anything, it may have inconsistencies.

## Usage
To change the desktop picture, specify the local path to the image file and your organization name (although these are both optional parameters):

``` puppet
class {'mac_profiles::desktop':
    path         => '/Library/Desktop Pictures/Snow.jpg',
    organization => 'Your Organization Name' 
}
```

## Dependencies

* [keeleysam/puppet-mac_profiles_handler](https://github.com/keeleysam/puppet-mac_profiles_handler)
* [puppetlabs/stdlib >= 2.3.1](https://forge.puppetlabs.com/puppetlabs/stdlib)

## References
<a href="https://puppet.com/docs">Puppet Docs</a>

<a href="https://developer.apple.com/business/documentation/Configuration-Profile-Reference.pdf">Mac Developers Configuration Profile Reference</a>

<a href="https://puppet.com/docs/puppet/6.3/lang_template_erb.html">ERB Template Reference</a>
