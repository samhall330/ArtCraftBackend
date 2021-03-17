class Project < ApplicationRecord
    has_many :collaborators, dependent: :delete_all
end
