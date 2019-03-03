class mac_profiles::password_policy (
  $organization = 'Puppet Mac Profiles'
) {
  mac_profiles_handler::manage { 'com.puppetmacprofiles.passwordpolicy':
    ensure      => 'present',
    file_source => template('mac_profiles/com.puppetmacprofiles.passwordpolicy.mobileconfig.erb'),
    type        => 'template',
  }
}
