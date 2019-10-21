class UploadsController < ApplicationController
  def new
  end

  def parse
    uploaded_file = params[:file]
    if uploaded_file.present? && uploaded_file.original_filename == 'CNAB.txt'
      
    else
      flash[:error] = "Escolha o arquivo com nome CNAB.txt"
      render 'new'
    end
  end
end
