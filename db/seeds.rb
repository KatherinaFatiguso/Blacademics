# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

=begin
role1 = "student"

role2 = "organisation"

user1 = User.create!(
  email: "user3@example.com",
  password: "12345678",
  password_confirmation: "12345678",
  user_type: role1
)
user1.add_role role1


student1 = StudentProfile.create!(
  id: user1.id,
  first_name: "Jason",
  last_name: "Williams",
  profile_pic: "jason.jpg",
  bio: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. N",
  title: "Junior",
  letters: "Bsc",
  post_nominal_titles: "Msc",
  work_history: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestib",
  resume: "jason_resume.pdf"
)

student1_uni1 = UniversityEducation.create!(
degree: "Undergraduate",
field_of_study: "Science",
university: "UNSW",
school: "",
year_started: "2010",
year_ended: "2012",
student_profile_id: student1.id
)

student1_uni2 = UniversityEducation.create!(
degree: "Postgraduate",
field_of_study: "Science",
university: "UWS",
school: "",
year_started: "2012",
year_ended: "2015",
student_profile_id: student1.id
)

student1_scholarship1 = Scholarship.create!(
title: "Young Scientists Scholarship",
organisation: "ANSITO Club",
year_received: "2012",
student_profile_id: student1.id
)

student1_scholarship2 = Scholarship.create!(
title: "Eastern Suburb Science Club Scholarship",
organisation: "UNSW",
year_received: "2013",
student_profile_id: student1.id
)

student1_award1 = Award.create!(
title: "Eastern Suburb Young Scientists Award",
organisation: "Sydney Boys High School",
year_received: "2010",
student_profile_id: student1.id
)

student1_award2 = Award.create!(
title: "Awesome Science Award",
organisation: "Randwick City Council",
year_received: "2012",
student_profile_id: student1.id
)

student1_internship1 = Internship.create!(
title: "UNSW Science Tutor Internship",
organisation: "UNSW",
year_commenced: "2012",
year_ended: "2013",
student_profile_id: student1.id
)

student1_internship2 = Internship.create!(
title: "Science Teacher Internship",
organisation: "Randwick Boys Highschool",
year_commenced: "2013",
year_ended: "2014",
student_profile_id: student1.id
)

student1_cadetship1 = Cadetship.create!(
title: "Science Cadetship",
organisation: "UWS",
year_commenced: "2012",
year_ended: "2013",
student_profile_id: student1.id
)

student1_cadetship2 = Cadetship.create!(
title: "Eastern Sydney Science Cadetship",
organisation: "UWS",
year_commenced: "2013",
year_ended: "2014",
student_profile_id: student1.id
)

student1_employment1 = Employment.create!(
title: "Science Teacher",
organisation: "Randwick Boys Highschool",
year_commenced: "2013",
year_ended: "2014",
student_profile_id: student1.id
)

student1_employment1 = Employment.create!(
title: "Science Lecturer",
organisation: "UNSW",
year_commenced: "2014",
year_ended: "2015",
student_profile_id: student1.id
)

student1_skill1 = Skill.create!(
skill: "Mentoring highschool students",
student_profile_id: student1.id
)

student1_skill2 = Skill.create!(
skill: "Tutoring university students",
student_profile_id: student1.id
)
=end
User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')