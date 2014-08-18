class LogpostsController < ApplicationController
  before_action :authenticate_user!, :set_logpost, only: [:show, :edit, :update, :destroy]

  # GET /logposts
  # GET /logposts.json
  def index
    @logposts = Logpost.all
  end

  # GET /logposts/1
  # GET /logposts/1.json
  def show
    @current_url = request.original_url
  end

  # GET /logposts/new
  def new
    @logpost = Logpost.new
  end

  # GET /logposts/1/edit
  def edit
  end

  # POST /logposts
  # POST /logposts.json
  def create
    @logpost = Logpost.new(logpost_params)

    respond_to do |format|
      if @logpost.save
        format.html { redirect_to @logpost, notice: 'Logpost was successfully created.' }
        format.json { render action: 'show', status: :created, location: @logpost }
      else
        format.html { render action: 'new' }
        format.json { render json: @logpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /logposts/1
  # PATCH/PUT /logposts/1.json
  def update
    respond_to do |format|
      if @logpost.update(logpost_params)
        format.html { redirect_to @logpost, notice: 'Logpost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @logpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /logposts/1
  # DELETE /logposts/1.json
  def destroy
    @logpost.destroy
    respond_to do |format|
      format.html { redirect_to :user_root }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_logpost
      @logpost = Logpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def logpost_params
      params.require(:logpost).permit(:user_mail, :content, :date)
    end
end
