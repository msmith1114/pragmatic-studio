# Pragmatic Studio Projects

This repository contains a collection of Ruby and Ruby on Rails projects built while working through the excellent courses at [Pragmatic Studio](https://pragmaticstudio.com/).

## Repository Structure

```
pragmatic-studio/
├── ruby/        # Ruby programming course projects and exercises
└── rails/flix/  # Ruby on Rails course project: the "Flix" application
```

### Ruby Projects (`ruby/`)

The `ruby/` directory includes exercises and small projects created while learning core Ruby programming concepts. These cover topics such as:

* Ruby syntax and idioms
* Classes and modules
* Collections and iteration
* File I/O
* Object-oriented programming in Ruby

### Rails Project: Flix (`rails/flix/`)

The `rails/flix` directory contains the **Flix** application, a sample Rails app that demonstrates how to build a full-featured web application using Ruby on Rails. Topics include:

* Rails conventions and folder structure
* Models, Views, and Controllers (MVC)
* Routing
* Database migrations and ActiveRecord
* Forms and validations
* Asset pipeline (HTML, SCSS, JavaScript)

## Technologies Used

* **Ruby**
* **Ruby on Rails**
* **HTML / SCSS / JavaScript**

## Getting Started

### Prerequisites

* Ruby (check `.ruby-version` if present)
* Bundler (`gem install bundler`)
* Rails (`gem install rails`)

### Setup

Clone the repository:

```bash
git clone https://github.com/msmith1114/pragmatic-studio.git
cd pragmatic-studio
```

#### Running Ruby Exercises

```bash
cd ruby
ruby some_exercise.rb
```

#### Running the Flix Rails App

```bash
cd rails/flix
bundle install
bin/rails db:create db:migrate db:seed
bin/rails server
```

Then open [http://localhost:3000](http://localhost:3000) in your browser.

## About

These projects were created as part of working through the [Pragmatic Studio](https://pragmaticstudio.com/) courses to deepen understanding of Ruby and Rails development.
