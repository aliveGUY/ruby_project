require 'spec_helper'

describe Student do
  before :each do
    @student = Student.new 'a1'
  end

  describe '#new' do
    it 'returns new book object' do
      expect(@student).to be_an_instance_of Student
    end

    it 'takes three or one parameters' do
      student = Student.new 'a1', 12, 'Bob', parent_permission: true
      expect(student).to be_an_instance_of Student

      student = Student.new 'a1'
      expect(student).to be_an_instance_of Student
    end
  end

  describe '#name' do
    it 'inharited vars from parent' do
      expect(@student.name).to eql 'undefined'
    end
  end

  describe '#classroom' do
    it 'returns the correct classroom' do
      expect(@student.classroom).to eql 'a1'
    end
  end
end
