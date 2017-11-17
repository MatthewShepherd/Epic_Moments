get "/sessions/new" do
  erb :"sessions/new"
end

post "/sessions" do
  p params
  @user = User.authenticate(params[:email], params[:password])
  if @user
    login(@user)
    redirect "/posts"
  else
    @errors = ["invalid email or password"]
    erb :"sessions/new"
  end
end

delete "/sessions" do
  logout
  redirect "/posts"
end
