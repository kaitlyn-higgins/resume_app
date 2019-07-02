json.id student.id
json.first_name student.first_name
json.last_name student.last_name
json.email student.email
json.phone_number student.phone_number
json.bio student.bio
json.linked_in student.linked_in
json.twitter student.twitter
json.website student.website
json.resume student.resume
json.github student.github
json.photo student.photo
json.created_at student.created_at
json.updated_at student.updated_at

json.skills do
  json.array! student.skills.each do |skill|
    json.name skill.name
  end
end

json.experience do
  json.array! student.experiences.each do |experience|
    json.title experience.title
    json.company_name experience.company_name
    json.details experience.details
    json.start_date experience.start_date
    json.end_date experience.end_date
  end
end

json.education do
  json.array! student.educations.each do |education|
    json.university education.university
    json.start_date education.start_date
    json.end_date education.end_date
    json.degree education.degree
    json.details education.details
  end
end

json.capstones do
  json.array! student.capstones.each do |capstone|
    json.name capstone.name
    json.description capstone.description
    json.url capstone.url
    json.screenshot capstone.screenshot
  end
end