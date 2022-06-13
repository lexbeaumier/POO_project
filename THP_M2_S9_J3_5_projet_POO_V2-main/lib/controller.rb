require_relative 'view'
require_relative 'item'

class Controller

  def open_app
    View.welcome
  end

  def start_menu

    View.start_menu

    while true  
      params = gets.chomp.to_i

      case params
        when 1   
          items = Item.all

          View.all(items)
          View.index_items_menu
          Controller.user_input_in_index_items_menu
        when 2
          View.goodbye
          break
        else
          View.error
      end  
    end
  end

  def self.user_input_in_index_items_menu  
    while true
      params = gets.chomp.to_i

      case params
        when 1
          View.start_menu
          break
        when 2
          View.item_menu_selector
          item_id = gets.chomp.to_i
          Controller.item_valid?(item_id)
          selected_item = Item.one_item(item_id)
          View.show_selected_item(selected_item)
          View.index_items_menu
        else
          View.error
      end
    end
  end

#######################################################

  private 

    def self.item_valid?(item_id)
      while item_id < 1 || item_id > Item.all.length 
        View.error
        item_id = gets.chomp.to_i
      end
      return item_id
    end
end

  
