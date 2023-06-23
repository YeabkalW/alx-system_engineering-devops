# a manifest that kills a process
exec { 'kill_process':
  command => 'pkill -KILL killmenow',
  onlyif  => 'pgrep -q killmenow',
}
