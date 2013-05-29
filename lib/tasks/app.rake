namespace :app do 

  desc "Populate the database with development data"
  task :populate => :environment do 

    # PATIENTS
    [
      {:first_name => "Natalie",  :last_name => "Woosey", :gender => "female", :dob => "07/10/1990"},
      {:first_name => "Jonathon",  :last_name => "Norman", :gender => "male", :dob => "10/05/1991"},
      {:first_name => "Karl",  :last_name => "Barker", :gender => "male", :dob => "23/08/1991"},
      {:first_name => "Holly",  :last_name => "Smurthwaite", :gender => "female", :dob => "23/01/1990"},
      {:first_name => "Bethany",  :last_name => "Schofield", :gender => "female", :dob => "01/09/1994"},
      {:first_name => "Matt",  :last_name => "Schofield", :gender => "male", :dob => "25/04/1991"} 
    ].each do |attributes|
      Patient.find_or_create_by_attributes(attributes)
    end

    # DOCTORS
    [
      {:first_name => "Robert", :last_name => "Bartholemew", :job_title => "Consultant", :gender => "male", :dob => "23/5/1960" },
      {:first_name => "Susan", :last_name => "Riddell", :job_title => "General Practitioner", :gender => "female", :dob => "15/04/1970"}
    ].each do |attributes|
      Doctor.find_or_create_by_attributes(attributes)
    end
  end

end
