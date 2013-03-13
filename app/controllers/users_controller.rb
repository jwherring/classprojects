class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_filter :is_owner, only: [:edit, :update, :destroy, :show]

  # GET /users
  # GET /users.json
  def index
    case params[:sort]
    when "first_name"
      @users = User.order(:first_name)
    when "last_name"
      @users = User.order(:last_name)
    when "email"
      @users = User.order(:email)
    when "location"
      @users = User.order(:location)
    else
      @users = User.order(:last_name)
    end
    if params[:sort_order] == 'desc'
      @users = @users.reverse
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    @user.roles << Role.find_by_role("student")
    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    disable_password_confirmation_if_admin
    respond_to do |format|
      if params[:user][:roles]
        @user.roles = params[:user][:roles].map{|rid| Role.find(rid)}
      else
        @user.roles = []
      end
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :location, :password, :password_confirmation)
    end

    def has_permission
      current_user.isadmin? || @user == current_user
    end

    helper_method :has_permission

    def is_owner
      if !has_permission
        redirect_to root_url, notice: "Not authorized."
      end
    end

    def disable_password_confirmation_if_admin
      if current_user && current_user.isadmin?
        if !params[:user][:password].present?
          params[:user][:password_confirmation] = nil
        end
      end
    end
end
