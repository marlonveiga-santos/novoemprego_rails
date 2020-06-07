class Education < ApplicationRecord
  belongs_to :profile
  enum level: {under_graduated: 0, elementary: 1, high_school: 2, college: 3,
               technical: 4, another_type: 5}
  
end
