require_relative '../classroom'

describe Classroom do
  before :each do
    @classroom = Classroom.new("CS50", [])
  end

  describe "Classroom class initialization" do
    it "Create an instance of class with: label and students list" do
      expect(@classroom).to be_truthy
      expect(@classroom.label).to eql "CS50"
      expect(@classroom.students).to eql []
    end
  end

  describe "#add_student" do
    it "Add a student to classroom students list" do
      @classroom = Classroom.new("CS50", ["student"])
      expect(@classroom.students).to_not eql []
    end
  end
end