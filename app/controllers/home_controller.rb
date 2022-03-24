class HomeController < ApplicationController
  def index
    # configurando a paginação e o filtro
    @q = Position.ransack(params[:q]) # para o filtro
    @positions = @q.result.page(params[:page]).per(params[:per]) # para a paginação
    @contracts = [['CLT', 0], ['PJ', 1], ['A combinar', 2]]
  end
end
