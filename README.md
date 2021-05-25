<p align="center">
<h1 align="center">Portico Admin</h1>

  ![GitHub contributors](https://img.shields.io/github/contributors/alexandredfilho/porticoadmin)
  ![GitHub last commit](https://img.shields.io/github/last-commit/alexandredfilho/porticoadmin)
  ![GitHub top language](https://img.shields.io/github/languages/top/alexandredfilho/porticoadmin)
  ![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/alexandredfilho/porticoadmin)
  ![GitHub issues](https://img.shields.io/github/issues/alexandredfilho/porticoadmin)
  ![GitHub Repo stars](https://img.shields.io/github/stars/alexandredfilho/porticoadmin)

<br />

  <p align="center">
    Portico Admin is a system built in the Ruby on Rails language responsible for registering both the entrance of drivers and their vehicles for deliveries or collect, as well as     registering the entry and exit of visitors and customers.
    <br />
    <a href="https://github.com/alexandredfilho/porticoadmin"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.comalexandredfilho/porticoadmin">View Demo</a>
    ·
    <a href="https://github.com/alexandredfilho/porticoadmin/issues">Report Bug</a>
    ·
    <a href="https://github.com/alexandredfilho/porticoadmin/issues">Request Feature</a>
  </p>
</p>

* [Pre-requirements](#pre-requirements)
* [Setup Project](#setup)
  * [Install Dependencies](#install-dependencies)

## Pre-Requirements

This repository is backed by Git.
_That said, make sure you have `Git` installed!_
If you do not, check their official documentation and make sure to install the latest stable version.

Take a look at your operational system installation steps:
[Git Installation](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

## Setup

In order to be able to run a server you need a database created with all tables in it and essential records created.
Rails makes it easy by using Rake tasks.
There is a couple of them like `db:migrate` which runs all database migrations which might be a table creation, adding an index, changing data and so on.
These tasks can be run in a single command and that is the way it is below:

`rails db:create db:migrate db:seed`

## Install Dependencies

Rails uses [Bundler](https://bundler.io/) as its dependencies manager.
You do not need to install it as it is already installed in the Rails Dockerfile.
It will read your `Gemfile` and your `Gemfile.lock`.
The `Gemfile` you tell Bundler all the gems it needs to search and install.
The `Gemfile.lock` you make Bundler keep the same versions of the gems installed in the machine of who added them or their last update.
It keeps the repository synchronized to everyone and prevents versions issues.
It means that is **mandatory** to include them in your commits if you add or update any gem.

Run `bundle install` or just `bundle`

Should also install _node_modules_ packages as dependency using the [Yarn](https://yarnpkg.com/) package manager.

Run `yarn install --check-files`