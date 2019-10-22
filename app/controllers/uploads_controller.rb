class UploadsController < ApplicationController

  def new
  end

  def parse
    uploaded_file = params[:file]
    if uploaded_file.present? && uploaded_file.original_filename == 'CNAB.txt'
      begin
        Transaction.parse uploaded_file
        flash[:notice] = "Arquivo processado com sucesso."
        redirect_to result_path()
      rescue Exception => exc
        flash[:error] = "houve algum erro na leitura do arquivo  (#{exc}). Verifique por favor."
        render 'new'
      end
    else
      flash[:error] = "Escolha o arquivo com nome CNAB.txt"
      render 'new'
    end
  end

  def result
    @transactions = Transaction.order(:store_name)
  end
end
