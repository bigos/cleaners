class Rating < ActiveRecord::Base
  def coordinates
    "#{latitude},#{longitude}"
  end
end
