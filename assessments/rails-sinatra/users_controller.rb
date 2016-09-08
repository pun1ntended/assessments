class UsersController < ApplicationController

  def new
    @user = User.new
  end
  #GET /users/new

  # create
  def create
    @user = user.create(params)
  end
  #POST /users

  # index
  def index
    @users = User.all
  end
  #GET /users

  # show
  def show
    @user = current_user
  end
  #GET /users/:id


  # edit
  def edit
    @user = current_user
  end
  #GET /users/:id/edit

  # update
  def update
    @user = current_user
    @user.update(params)
  end
  #POST /users/:id/edit

  # destroy
  def destroy
    @user = current_user
    current_user.destroy
  end
  #DELETE /users/:id
  private
    def current_user
      @user = User.find(params[id])
    end

end



# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
