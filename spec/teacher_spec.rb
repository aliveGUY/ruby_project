require 'spec_helper'

describe Teacher do
  before :each do
    @teacher = Teacher.new 'Math'
  end

  describe "#new" do
    it "returns new book object" do
      expect(@teacher).to be_an_instance_of Teacher
    end

    it "takes three or one parameters" do
      teacher = Teacher.new 'a1', 12, 'Bob'
      expect(teacher).to be_an_instance_of Teacher

      person = Teacher.new 'a1'
      expect(teacher).to be_an_instance_of Teacher
    end
  end

  describe "#name" do
    it "inharited vars from parent" do
      expect(@teacher.name).to eql 'undefined'
    end
  end

  describe "#classroom" do
    it "returns the correct classroom" do
      expect(@teacher.specialization).to eql 'Math'
    end
  end
end