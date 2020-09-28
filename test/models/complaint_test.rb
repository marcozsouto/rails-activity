require 'test_helper'

class ComplaintTest < ActiveSupport::TestCase
  
  test'should not save complaint with title violating minimum lengh' do
    user = User.new username:"jisoo", email:"jisoo@gmail.com", password:"654321", password_confirmation:"654321"
    assert user.save
    complaint = Complaint.new title:"aaa", text:"minimum lengh is 15chars", category:"minimum lengh is 4chars", company:"Empresa1", user_id: user.id
    assert_not complaint.save
  end

  test 'should not edit complaint with text violating minimun lengh' do
    user = User.new username:"jisoo", email:"jisoo@gmail.com", password:"654321", password_confirmation:"654321"
    assert user.save
    complaint = Complaint.new title:"title", text:"minimum lengh is 15chars", category:"minimum lengh is 4chars", company:"Empresa1", user_id: user.id
    assert complaint.save
    assert_not complaint.update text:"too small"
  end


end
