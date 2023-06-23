# a manifest that kills a process
exec { 'kill_process':
  command => 'pkill -KILL killmenow',
  path => '/bin/bash',
  onlyif  => 'pgrep -q killmenow',
}
