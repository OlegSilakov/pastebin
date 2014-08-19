require 'rails_helper'

describe "User" do
  describe "validation" do
    subject { FactoryGirl.build(:user) }
    it { is_expected.to validate_uniqueness_of(:email) }
    it { is_expected.to ensure_length_of(:password).is_at_least(8) }
  end
end