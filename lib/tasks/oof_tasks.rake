namespace :oof do
   
   task :hello_world do
      puts "Hello world"
   end
   
   task :import_daily => :environment do
      puts "[thc:import_pp] Begin..."
      puts "".ljust(42,'_')
      mysqlXmlImporter = MysqlXmlImporter.new()
      mysqlXmlImporter.import()
   end
   
end