module Paginable
  protected 

  def current_page
    (params[:page || 1]).to_i
  end
  # se tiver um parametro vindo na url chamado page, vou usar ele, se não tiver
  # tem o OU, vai colocar o 1
end