require 'rails_helper'

RSpec.describe Task, type: :model do
  it "has a valid factory" do
    user = FactoryBot.create(:task, title: 'Not nil')
    expect(user).to be_valid
  end

  it { expect(FactoryBot.build(:task)).to_not be_valid }
  it { expect(FactoryBot.build(:task, title: 'Trouver un super job!')).to be_valid }
end
