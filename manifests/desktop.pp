class mac_profiles::desktop {
  if $desktop_manage {
    $desktop_top_uuid = fqdn_uuid('com.puppetmacprofiles.desktop')
    $desktop_content_uuid = fqdn_uuid('com.puppetmacprofiles.desktop content')
    mac_profiles_handler::manage { 'com.puppetmacprofiles.desktop':
      ensure      => 'present',
      file_source => template('mac_profiles/com.puppetmacprofiles.desktop.mobileconfig.erb'),
      type        => 'template',
    }
  }
}
