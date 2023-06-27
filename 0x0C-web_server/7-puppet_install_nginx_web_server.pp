class nginx_server {
  package { 'nginx':
    ensure => installed,
  }

  service { 'nginx':
    ensure    => running,
    enable    => true,
    hasstatus => true,
    require   => Package['nginx'],
  }

  file { '/etc/nginx/sites-available/default':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => "# Nginx server configuration\n
                server {
                  listen 80 default_server;
                  listen [::]:80 default_server;
                  server_name _;

                  location / {
                    return 301 https://www.example.com/;
                  }

                  location = /redirect_me {
                    return 301 https://www.example.com/;
                  }

                  location = / {
                    return 200 'Hello World!';
                  }
                }\n",
    require => Package['nginx'],
    notify  => Service['nginx'],
  }
}

include nginx_server
