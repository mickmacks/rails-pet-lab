class Pet < ActiveRecord::Base
  # associate with owner
  belongs_to :owner, optional: true

  # associate with appointments
  has_many :appointments
  
  # validate name and breed
  validates :name, presence: true
  validates :breed, presence: true

  validate :date_of_birth_cannot_be_in_the_future

  # adds an error if birth date is in the future
  def date_of_birth_cannot_be_in_the_future
    # stretch
  end

  # calculates age of pet in years
  def age
    # stretch
  end

end
