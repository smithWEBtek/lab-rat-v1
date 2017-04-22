namespace :db do
  desc 'heroku pg:reset, migrate, seed'
  task hdcms: :environment do
    exec('heroku pg:reset --app lab-rat-v1 --confirm lab-rat-v1
      heroku run rake db:migrate --app lab-rat-v1
      heroku run rake db:seed --app lab-rat-v1')
  end
end
