class Comentario < ActiveRecord::Base
	belongs_to :comentavel, polymorphic: true
  attr_accessible :comentavel_id, :comentavel_type, :conteudo, :text
end
