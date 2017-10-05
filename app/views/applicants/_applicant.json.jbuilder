json.extract! applicant, :id, :name, :email, :website, :cover_letter, :job_id, :created_at, :updated_at
json.url applicant_url(applicant, format: :json)
