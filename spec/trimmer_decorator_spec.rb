require_relative '../trimmer_decorator'

describe TrimmerDecorator do
  describe "#correct_name" do
    it "Trims the name to a limit of 10 chars" do
      long_name = "Stanisquiyovsky"
      nameable_obj = double('nameableObject')
      allow(nameable_obj).to receive(:correct_name) { long_name }
      
      decorator = TrimmerDecorator.new(nameable_obj)

      expect(decorator.correct_name).to eql(long_name[0...10])
    end
  end
end
