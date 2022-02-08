class UsersSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username

  has_many :flight_histories
  has_many :vehicle_histories
  has_many :electricity_histories
  has_many :shipping_histories
end
