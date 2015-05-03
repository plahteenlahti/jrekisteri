# Jrekisteri <img src="https://photos-5.dropbox.com/t/2/AAALckCK37_fLt0Auo7dagKTS55UiKc-dNIMN2eS18SnMg/12/11356726/png/1024x768/3/1430654400/0/2/pl_logo.svg/CLaUtQUgASACIAMoASgC/LnUqNwmtfy1-oBnYO7s0gvjfxylQJGu93R5EZ9GiiXA">

Ruby on rails application for student organizations to keep up a membership register

[![Build Status](https://travis-ci.org/plahteenlahti/jrekisteri.svg)](https://travis-ci.org/plahteenlahti/jrekisteri)
[![Code Climate](https://codeclimate.com/github/plahteenlahti/jrekisteri/badges/gpa.svg)](https://codeclimate.com/github/plahteenlahti/jrekisteri)
[![Test Coverage](https://codeclimate.com/github/plahteenlahti/jrekisteri/badges/coverage.svg)](https://codeclimate.com/github/plahteenlahti/jrekisteri)


## What?
Log in to the system and add organizations. Organizations have a board which holds positions. User belong to one or multiple organizations through memberships. In future release users will have different actions and visibility levels depending on their memberships and positions. 


## Heroku
[Hosted at Heroku](http://jrekisteri.herokuapp.com/)

## How to use?
- Create account
- Log in
- Join an organization(s)
- See other people who are part of the same organization
- Look for information about other organizations

## Data model
[Avalaible at nomnoml](http://www.nomnoml.com/#view/[Organization|%0Aname:%20String;%0Afounded:%20integer;%0Adescription:%20String%0A]%0A%0A[User|%0Aforename:%20String;%0Asurname:%20String;%0Aemail:%20String;%0Acity:%20String;%0Apassword_digest:%20String%0A]%0A%0A[Board|%0Aorganization_id:%20integer%0A]%0A%0A[Membership|%0Auser_id:%20integer;%0Aorganization_id:%20integer%0A]%0A%0A[Position|%0Aname:%20String;%0Aboard_id:%20integer;%0Auser_id:%20integer%0A]%0A%0A[User]+->%201..*[Membership]%0A[Membership]*-->1[Organization]%0A[Board]1-->1[Organization]%0A[Position]*-->1[Board]%0A[User]1->0..*[Position])

## Tests
Tested poorly
