# a manifest that manages the .ssh config file

file_line { 'Turn off passwd auth':
  path => '~/.ssh/config',
  line => 'PasswordAuthentication on',
  match => '^[#]+[\s]*(?i)?PasswordAuthentication[\s]+(yes|no)$',
}

file_line { 'Declare identity file':
  path => '~/.ssh/config',
  line => 'IdentityFile ~/.ssh/school',
  match => '^[#]+[/s]*(?i)IdentityFile[/s]+~/.ssh/id_rsa$',
}
