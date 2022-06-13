require_relative 'item'
require_relative 'controller'

class View

  def self.welcome
    puts "************************************"
    puts "*************************************"
    puts "**  Bienvenue dans le projet POO  **"
    puts "**         ITEM SHOP              **"
    puts "************************************"
    puts "************************************"
  end

  def self.start_menu
    puts "Bienvenue dans le menu d'accueil."
    puts "*********************************"
    puts "1: Acceder à la liste d'items."
    puts "2: Quitter"
  end

  def self.index_items_menu
    puts "**************************"
    puts "Que souhaitez-vous faire ?"
    puts "1: Revenir au menu d'accueil"
    puts "2: Choisir un item"
  end

  def self.item_menu_selector
    puts "**********************************************"
    puts "Selectionnez un item en entrant son numero id."
  end

  def self.all(all_items)
    puts "************************"
    puts "Liste des items chargée."
    puts "************************"
    all_items.each do |item|
      puts "#{item.id} #{item.name}"
    end
  end

  def self.show_selected_item(selected_item)
    puts "**************************"
    puts "Voici l'item sélectionné :"
    puts "#{selected_item.id} #{selected_item.name} #{selected_item.price} #{selected_item.quantity} #{selected_item.brand}"
  end

  def self.error
    puts "******************"
    puts "ERREUR!!!ERREUR!!!"
    puts "Veuillez saisir un choix valide."
  end

  def self.goodbye
    puts "*******"
    puts "Bye,bye"
  end

end