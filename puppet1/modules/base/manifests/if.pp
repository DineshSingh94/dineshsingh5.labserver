class base::if{
	if $::hostname =~ /^dineshsingh(\d+)/ {
		# =~ for telling to be ready to match a regular expression
		notice("you have arrived at server $0")
		
	}
}
