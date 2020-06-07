class Profession < ApplicationRecord
  belongs_to :profile
  enum job_area: {IT: 0, accounting: 1, HR: 2, health: 3, third_sector: 4,
                  company_services: 5, another_type: 6}
end
