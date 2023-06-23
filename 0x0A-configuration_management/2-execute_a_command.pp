# a manifest that kills a process
exec { 'pkill':
  command => 'pkill -9 -f killmenow',
  onlyif  => ['/usr/bin', '/usr/sbin', '/bin'],
}
