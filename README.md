Create a meme using https://imgflip.com/
--------------------------
## Getting Started

Pre-requisites which are needed to install in order to get the scenarios up and running.

## Setup Ruby

Dynamic scripting language used for build scripts and automation testing. Install at least version `ruby 2.7.1p83`

we can install Ruby with the help of Homebrew

1.Install brew:

`ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

2.Update Formulas:

`brew update`

3.Install Ruby:

`brew install ruby`

## Install bundler

In the root of the project repository, run the following commands on the command line to install bundler

```
gem install bundler
bundle install
```

This will install all the project dependencies which are specified in the Gemfile

## Running the tests

1. Go to `/cucumber` folder
2. On the command line do `bundle exec cucumber -t @create-meme`
3. In case if you want to generate an html report then do `bundle exec cucumber -t @create-meme -p html_report`
4. `export BROWSER = chrome` to run the tests on chrome (Note: you may need to install chromedriver for this to work)
5. Reports are saved to `/reports` folder
