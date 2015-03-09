co(de)create
============

[![Join the chat at https://gitter.im/erikajon/WomenCanMakeIt2](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/erikajon/WomenCanMakeIt2?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Ruby on Rails with PostgreSQL

Setup
-----

Clone the repository:
```shell
$ git clone git@github.com:erikajon/WomenCanMakeIt2.git
```

Change into the directory:
```shell
$ cd WomenCanMakeIt2
```

Install dependencies:
```shell
$ bundle
```

If you haven't already, [install PostgreSQL](http://www.moncefbelyamani.com/how-to-install-postgresql-on-a-mac-with-homebrew-and-lunchy/).

Create local databases:
```shell
$ rake db:create
$ rake db:create RAILS_ENV=test
```

Migrate the databases to use the latest schema:
```shell
$ rake db:migrate
$ rake db:migrate RAILS_ENV=test
```

Testing
-------

```shell
$ rspec
```

Development
-----------

Start the server:
```shell
$ rails s
```

Visit http://localhost:3000 in your browser.