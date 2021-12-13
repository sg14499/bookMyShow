class UsersController < ApplicationController
  validates :login, :email, presence: true

  before_validation :ensure_login_has_a_value

  after_save_commit :log_user_saved_to_db
  
  def index
    @users = User.all
  end

  after_initialize do |user|
    puts "You have initialized an object!"
  end

  def show
    @user = User.find(params[:id])
  end

  after_find do |user|
    puts "You have found an object!"
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    #  if @user.save
     #   redirect_to @user
      #else
       # render :new
      #end
    
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
        format.js
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to root_path
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password)
    end

    def log_user_saved_to_db
      puts 'User was saved to database'
    end

    def ensure_login_has_a_value
      if login.nil?
        self.login = email unless email.blank?
      end
    end
end
