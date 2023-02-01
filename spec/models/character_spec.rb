require 'rails_helper'

RSpec.describe Character, type: :model do
  it "should validate name" do
    character = Character.create
    expect(character.errors[:name]).to_not be_empty
  end

  it "should validate age" do
    character = Character.create
    expect(character.errors[:age]).to_not be_empty
  end

  it "no less than 10 characters" do
    character = Character.create name: 'bob', age: 91, enjoys:'pudding', image: 'google.com'
    expect(character.errors[:enjoys]).to_not be_empty
  end
end

