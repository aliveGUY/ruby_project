require_relative '../decorator'

describe Decorator do
  it "Initialize" do
    instance = Decorator.new("An object")
    expect(instance).to be_truthy
  end
  describe "#correct_name" do
    it "Receives the @nameable obj with #correct_name attribute" do
      student = double('student')
      allow(student).to receive(:correct_name) {"Jhon Deel"}
      instance = Decorator.new(student)

      expect(instance.correct_name).to eql "Jhon Deel"
    end
  end
end
