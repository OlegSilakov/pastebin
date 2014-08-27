class DownloadController < ApplicationController
  def download_log
    send_data(Logpost.find(params[:id]).content, filename: "log.log") 
  end
end
