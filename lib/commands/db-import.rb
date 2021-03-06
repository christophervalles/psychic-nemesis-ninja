class ImportDb < Vagrant.plugin(2, :command)
  def execute
    with_target_vms([], :single_target => true) do |vm|
      @logger.debug("Import databases from /vagrant/exported_dbs.sql")
      env = vm.action(:ssh_run, :ssh_run_command => "filename=`ls /vagrant/db-export | sort -r | head -1`; mysql -uroot < /vagrant/db-export/${filename}")
      
      # Exit with the exit status of the command or a 0 if we didn't
      # get one.
      exit_status = env[:ssh_run_exit_status] || 0
      return exit_status
    end
    0
  end
end