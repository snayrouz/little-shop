require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'validations' do
    it "is valid with a name" do
      category = create(:category)

      expect(category).to be_valid
    end
  end
end
