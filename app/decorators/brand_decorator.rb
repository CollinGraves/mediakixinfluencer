class BrandDecorator < Draper::Decorator
  delegate_all

  def campaigns_count
    object.campaigns.count
  end

  def category_list
    object.categories.map(&:name).join(', ')
  end

end
