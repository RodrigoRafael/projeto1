#encoding:utf-8
class Qualificacao < ActiveRecord::Base
  attr_accessible :cliente_id, :nota, :restaurante_id, :valor_gasto

  validates_presence_of :nota, :message => "deve ser preenchido"
  validates_presence_of :valor_gasto, :message => "deve ser preenchido"

  validates_numericality_of :nota, :greater_than => 0, :less_than_or_equal_to => 10, :message => "nota entre 0 e 10"

  validates_numericality_of :valor_gasto, :greater_than => 0, :message => "deve ser maior que 0"

  validates_presence_of :cliente_id, :restaurante_id 
  validates_associated :cliente, :restaurante
  
  belongs_to :cliente
  belongs_to :restaurante

  has_many :comentarios, as: :comentavel

end
	