module NewUserHelper
  def is_it_user(user)
    if user == "Others" 
      "Nope"
    else
      "Yes"
    end
  end
end

World NewUserHelper

Given("user is {string}") do |user_name|
  @user = user_name
end

When("user wants to edit profile") do
  @result = is_it_user(@user)
end

Then("the user should be {string}") do |expected_answer|
  expect(@result).to eq(expected_answer)
end

