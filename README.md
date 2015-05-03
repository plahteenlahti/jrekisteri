# Jrekisteri <img width="50px" src="https://github.com/plahteenlahti/jrekisteri/blob/master/app/assets/images/pl_logo.png">

Ruby on rails application for student organizations to keep up a membership register

[![Build Status](https://travis-ci.org/plahteenlahti/jrekisteri.svg)](https://travis-ci.org/plahteenlahti/jrekisteri)
[![Code Climate](https://codeclimate.com/github/plahteenlahti/jrekisteri/badges/gpa.svg)](https://codeclimate.com/github/plahteenlahti/jrekisteri)
[![Test Coverage](https://codeclimate.com/github/plahteenlahti/jrekisteri/badges/coverage.svg)](https://codeclimate.com/github/plahteenlahti/jrekisteri)


## What?
Log in to the system and add organizations. Organizations have a board which holds positions. User belong to one or multiple organizations through memberships. In future release users will have different actions and visibility levels depending on their memberships and positions. 


## Heroku
[Hosted at Heroku](http://jrekisteri.herokuapp.com/)

## Usage?
- Create account
- Log in
- Join an organization(s)
- See other people who are part of the same organization
- Look for information about other organizations

## Current situation
- Have to add admin and organization admin roles, and make it so that board members can only be added by previous board members
- need more validations
- reduce finglish
- need more restrictions (for example creating new organizations is only possible by sysadmin)
- More information in the wiki (in finnish)

## Data model
[Avalaible at nomnoml](http://www.nomnoml.com/#view/[Organization|%0Aname:%20String;%0Afounded:%20integer;%0Adescription:%20String%0A]%0A%0A[User|%0Aforename:%20String;%0Asurname:%20String;%0Aemail:%20String;%0Acity:%20String;%0Apassword_digest:%20String%0A]%0A%0A[Board|%0Aorganization_id:%20integer%0A]%0A%0A[Membership|%0Auser_id:%20integer;%0Aorganization_id:%20integer%0A]%0A%0A[Position|%0Aname:%20String;%0Aboard_id:%20integer;%0Auser_id:%20integer%0A]%0A%0A[User]+->%201..*[Membership]%0A[Membership]*-->1[Organization]%0A[Board]1-->1[Organization]%0A[Position]*-->1[Board]%0A[User]1->0..*[Position])

## Tests
Controllers are tested, requires more testing -> will be done when roles have been implemented.
