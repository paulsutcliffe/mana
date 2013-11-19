class ProductosController < InheritedResources::Base

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
