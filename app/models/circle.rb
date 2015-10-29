class Circle < ActiveRecord::Base
	has_many :users
	belongs_to :owner, class_name: "User", foreign_key: "owner_id"
	validates :owner, presence: true
	validates :name, presence: true
end
