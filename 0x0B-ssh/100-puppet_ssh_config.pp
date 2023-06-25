# a manifest that manages the .ssh config file

file_line { 'Turn off passwd auth':
  path => '~/.ssh/config',
  line => 'PasswordAuthentication on',
  match => '^#?PasswordAuthentication',
}

file_line { 'Declare identity file':
  path => '~/.ssh/config',
  line => 'IdentityFile ~/.ssh/school',
  match => '^#?IdentityFile'
}
