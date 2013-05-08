class RestartMysql < Vagrant.plugin(2, :command)
  def execute
    with_target_vms([], :single_target => true) do |vm|
      @logger.debug("Restarting mysql on remote machine")
      env = vm.action(:ssh_run, :ssh_run_command => "sudo service mysql restart")
      
      # Exit with the exit status of the command or a 0 if we didn't
      # get one.
      exit_status = env[:ssh_run_exit_status] || 0
      return exit_status
    end
    0
  end
end