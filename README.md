# Confirmable #

Progressively enhanced confirmation dialogs for Rails POST actions

## Synopsis ##

TODO

## Installation ##

Install the gem

    gem install confirmable

Mount the engine

    mount Confirmable::Engine => '/confirm'

## Example usage ##

Use the URL helper in your views

    <%= confirm_link_to "Delete Widget", @widget %>

## TODO ##

  * **Progressive enhancements!!**

  * try to deal with forms

  * try to deal with model forms

  * try to deal non-POST actions
