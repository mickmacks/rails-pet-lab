class Owner < ActiveRecord::Base

  has_secure_password

  has_many :pets
  has_many :appointments, through: :pets  

  validates :first_name, presence: true, length: { minimum: 2, maximum: 50 }

  validates :last_name, presence: true, length: { minimum: 2, maximum: 50 }

  # TODO: Validate password (Characters, uppercase, numbers, etc...)

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,
            presence:   true,
            format:     { with: VALID_EMAIL_REGEX },
            uniqueness: true,
            length:     { maximum: 255 }

  def normalize_phone_number
    if phone.present?
      phone.gsub!(/^1/, "")
      phone.gsub!(/[()-.]/,"")
    end
  end

end
