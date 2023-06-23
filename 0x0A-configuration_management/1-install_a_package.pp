# installs a package from the pip3 package handler
package { 'flask':
  ensure   => 'present',
  provider => 'pip3',
  version  => '2.1.0',
}
