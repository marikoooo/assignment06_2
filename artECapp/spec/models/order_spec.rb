require 'rails_helper'

RSpec.describe Order, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of :first_name }
  end
end



