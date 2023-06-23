# we are using puppet to create a file and storing a message
file { '/tmp/school':
    mode    => '0744',
    owner   => 'www-data',
    group   => 'www-data',
    content => 'I love Puppet',
}
