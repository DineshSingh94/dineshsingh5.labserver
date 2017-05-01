class localusers{
	user{'admin':
		ensure 		=> present,
		shell  		=> '/bin/zsh',
		home   		=> '/home/admin',
		gid    		=> 'wheel',
		managehome 	=> true,
		password 	=> '$6$h3OhJq4v$008CB2IsaGxfZCy/cGWJ4gq.OFI52ApxDV/VpQ4ON7sGuHWRxyFFBTWqGS9dLQLw2kQptRSWu2DYRhgAkiUeU0'
	}
	
	user{'lucifer':
		ensure 		=> present,
		shell 		=> '/bin/zsh',
		home		=> '/home/lucifer',
		groups		=> ['wheel','finance'],
		managehome	=> true,
	}
}
