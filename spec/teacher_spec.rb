require_relative '../teacher'

describe  Teacher do

  before :each do
    allow_any_instance_of(Teacher).to receive(:gets).and_return "12", "name", "Doctor"
    @teacher = Teacher.new([])
  end
  
  describe "Class initialization" do
    it "Return a Teacher object instance" do
      expect(@teacher).to be_instance_of Teacher
    end

    it "Has atributes: specialization, id, age, name, parent_permission, rentail" do
      expect(@teacher.id).to be_truthy
      expect(@teacher.age).to eql "12"
      expect(@teacher.name).to eql "name"
      expect(@teacher.specialization).to eql("Doctor")
    end
  end
  
  describe "#can_use_services?" do
    it "returns true" do
      expect(@teacher.can_use_services?).to be true
    end
  end
end
