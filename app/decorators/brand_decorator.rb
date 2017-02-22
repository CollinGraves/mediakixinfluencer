class BrandDecorator < Draper::Decorator
  delegate_all

  def campaigns_count
    object.campaigns.count
  end

  def category_list
    object.categories.pluck(:label).join(', ')
  end

end
