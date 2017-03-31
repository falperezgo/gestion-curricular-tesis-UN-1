class GradeworksController < ApplicationController
  before_action :set_gradework, only: [:show, :edit, :update, :destroy]

  # GET /gradeworks
  # GET /gradeworks.json
  def index
    @gradeworks = Gradework.all
  end

  # GET /gradeworks/1
  # GET /gradeworks/1.json
  def show
  end

  # GET /gradeworks/new
  def new
    @gradework = Gradework.new
  end

  # GET /gradeworks/1/edit
  def edit
  end

  # POST /gradeworks
  # POST /gradeworks.json
  def create
    @gradework = Gradework.new(gradework_params)

    respond_to do |format|
      if @gradework.save
        format.html { redirect_to @gradework, notice: 'Gradework was successfully created.' }
        format.json { render :show, status: :created, location: @gradework }
      else
        format.html { render :new }
        format.json { render json: @gradework.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gradeworks/1
  # PATCH/PUT /gradeworks/1.json
  def update
    respond_to do |format|
      if @gradework.update(gradework_params)
        format.html { redirect_to @gradework, notice: 'Gradework was successfully updated.' }
        format.json { render :show, status: :ok, location: @gradework }
      else
        format.html { render :edit }
        format.json { render json: @gradework.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gradeworks/1
  # DELETE /gradeworks/1.json
  def destroy
    @gradework.destroy
    respond_to do |format|
      format.html { redirect_to gradeworks_url, notice: 'Gradework was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gradework
      @gradework = Gradework.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gradework_params
      params.require(:gradework).permit(:name, :description, :status, :delivery_date, :begin_date, :hour, :locale, :semester)
    end
end
