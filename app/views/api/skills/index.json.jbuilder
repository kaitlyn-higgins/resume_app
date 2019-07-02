json.array! @skills.each do |skill|
  json.partial! "skill.json.jbuilder", skill: skill
end

