# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
profession1 = {:company => 'Mercado Totio', :job_role => 'Op. caixa', :attributions => 'Serviços de mercado', :salary => 1200, :start_date => '15-01-2018', :end_date => '13-12-2018', :job_area => 3}

applicant1 = Applicant.create! :email => 'john@gmail.com', :password => '123456', :password_confirmation => '123456',
:profile_attributes => { :name => 'John Doe', :preferred_name => 'Johny', :gender => 0, :description => 'Just one user' }

applicant2 = Applicant.create! :email => 'jane@gmail.com', :password => '123456', :password_confirmation => '123456',
:profile_attributes => { :name => 'Jane Doe', :preferred_name => 'Johny', :gender => 1, :description => 'Dev woman' }

applicant3 = Applicant.create! :email => 'jsmith@gmail.com', :password => '123456', :password_confirmation => '123456',
:profile_attributes => { :name => 'John Smith', :preferred_name => 'Johny', :gender => 0, :description => 'Live to work.' }

applicant4 = Applicant.create! :email => 'janes@gmail.com', :password => '123456', :password_confirmation => '123456',
:profile_attributes => { :name => 'Jane Smith', :preferred_name => 'Johny', :gender => 1, :description => '.' }


applicant5 = Applicant.create! :email => 'user@user.com', :password => '123456', :password_confirmation => '123456',
:profile_attributes => { :name => 'User Hum', :preferred_name => 'U1', :gender => 0, :description => 'Default test User.',
:educations_attributes => [{:institution => 'Escola Um', :course => 'Enfermeiro', :start_date => '15-01-2018', :end_date => '13-12-2018', :level => 2}],
:professions_attributes => [profession1] }


