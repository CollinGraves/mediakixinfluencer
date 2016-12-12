class Footer < ActiveAdmin::Component
  def build
    super :id => "footer"
    span 'Built with <3 by Collin Graves'
  end
end
