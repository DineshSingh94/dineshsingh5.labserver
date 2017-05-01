class base::ssh{
	
	
#	case $::osfamily{
#		'RedHat': {
#			$ssh_name = 'sshd'
#		}
#
#		'Debian':{
#			$ssh_name = 'ssh'
#		}
#		default:{
#			Warning('Os not supported by our module')
#			# fail('Os not supported by our module to fail ')
#		}
#	}

	$ssh_name = $::osfamily ? {
		'RedHat' => 'sshd',
		'Debian' => 'ssh',
		default  => 'value',
	}

	package{'openssh-package':
		name   => 'openssh',
		ensure => present,
		before => File['/etc/ssh/sshd_config']
	}
		
	file {'/etc/ssh/sshd_config':
		ensure => file,
		owner  => 'root',
		group  => 'root',
		require => Package['openssh-package'],
		source => 'puppet:///modules/base/sshd_config',
		notify => Service['ssh-service'], # when changes are made, it will restart
	}
	
	service {'ssh-service':
		name => $ssh_name,
		ensure => running,
		enable => true,
		subscribe => File['/etc/ssh/sshd_config'],
	}
}
