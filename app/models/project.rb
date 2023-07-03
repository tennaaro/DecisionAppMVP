class Project < ApplicationRecord
  has_many :decisions, dependent: :destroy, inverse_of: :project
  accepts_nested_attributes_for :decisions, reject_if: :all_blank, allow_destroy: true
end
