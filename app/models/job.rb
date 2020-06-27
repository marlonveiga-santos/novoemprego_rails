class Job < ApplicationRecord
  belongs_to :headhunter
  enum level: {internship: 0, junior: 1, intermediate: 2, senior: 3,
    specialist: 4, director: 5, another_type: 6}
end
