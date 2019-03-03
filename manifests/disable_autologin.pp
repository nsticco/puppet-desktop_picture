class mac_profiles::disable_autologin (
  $organization = 'Puppet Mac Profiles'
) {
  mac_profiles_handler::manage { 'com.puppetmacprofiles.disableautologin':
    ensure      => 'present',
    file_source => template('mac_profiles/com.puppetmacprofiles.disableautologin.mobileconfig.erb'),
    type        => 'template',
  }
}
