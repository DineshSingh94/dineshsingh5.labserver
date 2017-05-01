class filedemo{
	
	File{
			# These are the default values which are applied, if we specify that, then only resources can override	
		owner => 'root',
		group => 'finance',
		mode  => '660',
		
	}

	$homedir = "/root"
	$my_file_content = "this is my content written from variable in puppet"

	file{ "${homedir}/myfile.txt":		
		content => $my_file_content
	}	

	file{"${homedir}/myfile2.txt":
		content => 'my file2 content',
	}

	file{"${homedir}/myfile3.txt":
		group => 'admin',
		owner => 'lucifer',
		content => "my file3 content",
	}

	file{'/root/motd':
		ensure 		=> present,
		content		=> 'this is motd file managed by content attribute',
		owner		=> root,
		group 		=> root,
		mode		=> '0644',
	}
		
	file{'/etc/motd':
	
		ensure		=> link,
		target		=> '/root/motd',
	}

}
