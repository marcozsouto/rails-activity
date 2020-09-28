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

  test 'should not edit user with invalid email' do
    user = User.new username:"lisa", email:"lisa@gmail.com", password:"654321", password_confirmation:"654321"
    user.save
    assert_not user.update email:"lisa"
  end

       
end
