module ApplicationHelper
	
	
	def menu_principal
		menu = %w(cliente qualificacao restaurantes)
		menu_principal = "<ul>"
		
		menu.each do |item|
			menu_principal << "<li>"
			if item == 'restaurante'
				menu_principal << link_to(item,'restaurante')
			else
				menu_principal << link_to(item, :controller => item.pluralize)
			end
			menu_principal << "</li>"
		end
			menu_principal << "</ul>"
			raw menu_principal
	end

end

	


