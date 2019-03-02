class mac_profiles (
    $path = '/Library/Desktop Pictures/El Capitan.jpg',
    $organization = 'Puppet Mac Profiles'
)
{
    mac_profiles_handler::manage { 'com.puppetmacprofiles.desktop':
        ensure      => 'present',
        file_source => template('mac_profiles/com.puppetmacprofiles.desktop.mobileconfig.erb'),
        type        => 'template',
    }
}
