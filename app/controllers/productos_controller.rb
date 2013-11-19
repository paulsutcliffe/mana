class ProductosController < InheritedResources::Base
  before_filter :authenticate_admin!, :except => [:index]
  def index
    params[:categoria_id] ? @categoria = Categoria.find(params[:categoria_id]) : @categoria = Categoria.first
    @productos = @categoria.productos
    @categorias = Categoria.all

    respond_to do |format|
      format.html
      format.js {}
      format.json { render json: @productos}
    end
  end
end
