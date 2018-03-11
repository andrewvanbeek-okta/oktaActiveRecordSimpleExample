To run, cd into the project and run bundle install, rake db:create, rake db:migrate.

Make sure to configure with Okta.  You can put your okta values into the corresponding places in views/sessions/new.  If set up correctly users should be able to log in with okta credentials and use the oauth claims to create a user in active record as well as a Rails session.  
