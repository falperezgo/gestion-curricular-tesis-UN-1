class GradeworkUsersController < ApplicationController
  before_action :set_gradework_user, only: [:show, :edit, :update, :destroy]

  # GET /gradework_users
  # GET /gradework_users.json
  def index
    @gradework_users = GradeworkUser.all
  end

  # GET /gradework_users/1
  # GET /gradework_users/1.json
  def show
  end

  # GET /gradework_users/new
  def new
    @gradework_user = GradeworkUser.new
  end

  # GET /gradework_users/1/edit
  def edit
  end

  # POST /gradework_users
  # POST /gradework_users.json
  def create
    @gradework_user = GradeworkUser.new(gradework_user_params)

    respond_to do |format|
      if @gradework_user.save
        format.html { redirect_to @gradework_user, notice: 'Gradework user was successfully created.' }
        format.json { render :show, status: :created, location: @gradework_user }
      else
        format.html { render :new }
        format.json { render json: @gradework_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gradework_users/1
  # PATCH/PUT /gradework_users/1.json
  def update
    respond_to do |format|
      if @gradework_user.update(gradework_user_params)
        format.html { redirect_to @gradework_user, notice: 'Gradework user was successfully updated.' }
        format.json { render :show, status: :ok, location: @gradework_user }
      else
        format.html { render :edit }
        format.json { render json: @gradework_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gradework_users/1
  # DELETE /gradework_users/1.json
  def destroy
    @gradework_user.destroy
    respond_to do |format|
      format.html { redirect_to gradework_users_url, notice: 'Gradework user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gradework_user
      @gradework_user = GradeworkUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gradework_user_params
      params.require(:gradework_user).permit(:gradework, :user)
    end
end
