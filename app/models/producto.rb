class Producto < ActiveRecord::Base
  attr_accessible :codigo, :foto, :nombre, :precio_en_oferta, :precio_normal

  belongs_to :categoria

  mount_uploader :foto, FotoUploader
end
