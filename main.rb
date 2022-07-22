#!/usr/bin/env ruby
require './app.rb'

class Main
  def initialize
    @app = App.new
  end

  def menu
    puts '
        M E N U
    1) List all books
    2) List all people
    3) Create a person
    4) Create a book
    5) Create rental
    6) List all rentals for a given person id
    7) Exit
    '
  end

  def main
    loop do
      menu
      input = gets.chomp

      case input
      when '1'
        @app.list_books
      when '2'
        @app.list_people
      when '3'
        @app.create_person
      when '4'
        @app.create_book
      when '5'
        @app.create_rental
      when '6'
        @app.list_rentails
      else
        break
      end
    end
  end
end
main = Main.new
main.main
