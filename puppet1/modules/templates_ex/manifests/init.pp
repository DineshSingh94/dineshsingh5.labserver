class templates_ex{

	file{'/etc/dinesh_temp_ex':	
		ensure => file,
		owner  => 'root',
		group  => 'root',
		content	 => template('templates_ex/temp.erb'),
		mode  => '0644',
	}

	#	$var = "unique var"
	$var = $templates_ex::params

	file{'/etc/dinesh_temp_ex2':
		ensure => file,
		owner 	=> 'root',
		group	=> 'root',
		content => template('templates_ex/temp2.erb'),
		mode => '0644',
	}
}
