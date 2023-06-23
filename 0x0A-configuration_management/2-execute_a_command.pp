# a manifest that kills a process
exec { 'kill_process':
  command => 'pkill -KILL killmenow',
  path => '/usr/bin',
  onlyif  => 'pgrep -q killmenow',
}
