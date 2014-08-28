require 'rails_helper'

describe "Logpost" do
  describe "validation" do
    subject { FactoryGirl.build(:logpost) }
    it { is_expected.to validate_presence_of(:user_mail) }
    it { is_expected.to validate_presence_of(:content) }
  end
end
