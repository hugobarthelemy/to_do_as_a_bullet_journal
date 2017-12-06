# Welcome to the To do list as a bullet journal
[![Build Status](https://travis-ci.org/hugobarthelemy/to_do_as_a_bullet_journal.svg?branch=master)](https://travis-ci.org/hugobarthelemy/to_do_as_a_bullet_journal)

# Install local app
## Clone
`git@github.com:hugobarthelemy/to_do_as_a_bullet_journal.git`

## Installation of the environment
`bundle install`

## Install DB
```
rake db:create
rake db:migrate # or $ rake db:structure:load
rake db:seed
```

## 🚀 launch your application locally 🚀
`rails s`

# Testing your app
Dev the feature and test your feature in local before make a PR
Test your app

Run test : `rake`

Check logs of rspec : `tail -f log/test.log`

Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.
