class Group < ApplicationRecord
    has_many :group_users, dependent: :destroy
    has_many :users, through: :group_users, source: :user
    has_many :comments, dependent: :destroy
    validates :name, presence: true, uniqueness: true
end
