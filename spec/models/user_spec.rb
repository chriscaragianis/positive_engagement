require 'rails_helper'


RSpec.describe User, type: :model do

  before(:each) do
    @user = User.new(uname: "Example User",
                     email: "user@example.com",
                     password: "foobar",
                     password_confirmation: "foobar"
                    )
  end

  it "should be a valid user" do
    expect(@user).to be_valid
  end

  it "should have a name" do
    @user.uname = "    "
    expect(@user).not_to be_valid
  end

  it "should have an email" do
    @user.email = "    "
    expect(@user).not_to be_valid
  end

  it "has a name that is not too long" do
    @user.uname = "a" * 51
    expect(@user).not_to be_valid
  end

  it "has an email that is not too long" do
    @user.email = "a" * 244 + "@example.com"
    expect(@user).not_to be_valid
  end

  it "should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      expect(@user).to be_valid
    end
  end

  it "should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      expect(@user).not_to be_valid
    end
  end

  it "should have unique email address" do
   duplicate_user = @user.dup
   duplicate_user.email = @user.email.upcase
   @user.save
   expect(duplicate_user).not_to be_valid
 end

end
