require_relative 'controller'

class Router

  def initialize
    @controller = Controller.new
  end

  def perform
    @controller.open_app
    @controller.start_menu
  end

end