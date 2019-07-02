json.array! @capstones.each do |capstone|
  json.partial! "capstone.json.jbuilder", capstone: capstone
end