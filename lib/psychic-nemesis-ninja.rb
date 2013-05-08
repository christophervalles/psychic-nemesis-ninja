class PsychicMemesisNinja < Vagrant.plugin("2")
  name "Psychic Memesis Ninja"

  command "restart-apache" do
    require_relative "commands/restart-apache"
    RestartApache
  end
  
  command "restart-mysql" do
    require_relative "commands/restart-mysql"
    RestartMysql
  end
  
  command "restart-memcached" do
    require_relative "commands/restart-memcached"
    RestartMemcached
  end
  
  command "db-export" do
    require_relative "commands/db-export"
    ExportDb
  end
  
  command "db-import" do
    require_relative "commands/db-import"
    ImportDb
  end
end