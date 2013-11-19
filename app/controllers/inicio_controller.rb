class InicioController < ApplicationController
  def index
    @slides = Slide.all
    @productos = Producto.order("create_at DESC").limit(4)
  end
end
