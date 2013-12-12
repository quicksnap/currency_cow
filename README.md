# Currency Cow

_Moo!_

## Installation

* Clone the repo using `git clone https://github.com/quicksnap/currency_cow.git`
* Run `bundle`
* Run the migrations via `rake db:migrate` and, optionally `rake db:seed` for a few test rates.
* Optionally run the database update task: `API_KEY=xxxxx rake update_rates`, where API_KEY is your key to [open exchangerates](https://openexchangerates.org/)
* If you use pow, `(cd ~/.pow/ && ln -s /path/to/currency_cow)`. Otherwise, start `rails s`
* Visit the site at [localhost](http://localhost:3000/)
