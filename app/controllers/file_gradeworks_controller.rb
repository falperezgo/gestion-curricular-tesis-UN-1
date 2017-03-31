class FileGradeworksController < ApplicationController
  before_action :set_file_gradework, only: [:show, :edit, :update, :destroy]

  # GET /file_gradeworks
  # GET /file_gradeworks.json
  def index
    @file_gradeworks = FileGradework.all
  end

  # GET /file_gradeworks/1
  # GET /file_gradeworks/1.json
  def show
  end

  # GET /file_gradeworks/new
  def new
    @file_gradework = FileGradework.new
  end

  # GET /file_gradeworks/1/edit
  def edit
  end

  # POST /file_gradeworks
  # POST /file_gradeworks.json
  def create
    @file_gradework = FileGradework.new(file_gradework_params)

    respond_to do |format|
      if @file_gradework.save
        format.html { redirect_to @file_gradework, notice: 'File gradework was successfully created.' }
        format.json { render :show, status: :created, location: @file_gradework }
      else
        format.html { render :new }
        format.json { render json: @file_gradework.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /file_gradeworks/1
  # PATCH/PUT /file_gradeworks/1.json
  def update
    respond_to do |format|
      if @file_gradework.update(file_gradework_params)
        format.html { redirect_to @file_gradework, notice: 'File gradework was successfully updated.' }
        format.json { render :show, status: :ok, location: @file_gradework }
      else
        format.html { render :edit }
        format.json { render json: @file_gradework.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /file_gradeworks/1
  # DELETE /file_gradeworks/1.json
  def destroy
    @file_gradework.destroy
    respond_to do |format|
      format.html { redirect_to file_gradeworks_url, notice: 'File gradework was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_file_gradework
      @file_gradework = FileGradework.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def file_gradework_params
      params.require(:file_gradework).permit(:name, :path, :description, :size, :Gradeworks_id)
    end
end
