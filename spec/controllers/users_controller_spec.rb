describe UsersController, type: :controller do
  let(:user) { User.create!(email: "aaron@example.com", password: "258369") }
  let(:user2) { User.create!(email: "joe@example.com", password: "0987456") }

  describe 'GET #show' do
     context 'when a user is logged in' do

      before do
        sign_in user
       end

      it 'loads correct user details' do
        get :show, params: {id: user.id}
        expect(response).to have_http_status(200)
        expect(assigns(:user)).to eq user
      end

    end

      it 'tries to access show page of the second user' do
       get :show, params: {id: user2.id}
       expect(response).to redirect_to(root_path)
     end



     context 'when a user is not logged in' do
       it 'redirects to login' do
         get :show, params: { id: user.id }
         expect(response).to redirect_to(new_user_session_path)
       end
     end
  end

end
