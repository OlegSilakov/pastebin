require 'log_parser'
  class LogpostsController < ApplicationController
    include Parser
  before_action :authenticate_user!, :set_logpost, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @logpost = Logpost.new
  end

  def edit
  end

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

  def destroy
    @logpost.destroy
    respond_to do |format|
      format.html { redirect_to :user_root }
      format.json { head :no_content }
    end
  end

  private
    def set_logpost
      @logpost = Logpost.find(params[:id])
    end

    def logpost_params
      params.require(:logpost).permit(:user_id, :user_mail, :content, :date)
    end
end
