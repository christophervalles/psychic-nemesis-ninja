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
  
  command "export-db" do
    require_relative "commands/export-db"
    ExportDb
  end
  
  command "import-db" do
    require_relative "commands/import-db"
    ImportDb
  end
end