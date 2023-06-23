# installs a package from the pip3 package handler
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
