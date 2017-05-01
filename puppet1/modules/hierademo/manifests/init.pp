class hierademo($domain_name = "default", $api_key = "default_api_key"){
	#domain_name = hiera(domain_name)
	#hiera_hash
	#hiera_array

	notify {"The domain name value is: ${domain_name}":}
	notify {"The api key value is: ${api_key}":}
}
