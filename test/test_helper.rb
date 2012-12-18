ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'test_help'

class RestauranteTest < ActiveSupport::TestCase
	fixtures :restaurantes

	def test_restaurante
		restaurante = Restaurante.new(
			:nome => restaurantes(:fasano).nome,
			:endereco => restaurantes(:fasano).endereco,
			:especialidade => restaurantes(:fasano).especialidade)

		msg = "restaurante não foi salvo. "
		+ "errors: ${restaurante.errors.inspect}"
		assert restaurante.save, msg

		restaurante_fasano_copia = Restaurante.find(restaurante.id)

		assert_equal restaurante.nome, restaurante_fasano_copia.nome
	end
end

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
