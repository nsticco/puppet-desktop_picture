class mac_profiles::desktop (
  $path = '/Library/Desktop Pictures/Lake.jpg',
  $organization = 'Puppet Mac Profiles'
) {
  $desktop_configuration_uuid = fqdn_uuid('com.puppetmacprofiles.desktop')
  $desktop_content_uuid = fqdn_uuid('com.puppetmacprofiles.desktop content')
  mac_profiles_handler::manage { 'com.puppetmacprofiles.desktop':
    ensure      => 'present',
    file_source => template('mac_profiles/com.puppetmacprofiles.desktop.mobileconfig.erb'),
    type        => 'template',
  }
}
