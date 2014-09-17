class JobfunctionsController < ApplicationController
  before_action :set_jobfunction, only: [:show, :edit, :update, :destroy]

  # GET /jobfunctions
  # GET /jobfunctions.json
  def index
    @jobfunctions = Jobfunction.all
  end

  # GET /jobfunctions/1
  # GET /jobfunctions/1.json
  def show
  end

  # GET /jobfunctions/new
  def new
    @jobfunction = Jobfunction.new
  end

  # GET /jobfunctions/1/edit
  def edit
  end

  # POST /jobfunctions
  # POST /jobfunctions.json
  def create
    @jobfunction = Jobfunction.new(jobfunction_params)

    respond_to do |format|
      if @jobfunction.save
        format.html { redirect_to @jobfunction, notice: 'Jobfunction was successfully created.' }
        format.json { render action: 'show', status: :created, location: @jobfunction }
      else
        format.html { render action: 'new' }
        format.json { render json: @jobfunction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobfunctions/1
  # PATCH/PUT /jobfunctions/1.json
  def update
    respond_to do |format|
      if @jobfunction.update(jobfunction_params)
        format.html { redirect_to @jobfunction, notice: 'Jobfunction was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @jobfunction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobfunctions/1
  # DELETE /jobfunctions/1.json
  def destroy
    @jobfunction.destroy
    respond_to do |format|
      format.html { redirect_to jobfunctions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobfunction
      @jobfunction = Jobfunction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jobfunction_params
      params.require(:jobfunction).permit(:name)
    end
end
