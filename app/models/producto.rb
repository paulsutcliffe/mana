class Producto < ActiveRecord::Base
  attr_accessible :codigo, :foto, :nombre, :precio_en_oferta, :precio_normal, :categoria_id

  belongs_to :categoria

  mount_uploader :foto, FotoUploader
end
