require_relative '../rentail'

describe Rentail do
  before :each do
    allow_any_instance_of(Rentail).to receive(:gets).and_return '0', '0'
  end

  describe "Class initialize" do
    it "is initialized" do
      student1 = double('student') 
      person1 = double('person') 
      
      allow(student1).to receive(:save_rental)
      allow(person1).to receive(:save_rental) { 'Jill Smith'} 

      rental = Rentail.new(["something"], ["something"], [student1], [person1])
      expect(rental).to be_truthy
    end
  end

end