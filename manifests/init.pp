class s3cmd(
	$ensure          = 'present',
	$access_key      = 'ACCESS_KEY',
	$secret_key      = 'SECRET_KEY',
	$bucket_location = 'US',
	$home_dir        = '/home',
	$user,
) inherits s3cmd::dependencies {

	case $ensure {
		'present': {
			s3cmd::install {'s3cmd::install':} -> s3cmd::configure {$user:
				access_key      => $access_key,
				secret_key      => $secret_key,
				bucket_location => $bucket_location,
				home_dir        => $home_dir,
			}
		}
		'absent': { s3cmd::purge {$user: home_dir => $home_dir} }
		default : { fail("Unsupported option for \"ensure\" param: ${ensure}") }
	}
}
