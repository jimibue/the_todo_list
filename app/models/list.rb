class List < ActiveRecord::Base
  #name
  has_many :items, dependent: :destroy
end
