class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum user_type: {customer: 0, restaurant: 1}

  def self.user_types
    {"Customer" => 0, "Restaurant" => 1}
  end
end
