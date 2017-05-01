class base::variables{
	file{'/root/var_text.txt':
		content => $topscope,
		owner => 'root',
		group => 'root',
		mode => '0644'	
	}
	notify {"${::operatingsystem} is the operating system":}
}
