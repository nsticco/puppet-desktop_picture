class mac_profiles (
  $path = '/Library/Desktop Pictures/El Capitan.jpg',
  $organization = 'Puppet Mac Profiles',
  $desktop_manage = false
) {
  contain mac_profiles::desktop
}
