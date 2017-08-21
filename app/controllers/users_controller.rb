class UsersController < ApplicationController
    before_action :set_user, only: [:edit, :update, :show, :destroy]

  def index
    @users = User.all.page(params[:page]).per(5)
  end

  def show
  end

  def edit
  end

  def new
    @user = User.new
  end

  def create
        # user = params[:user]
        # @user = User.create(name: user[:name] , email: user[:email], age: user[:age])
        
        @user = User.create(user_params)
        # binding.pry
        if @user.save
          flash[:success] = "已經成功新增"
          redirect_to users_path
        else
          flash[:danger] ="錯誤輸入"
          redirect_to users_path
        end
          
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @User }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :age, :password)
    end
end
