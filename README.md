# Just Keep Building
![Build Status](https://codeship.com/projects/79c95730-76cc-0134-c96d-666ff52f2d3e/status?branch=master)
![Coverage Status](https://coveralls.io/repos/Cyril-Jay/just_keep_building/badge.png)
![Code Climate](https://codeclimate.com/github/Cyril-Jay/just_keep_building.png)

# README

Just keep building is a construction calculator.  Its purpose is to help me learn the many facets of web development and be a useful tool for ordering building materials.

[JustKeepBuilding Heroku Link](https://just-keep-building.herokuapp.com/home)

##Functionality
* Allows users to create an Account
* Users can then create a building project. Currently the only project available is a simple interior wall
* The user is asked to name the wall(such as "North master bathroom") and input the wall dimensions (height and length)
* In return the user is given the amount of building materials needed to construct that wall
* Users can then edit, create new walls, and delete them as desired

##Technologies
* Made with Ruby on Rails version 5
* Devise gem used to handle user authentication
* Foundation gem used to help with stylization
* Deployed with Heroku
