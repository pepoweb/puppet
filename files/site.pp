# ..files/site.pp
# Author: Pepo
# Date: March 26, 2015
# Use: Set up (config) files and dirs

# create a file
file {'/tmp/hello':
	ensure  => file,
	content => "Hello World \n",
}

# create a dir
file {'/tmp/dir':
	ensure => directory,
	mode   => 0644,
}

#create symlink
file {'/tmp/sym':
	ensure => link,
	target => "/tmp/hello",
}
