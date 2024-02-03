namespace :environment do
    desc 'Configura o ambiente de desenvolvimento'
    task :setup => :environment do
      puts "Dropando banco de dados..."
      Rake::Task['db:drop'].invoke

      puts "Criando banco de dados..."
      Rake::Task['db:create'].invoke
  
      puts "Executando migrações..."
      Rake::Task['db:migrate'].invoke
  
      puts "Populando banco de dados..."
      Rake::Task['db:seed'].invoke
    end
end