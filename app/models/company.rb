class Company < ApplicationRecord
    belongs_to :employee
    belongs_to :area
end
