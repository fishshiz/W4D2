class Cat < ApplicationRecord
  validates :color, :inclusion => { :in => ['black', 'white', 'orange', 'grey', 'calico', 'chrome']}
  validates :sex, :inclusion => { :in => ['F', 'M']}

  has_many :cat_rental_requests,
  class_name: :CatRentalRequest,
  primary_key: :id,
  foreign_key: :cat_id,
  dependent: :destroy

  def age
    birth_date = self.birth_date
    today = Time.now.strftime("%d/%m/%Y").split('/')
    # today => [24, 10, 2017]
    age = today.last.to_i - birth_date.year
    if birth_date.month < today[1].to_i
      age -= 1
    elsif birth_date.month == today[1].to_i && birth_date.day > today[0].to_i
      age -= 1
    end
      age
  end

end
