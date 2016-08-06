**views/** should contain your template files. 
This assumes you are using the render plugin and server-side rendering

**public/** should contain any static files that should be served directly by the webserver

**assets/** should contain the source files for your CSS and javascript assets. 
If you are not using the assets plugin, you won't need an assets directory.

**models.rb** should contain all code related to your database/ORM. 
This file should be required by app_name.rb. 
This keeps your model code separate from your web code, making it easier to use outside of your web code. 
It allows you to get an IRB shell for accessing your models via irb -r ./models, without loading the Roda application

**models/** should contain your ORM models, with a separate file per model class.

**migrate/** should create your database migration files, if you are using an ORM that uses migrations.

**spec/** should contain your specifications/tests. 
For a small application, it's recommended to a have a single file for your model tests, and a single file for your web/integration tests.


**Rakefile** should contain the rake tasks for the application. 
The convention is that the default rake task will run all specs/tests related to the application. If you are using the assets plugin, you should have an assets:precompile task for precompiling assets.

