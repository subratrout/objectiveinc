class Job < ApplicationRecord
  has_many :applicants

  def skills_count
    self
      .applicants
      .includes(:skills)
      .map { |applicant| applicant.skills.count }
      .sum(0)
  end
end
