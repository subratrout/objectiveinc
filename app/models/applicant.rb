class Applicant < ApplicationRecord
  belongs_to :job
  has_many :skills
end
