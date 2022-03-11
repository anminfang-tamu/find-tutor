require 'rails_helper'

RSpec.describe UsersController, type: :controller do
    
    describe "GET index" do
        
        it "assign @users" do
            user = create(:user)
            get :index
            expect(assigns(:users)).to eq([user])
        end
        
        it "renders the index template" do
            get :index
            expect(response).to render_template("index")
        end
        
        it "has a 200 status code" do
            get :index
            expect(response.status).to eq(200)
        end
        
    end
    
    describe "GET show" do
        
        it "returns a 200" do
            user = create(:user)
            request.headers["Authorization"] = "foo"
            get :show, id: user.id
            expect(response).to have_http_status(:ok)
        end
        
    end
    
    describe "POST create" do
        
        it "should create an user" do
            create(:user)
            expect(User.last.first_name).to eq "brady555"
        end
        
        it "should not create an new user since email format is not correct" do
            expect{
                post :create, user: FactoryGirl.attributes_for(:user,  {first_name: 'brady555',
                                                                    last_name: 'fang888',
                                                                    user_name: 'brady555',
                                                                    display_name: 'Brandy Fang',
                                                                    gender: 'male',
                                                                    email: 'bradyfang',
                                                                    major: 'CS',
                                                                    tutor_major: 'CS',
                                                                    password: '123456'})}.not_to change(User, :count)
        end
    end
end
