json.partial! "student.json.jbuilder", student: @student

json.educations do
  json.array! @student.educations, partial: 'api/educations/education', as: :education
end

json.experiences do
  json.array! @student.experiences, partial: 'api/experiences/experience', as: :experience
end

json.skills do
  json.array! @student.skills, partial: 'api/skills/skill', as: :skill
end

json.capstones do
  json.array! @student.capstones, partial: 'api/capstones/capstone', as: :capstone
end

