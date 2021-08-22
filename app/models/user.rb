class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
      has_many :tweets, dependent: :destroy
      # use for not real-time group chat
      has_many :group_users, dependent: :destroy
      has_many :groups, through: :group_users, source: :group, dependent: :destroy

      # use for real-time group chat
      has_many :room_users, dependent: :destroy
      has_many :rooms, through: :room_users, source: :room, dependent: :destroy

      has_many :comments, dependent: :destroy
      has_many :messages
      validates :username, presence: true
end
