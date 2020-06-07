class Education < ApplicationRecord
  belongs_to :profile
  enum level: {under_graduated: 0, elementary: 1, high_school: 2, college: 3, technical: 4, another_type: 5}
  def graduation_types
    {"Sem instrução" => "0", "Ensino Fundamental" => "1","Ensino Médio" => "2",
      "Ensino Superior" => "3", "Curso Técnico" => "4", "Outro Tipo" => "5"}
  end
  
end
