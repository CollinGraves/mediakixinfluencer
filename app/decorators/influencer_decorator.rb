class InfluencerDecorator < Draper::Decorator
  delegate_all

  def serializer_class
    InfluencerSerializer
  end

  def name
    [object.first_name, object.last_name].join(' ')
  end

  def gender
    Influencer::GENDERS.invert[object.gender]
  end

  def country
    object.address && ISO3166::Country.translations[object.address.country]
  end

  def publishing_platforms_list
    object.publishing_platforms.map do |publishing|
      publishing.type.sub("PublishingPlatform", "")
    end.join(", ")
  end

end
