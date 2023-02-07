class Client < ApplicationRecord
    has_many :memberships
    has_many :gyms, through: :memberships

    def memberships_sum
        self.memberships.each.sum {|c| c.charge}
    end
end
