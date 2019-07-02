json.array! @educations.each do |education|
  json.partial! "education.json.jbuilder", education: education
end