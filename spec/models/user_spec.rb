require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    # Name
    it do
      should validate_length_of(:name).is_at_least(3).on(:create)
    end
    it { should validate_presence_of(:name) }

    # Nickname
    it { should validate_uniqueness_of(:nickname) }
    it { should validate_presence_of(:nickname) }
  end
end
