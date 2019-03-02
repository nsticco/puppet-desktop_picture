class mac_profiles (
    $path = '/Library/Desktop Pictures/El Capitan.jpg'
)
{
    mac_profiles_handler::manage { 'com.puppetmacprofiles.config.desktop':
        ensure      => 'present',
        file_source => template('mac_profiles/com.puppetmacprofiles.config.desktop.mobileconfig.erb'),
        type        => 'template',
    }
}
