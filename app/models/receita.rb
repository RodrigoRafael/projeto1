class Receita < ActiveRecord::Base
  attr_accessible :prato_id, :conteudo
  validates_presences_of :conteudo, message: " - deve ser preenchido"
  belongs_to :prato
  validates_presences_of :prato_id
  validates_associated :prato
  belongs_to :prato
end
