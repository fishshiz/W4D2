class CatRentalRequest < ApplicationRecord
  validates :status, :inclusion => { :in => ['APPROVED', 'DENIED', 'PENDING']}

  belongs_to :cat,
  class_name: :Cat,
  primary_key: :id,
  foreign_key: :cat_id

  def overlapping_requests
    CatRentalRequest.select(:cat_id)
    .joins(:cats)
    .where("IN #{CatRentalRequest.overlapping_requests}")
  end
end
