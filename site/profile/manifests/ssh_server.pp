class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC5fbK7x2V4gSAbQ8Qdy1f/AZwKvkQ9J0jhmodiAp/oU6zm1fZdwJpufIQhYFG6foOY9wo2yAZgzlY+8zGyNCi4mlwb51ajSgSL0CFHGM6jndVLV2rCL6PB2WZ9Boddf2j1ParbEwRqtkb+cr5/AQUaOlcQzaFxQTKuHkpfxBlMNRf+xrsE+NGAyMS8IpNEc9ShHaDcQLMS2nzpxUdeXKMRhI8PfZ3Dn9Fs3kUoL+dbP8zjG33y4bbJlpReBLnL5kVVxm9m97ENkhPgvKul6Ncd/DvwKXszIVi728K8mWhpJAI4SZ/G/x4lmFo6TJ0j1bjeFL6SJo6hTv2+qYXfmbEZ',
	}  
}
