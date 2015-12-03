class Item < ActiveRecord::Base
  #:name :description :priority :completed
  belongs_to :list
end
