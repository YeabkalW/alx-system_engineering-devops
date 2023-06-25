# a manifest that manages the .ssh config file

class config {
  file { '~/.ssh/config':
    ensure  => present,
    content => "
      host 54.236.26.181
        IdentityFile = ~/.ssh/config
        PasswordAuthentication no
    ",
    owner   => 'root',
    group   => 'root',
    mode    => '0600',

  }
}
