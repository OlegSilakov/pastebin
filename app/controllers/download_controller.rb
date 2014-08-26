class DownloadController < ApplicationController
  def download_log
    send_data(Logpost.find(params[:id]).content, filename: "log.txt") 
    # исправить на id, чтобы все было четко и ясно
  end
end
