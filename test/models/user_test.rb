require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  test 'should not save user without username' do
    user = User.new username:"", email:"rose@gmail.com", password:"123456", password_confirmation:"123456"
    assert_not user.save
  end

  test 'should not save user with invalid email' do
    user = User.new username:"jennie", email:"jennie", password:"123456", password_confirmation:"123456"
    assert_not user.save
  end

    
end
