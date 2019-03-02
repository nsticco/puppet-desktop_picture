class mac_profiles (
    $path = '/Library/Desktop Pictures/El Capitan.jpg'
)
{
    mac_profiles_handler::manage { 'com.puppetmacprofiles.desktop':
        ensure      => 'present',
        file_source => template('mac_profiles/com.puppetmacprofiles.config.mobileconfig.erb'),
        type        => 'template',
    }
}
