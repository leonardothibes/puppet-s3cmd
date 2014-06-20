define s3cmd::configure(
	$user = $title,
	$access_key,
	$secret_key,
	$bucket_location,
	$home_dir
) {
	file {"s3cmd::params::${user}":
		ensure  => present,
		path    => "${home_dir}/${user}/.s3cfg",
		owner   => $user,
		group   => $user,
		mode    => 0600,
		content => template('s3cmd/dot-s3cfg.erb'),
		require => Package['s3cmd'],
	}
}
