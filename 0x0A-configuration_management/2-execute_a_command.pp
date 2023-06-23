# a manifest that kills a process
exec { 'kill_process':
  command => 'pkill -9 -f killmenow',
  onlyif  => ['/usr/bin', '/usr/sbin', '/bin'],
}
