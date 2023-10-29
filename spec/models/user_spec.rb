require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.build(:user) }
  subject { user }

  describe 'when created successfully' do
    it { should respond_to(:email) }
    it { should respond_to(:password) }
    it { should respond_to(:password_confirmation) }
  end

  describe 'when emails is present' do
    it { should be_valid ; puts "User is valid" }
  end

  describe 'when email is not present' do
    it { should validate_uniqueness_of(:email).ignoring_case_sensitivity }
    it { should validate_confirmation_of(:password) }
    it { should validate_presence_of(:email) }
    it { should allow_value('email@domain.com').for(:email) }
  end
end
