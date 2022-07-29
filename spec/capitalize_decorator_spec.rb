require_relative '../capitalize_decorator'

describe CapitalizeDecorator do
  describe '#correct_name' do
    it 'Capitalize the name of the Decored object' do
      name = 'wonder woman'
      person = double('person')
      allow(person).to receive(:correct_name) { name }

      decorated_person_obj = CapitalizeDecorator.new(person)
      expect(decorated_person_obj.correct_name).to eql(name.capitalize)
    end
  end
end
