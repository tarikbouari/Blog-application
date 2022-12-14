require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET #index' do
    it 'sould test the response' do
      # another way for getting the route is get users_path
      get '/users'
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:index)
      expect(response).to include('Here is a list of Users')
    end
  end

  describe 'GET #show' do
    it 'sould test the response for show' do
      # another way for getting the route is get users_path
      get '/users/:id'
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:show)
      expect(response).to include('This is the user /users/:id ')
    end
  end
end
