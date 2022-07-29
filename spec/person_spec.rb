require 'spec_helper'

describe Person do
  before :each do
    @person = Person.new 12, 'Bog Black'
  end

  describe '#new' do
    it 'returns new book object' do
      expect(@person).to be_an_instance_of Person
    end

    it 'takes three or none parameters' do
      person = Person.new 12, 'Title', parent_permission: true
      expect(person).to be_an_instance_of Person

      person = Person.new
      expect(person).to be_an_instance_of Person
    end
  end

  describe '#name' do
    it 'returns the correct name' do
      expect(@person.name).to eql 'Bog Black'
    end
  end

  describe '#age' do
    it 'returns the correct age' do
      expect(@person.age).to eql 12
    end
  end
end
