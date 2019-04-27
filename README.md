# Objective 

Write a simple Ruby on Rails app that allows the user to create and view articles. Use Acceptance-Unit Test cycle and outside-in approach.

## Learning objectives from Craft Academy
* Learn about Ruby on Rails
    * structure of a RoR application
    * params
    * routes (resources, members, etc)
    * most common helpers
    * migrations
    * CRUD controller actions

* Learn about the Model-View-Controller pattern
* Learn about how to use tests (High level acceptance tests and Low level unit tests) to drive the development process.

## AUT Cycle
1. Write a high-level (outside) business value example that goes red
2. Write a lower-level (inside) example for the first step of implementation that goes red
3. Implement the minimum code to pass that lower-level example, see it go green
4. Write the next lower-level RSpec example pushing towards passing step 1
5. Repeat steps 3 and 4 until the high-level test (1) goes green
6. Start over by writing a new high-level test

## Weekend challenge
* Read Devise [documentation](https://github.com/plataformatec/devise)
* Add a login functionality
* Only allow logged in user to view articles
    * Feature test
    * Unit tests
* Make an WIP pull request towards development branch

<br>

# User stories

```
As a visitor,
When I visit the landing page of the application
I would like to see a list of all articles
```

```
As a publisher
In order to add relevant content to my news service
I would like to be able to create articles
```

<br>

# Deployment
Deployed via [Heroku](https://www.heroku.com/).

View deployed site [here](https://zane-april-2019.herokuapp.com/).

<br>

# Built with

[Ruby](https://www.ruby-lang.org/en/) - The worlds best programming language

[Rails](https://rubyonrails.org/) - Imagine what you could build if you learned Ruby on Rails..

<br>

# Tested with

[RSPEC](http://rspec.info) - Making TDD Productive and Fun

[Cucumber](https://cucumber.io/) - Tools & techniques that elevate teams to greatness

<br>

# Authors

**Zane Neikena** - [zanenkn](https://github.com/zanenkn)

<br>

# License

This project utilizes the [MIT open-source license](https://opensource.org/licenses/MIT).

<br>

# Acknowledgments

Kudos to [PurpleBooth](https://gist.github.com/PurpleBooth/109311bb0361f32d87a2) for the README template 

