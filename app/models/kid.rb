class Kid < ActiveRecord::Base
    belongs_to :user
    has_many :milestones

    validates :child_fname, presence: true
            #   :child_lname, presence: true,
            #   :parent1_fname, presence: true,
            #   :parent2_lname, presence: true

end
