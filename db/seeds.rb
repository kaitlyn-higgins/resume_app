# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

student = Student.create({first_name: "Bob", last_name: "Bobson", email: "bob@gmail.com", phone_number: 3876924, bio: "My name is Bob, and I'm the best.", linked_in: "https://www.linkedin.com/in/bobbobson/", twitter: "https://www.twitter.com/bobbobson", website: "bob.com", resume: "bobresume.pdf", github: "https://www.github.com/bobbobson", photo: "bob.jpeg", password: "password", password_confirmation: "password"})
student = Student.create({first_name: "Ingrid", last_name: "Bergman", email: "ingrid@gmail.com", phone_number: 9873742, bio: "I really liked working with Humphrey Bogart in Casablanca.", linked_in: "https://www.linkedin.com/in/indridbergman/", twitter: "https://www.twitter.com/indridbergman", website: "ingrid.com", resume: "ingridresume.pdf", github: "https://www.github.com/indridbergman", photo: "ingrid.jpeg", password: "password", password_confirmation: "password"})
student = Student.create({first_name: "Samwise", last_name: "Gamgee", email: "sam@gmail.com", phone_number: 2744815, bio: "Big fan of hiking and jewelry.", linked_in: "https://www.linkedin.com/in/samwisegamgee/", twitter: "https://www.twitter.com/samwisegamgee", website: "samwise.com", resume: "samwiseresume.pdf", github: "https://www.github.com/samwisegamgee", photo: "samwise.jpeg", password: "password", password_confirmation: "password"})
student = Student.create({first_name: "Tywin", last_name: "Lannister", email: "tywin@gmail.com", phone_number: 9837422, bio: "I have a great credit score, and hate crossbows.", linked_in: "https://www.linkedin.com/in/tywinlannister/", twitter: "https://www.twitter.com/tywinlannister", website: "tywin.com", resume: "tywinresume.pdf", github: "https://www.github.com/tywinlannister", photo: "tywin.jpeg", password: "password", password_confirmation: "password"})
student = Student.create({first_name: "Sarah", last_name: "Connor", email: "sarah@gmail.com", phone_number: 2085738, bio: "I have lots of first hand experience with robotics and AI.",linked_in: "https://www.linkedin.com/in/sarahconnor/", twitter: "https://www.twitter.com/sarahconnor", website: "sarah.com", resume: "sarahresume.pdf", github: "https://www.github.com/sarahconnor", photo: "sarah.jpeg", password: "password", password_confirmation: "password"})

skill = Skill.create({student_id: 1, name: "Ruby"})
skill = Skill.create({student_id: 1, name: "Communication"})
skill = Skill.create({student_id: 2, name: "Leadership"})
skill = Skill.create({student_id: 2, name: "SQL"})
skill = Skill.create({student_id: 3, name: "Project Management"})
skill = Skill.create({student_id: 3, name: "Security"})
skill = Skill.create({student_id: 4, name: "Accounting"})
skill = Skill.create({student_id: 4, name: "Python"})
skill = Skill.create({student_id: 5, name: "Machine Learning"})
skill = Skill.create({student_id: 5, name: "Robotics"})

experience = Experience.create({student_id: 2, start_date: "12/12/1941", end_date: "12/24/1942", title: "Actor", company_name: "Universal Studios", details: "I starred in Casablanca opposite Humphrey Bogart"})
experience = Experience.create({student_id: 5, start_date: "10/5/1985", end_date: "10/11/1986", title: "Server", company_name: "Diner", details: "A robot from the future tried to kill me, but I got away."})
experience = Experience.create({student_id: 5, start_date: "5/30/1992", end_date: "6/12/1992", title: "Guerilla Fighter", company_name: "Keep My Son Alive, Inc", details: "I protected my teenage son from a liquid robot assasin."})
experience = Experience.create({student_id: 3, start_date: "1/5/1204", end_date: "2/14/1224", title: "Bodyguard", company_name: "The Fellowship", details: "I went on a long hike with my friend Frodo."})
experience = Experience.create({student_id: 3, start_date: "3/15/1203", end_date: "8/12/1203", title: "Gardener", company_name: "My Gaffer", details: "I grew some really good potatoes."})
experience = Experience.create({student_id: 2, start_date: "12/12/1938", end_date: "12/24/1939", title: "Actor", company_name: "Universal Studios", details: "I starred in a movie called Only One Night."})
experience = Experience.create({student_id: 4, start_date: "12/12/1324", end_date: "12/24/1325", title: "Head of House Lannister", company_name: "House Lannister", details: "I paid my debts."})
experience = Experience.create({student_id: 4, start_date: "7/4/1325", end_date: "7/4/1325", title: "Father", company_name: "Dad, Inc.", details: "I was shot by my son with a crossbow."})
experience = Experience.create({student_id: 1, start_date: "7/11/2015", end_date: "9/26/2016", title: "Project Manager", company_name: "Robert, Inc.", details: "I managed some really good projects."})
experience = Experience.create({student_id: 1, start_date: "10/15/2016", end_date: "12/24/2018", title: "Head of Bob Operations", company_name: "All Bob All The Time", details: "I was the best Bob in the history of the company."})

education = Education.create({student_id: 1, start_date: "8/25/2005", end_date: "6/13/2009", degree: "Bachelor of Arts in Communications", university: "San Jose State University", details: "I majored in communications with a minor in Bob studies."})
education = Education.create({student_id: 2, start_date: "8/27/1936", end_date: "6/10/1940", degree: "Bachelor of Arts in Theater", university: "Oxford University", details: "I majored in acting with a minor in welding."})
education = Education.create({student_id: 3, start_date: "8/13/1198", end_date: "6/3/1202", degree: "Bachelor of Science in Agriculture", university: "The Shire", details: "I majored in gardening with a minor in taters."})
education = Education.create({student_id: 4, start_date: "8/20/1310", end_date: "6/20/1314", degree: "Bachelor of Arts in Cunning", university: "University of California, Berkley", details: "I majored in finance with a minor in being a terrible father."})
education = Education.create({student_id: 5, start_date: "8/25/1980", end_date: "6/13/1984", degree: "Bachelor of Arts in English", university: "San Diego State University", details: "I majored in English with a minor in survival."})

capstone = Capstone.create({student_id: 1, name: "Chicken Soup for Bob's Soul", description: "It's a collection of inspiring and heart lifting essays for people named Bob", url: "chickensoupforbob.com", screenshot: "chickensoupforbob.jpeg"})
capstone = Capstone.create({student_id: 2, name: "PA Fetch", description: "It's an app for ordering food when you can't leave the set.", url: "pafetch.com", screenshot: "pafetch.jpeg"})
capstone = Capstone.create({student_id: 3, name: "GollumTracker", description: "It's an app that allows you to keep tabs on that sneaky guy.", url: "gollumtracker.com", screenshot: "gollumtracker.jpeg"})
capstone = Capstone.create({student_id: 4, name: "Ye Olde Mint", description: "It's an app that lets you track who you owe money to.", url: "yeoldemint.com", screenshot: "yeoldemint.jpeg"})
capstone = Capstone.create({student_id: 5, name: "SkyNet SchmyScmet", description: "It's an app that hacks skynet and reprograms terminators to do your bidding.", url: "illbeback.com", screenshot: "illbeback.jpeg"})