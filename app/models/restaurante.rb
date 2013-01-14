#coding:utf-8
class Restaurante < ActiveRecord::Base
  attr_accessible :nome, :endereco, :especialidade, :foto

  has_attached_file :foto, :styles => { :medium => "300x300", :thumb => "100x100", :original => "800x600"}

  validates_attachment_content_type :foto, :content_type => ["image/bmp", "image/x-png", "image/pjpeg","image/jpg","image/jpeg","image/png","image/gif"]

  validates_presence_of :nome, message: "deve ser preenchido"
  validates_presence_of :endereco, message: "deve ser preenchido"
  validates_presence_of :especialidade, message: "deve ser preenchido"
  

  validates_uniqueness_of :nome, message: "nome já cadastrado"
  validates_uniqueness_of :endereco, message: "endereço já cadastrado"
  validate :primeira_letra_deve_ser_maiuscula

  has_many :qualificacaos
  has_and_belongs_to_many :pratos
  has_many :comentarios, :as => :comentavel

  end
 

 private
    def primeira_letra_deve_ser_maiuscula
    errors.add(:nome,
    "primeira letra deve ser maiúscula") unless nome =~ /[A-Z].*/
  
 end



