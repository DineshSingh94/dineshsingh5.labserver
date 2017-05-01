class ntp {

	file{'/home/user/file1':
		ensure  => present,
		content => 'Welcome to file1',
	}

	package{'httpd':
		ensure => present,
	}
}
