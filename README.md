# A bug with alchemy-solidus and puma?

This is a demo app I created by installing rails, solidus, alchemy and alchemy-solidus.

I want to use solidus layout for alchemy content, so I put

`require 'alchemy/solidus/use_solidus_layout'`

inside `config/initializers/alchemy.rb`.

But when I use puma with workers, alchemy content is not rendered anymore in solidus layout, but in the application layout.

## How to test it

Clone this repo and run the setup script:

`$ bin/setup`

Start Rails and log in (use the credentials you entered in the `bin/setup` process. Defaults: admin@example.com test123):

http://localhost:3000/admin/login

Now go to alchemy cms:

http://localhost:3000/admin/pages?admin_locale=en

and create and publish the home page.

Now visit the website root:

http://localhost:3000

You see alchemy content rendered inside spree layout

https://cl.ly/d30990fda382/Schermata%202019-04-07%20alle%2023.43.32.png

This is ok! But we are not using workers yet!

### Using workers

Checkout `bug` branch:

`$ git checkout branch`

In this branch I enabled puma workers in `config/puma.rb`:

`workers ENV.fetch("WEB_CONCURRENCY") { 2 }`

and

`preload_app`

Now start `rails server` again and visit the root url.

Result: https://cl.ly/299531b648de/Schermata%202019-04-07%20alle%2023.48.23.png

Alchemy content is not loaded anymore in solidus layout.

### Possible fix

Checkout the branch `fix` and stop/start rails server again. Now alchemy should be
rendered in solidus layout again.

