# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Applicant Portion - Applicant. Profession, Education, Avatar
profession1 = {:company => 'Mercado Totio', :job_role => 'Op. caixa', :attributions => 'Serviços de mercado', :salary => 1200, :start_date => '15-01-2018', :end_date => '13-12-2018', :job_area => 5}
education1 = {:institution => 'Escola São Paulo', :course => 'Segundo grau', :start_date => '15-01-2018', :end_date => '13-12-2018', :level => 2}
profession2 = {:company => 'Alta Tech', :job_role => 'Dev. PHP', :attributions => 'Git, Front-end, back-end, Desenvolvimento de páginas e banners.', :salary => 2300, :start_date => '15-01-2018', :end_date => '13-12-2018', :job_area => 0}
education2 = {:institution => 'Uni ABC', :course => 'Direito', :start_date => '15-01-2018', :end_date => '13-12-2018', :level => 3}
profession3 = {:company => 'McGinnis Consultoria', :job_role => 'Advogado', :attributions => 'Atendimento jurídico referentes as causas do cliente', :salary => 4600, :start_date => '15-01-2018', :end_date => '13-12-2018', :job_area => 6}
education3 = {:institution => 'Fatec Tatuí', :course => 'Eng. de Produção', :start_date => '15-01-2018', :end_date => '13-12-2018', :level => 3}
profession4 = {:company => 'Pepsico', :job_role => 'Tec. de Alimentos', :attributions => 'Responsável pelo controle de qualidade e produção de receitas e fórmulas referentes aos produtos oferecidos pela Pepsico', :salary => 6500, :start_date => '15-01-2018', :end_date => '13-12-2018', :job_area => 6}
education4 = {:institution => 'E. E. Thomas Mórus', :course => 'Segundo grau', :start_date => '15-01-2018', :end_date => '13-12-2018', :level => 2}
profession5 = {:company => 'Centro com. Raposo', :job_role => 'Aux. Contábil', :attributions => 'Contabilidade, livro razão, balancetes', :salary => 2400, :start_date => '15-01-2018', :end_date => '13-12-2018', :job_area => 1}
education5 = {:institution => 'Centro de Estudos SP', :course => 'Primeiros Socorros', :start_date => '15-01-2018', :end_date => '13-12-2018', :level => 5}
profession6 = {:company => 'Centro de acolhida ao idoso', :job_role => 'Aux. serviços gerais', :attributions => 'Prestação de serciços diversos.', :salary => 0, :start_date => '15-01-2018', :end_date => '13-12-2018', :job_area => 4}
education6 = {:institution => 'E. E. P. S. G. Ruy Barbosa', :course => 'Primeiro Grau', :start_date => '15-01-2018', :end_date => '13-12-2018', :level => 1}
profession7 = {:company => 'Hospital Geral República', :job_role => 'Aux. Enfermagem', :attributions => 'Atuação com posologia de remédio para pacientes , aplicação de injeção. Limpeza, banho e troca de roupas dos pacientes.', :salary => 1700, :start_date => '15-01-2018', :end_date => '13-12-2018', :job_area => 3}
education7 = {:institution => 'Centro de Estudos SP', :course => 'Auxiliar de Enfermagem', :start_date => '15-01-2018', :end_date => '13-12-2018', :level => 4}


applicant1 = Applicant.create! :email => 'john@gmail.com', :password => '123456', :password_confirmation => '123456',
:profile_attributes => { :name => 'John Doe', :preferred_name => 'Johny', :gender => 0, :description => 'Just one user',
:educations_attributes => [education1, education2],
:professions_attributes => [profession1, profession2] }

applicant2 = Applicant.create! :email => 'jane@gmail.com', :password => '123456', :password_confirmation => '123456',
:profile_attributes => { :name => 'Jane Doe', :preferred_name => 'Jen', :gender => 1, :description => 'Dev woman',
:educations_attributes => [education3, education4],
:professions_attributes => [profession7, profession4] }

applicant3 = Applicant.create! :email => 'jsmith@gmail.com', :password => '123456', :password_confirmation => '123456',
:profile_attributes => { :name => 'John Smith', :preferred_name => 'smithy', :gender => 0, :description => 'Live to work.',
:avatar => Rack::Test::UploadedFile.new('app/assets/images/test.jpeg', 'image/jpeg'),
:educations_attributes => [education6, education1],
:professions_attributes => [profession6, profession1] }

applicant4 = Applicant.create! :email => 'janes@gmail.com', :password => '123456', :password_confirmation => '123456',
:profile_attributes => { :name => 'Jane Smith', :preferred_name => 'Ms. Robot', :gender => 1, :description => '.',
:avatar => Rack::Test::UploadedFile.new('app/assets/images/test.jpeg', 'image/jpeg'),
:educations_attributes => [education1, education2, education3, education4, education5, education6, education7],
:professions_attributes => [profession1,  profession2,  profession3,  profession4,  profession5,  profession6,  profession7] }


applicant5 = Applicant.create! :email => 'user@user.com', :password => '123456', :password_confirmation => '123456',
:profile_attributes => { :name => 'User Hum', :preferred_name => 'U1', :gender => 0, :description => 'Default test User.',
:educations_attributes => [{:institution => 'Escola Um', :course => 'Enfermeiro', :start_date => '15-01-2018', :end_date => '13-12-2018', :level => 2}],
:professions_attributes => [profession1] }

