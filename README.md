# innovationwomen
=============

## Getting started developing

  * Install and launch [the Postgres app](http://postgresapp.com)
  * Create a postgres role: run `psql`, then run `create role innovationwomen login createdb;`
  * Create the databases: `rake db:create:all`
  * Run migrations: `rake db:migrate`
  * Install [MailCatcher](https://github.com/sj26/mailcatcher): `gem install mailcatcher`
  * Run MailCatcher in the background by typing `mailcatcher` into the
terminal
  * Go to `localhost:1080` to view the MailCatcher mailbox
  * Run tests: `rake`
  * Start the server: `foreman start`
  * Visit the site: `http://localhost:5000/`
  * If you wish to see the ruby logs while running foreman, run `tail -f
log/development.log` in a new shell

##
