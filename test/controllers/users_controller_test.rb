class UsersControllerTest < ActionDispatch::IntegrationTest
    
    test "should create user" do
        assert_difference('User.count', 1) do
            post users_url, params: {user: {first_name: "brady", 
                                            last_name: "fang", 
                                            user_name: "brady555", 
                                            display_name: "Brady 555", 
                                            email: "brady555@gmail.com", 
                                            gender: "male", 
                                            password: "123456", 
                                            tutor_major: "CS", 
                                            major: "CS"}
            }
        end
        assert_redirected_to user_url(User.last)
    
    end



end