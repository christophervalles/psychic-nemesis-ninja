class ExportDb < Vagrant.plugin(2, :command)
  def execute
    with_target_vms([], :single_target => true) do |vm|
      @logger.debug("Exporting databases to vagrant folder")
      env = vm.action(:ssh_run, :ssh_run_command => "filename=`date +%Y%m%d-%H%M%S`; mkdir -p /vagrant/db-export;  mysqldump -uroot --all-databases > /vagrant/db-export/${filename}.sql")
      
      # Exit with the exit status of the command or a 0 if we didn't
      # get one.
      exit_status = env[:ssh_run_exit_status] || 0
      return exit_status
    end
    0
  end
end