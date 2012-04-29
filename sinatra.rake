namespace :update do
  desc 'Updates sinatra-min'
  task :'sinatra-min' do
    if File.exists?( File.expand_path('~/.rake/sinatra-min'))
      puts 'updating sinatra-min'
      system 'cd ~/.rake/sinatra-min; git pull'
    else
      puts 'cloning sinatra-min in .rake directory'
      system 'cd ~/.rake; mkdir sinatra-min'
      system 'git clone git@github.com:plagelao/sinatra-min.git ~/.rake/sinatra-min'
    end
  end

end

namespace :sinatra do

  desc "Creates a new sinatra project based on @plagelao's sinatra-min"
  task :create, [:project_name] => ['update:sinatra-min'] do |t, args|
    project_name = args[:project_name]
    puts "creating a sinatra app in #{project_name}"
    system "mkdir #{project_name}"
    puts 'copying sinatra files from sinatra-min'
    system 'mv ~/.rake/sinatra-min/.git ~/.rake'
    system "cp -R ~/.rake/sinatra-min/ #{project_name}"
    system 'mv ~/.rake/.git ~/.rake/sinatra-min'
  end

end
