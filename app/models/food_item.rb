class FoodItem < ActiveRecord::Base
  has_many :orders, dependent: :destroy
  validates :name, :section, :price, presence: true
  validates :price, numericality: true

  def image
    if image_url.present?
      image_url
    else
      "http://loremflickr.com/320/240/#{name}"
    end
  end

  def self.search(search)
    if search
      where(["name ILIKE ?" , "%#{search}%"])
    else
      all
    end
  end

  def self.find_by_section(section)
    if section
      where("section ILIKE ?", "%#{section}%")
    else
      all
    end
  end
end
