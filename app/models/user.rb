class User < ActiveRecord::Base
    has_many :kids

    has_many :milestones, through: :kids
    
    has_secure_password
    
    validates :username, presence: true, uniqueness: true
end
