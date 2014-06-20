define s3cmd::purge($user = $title, $home_dir = '/home')
{
	package {'s3cmd'              : ensure => absent}
	file    {"${home_dir}/${user}": ensure => absent}
}
