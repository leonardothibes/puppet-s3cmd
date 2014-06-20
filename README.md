puppet-s3cmd
============

A puppet module to manage s3cmd.

## Sample Usage
Install s3cmd to "vagrant" user:
```puppet
node default {
	class {'vagrant':
		access_key => 'ACCESS_KEY',
		secret_key => 'SECRET_KEY',
	}
}
```

Purge completly s3cmd:
```puppet
node default {
	class {'s3cmd':
		ensure => absent
	}
}
```

Contact
-------

Principal developer:
	[Leonardo Thibes](http://leonardothibes.com) => [eu@leonardothibes.com](mailto:eu@leonardothibes.com)

Support
-------

Please log tickets and issues at our [Projects site](https://github.com/leonardothibes/puppet-s3cmd/issues)
