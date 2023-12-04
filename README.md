## Deploy

- `vagrant up`
- `cd /rails/library`
- `bundle install`
- `psql`
- `alter user vagrant encrypted password 'vagrant';`
- `rails db:create`
- `rails db:migrate`
- `rails db:seed`
- `rails s -b 0.0.0.0`