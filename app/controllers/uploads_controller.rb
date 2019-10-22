class UploadsController < ApplicationController

  def new
  end

  def parse
    uploaded_file = params[:file]
    if uploaded_file.present? && uploaded_file.original_filename == 'CNAB.txt'
      Transaction.parse uploaded_file
      redirect_to result_path()
    else
      flash[:error] = "Escolha o arquivo com nome CNAB.txt"
      render 'new'
    end
  end

  def result
    @transactions = Transaction.order(:store_name)
  end
end
