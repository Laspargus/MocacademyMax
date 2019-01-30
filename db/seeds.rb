

require 'faker'


#Creation Lecture
10.times do |index|
    lecture = Lecture.create(title: Faker::Science.element, description: Faker::Science.scientist)
end

#Creation Session
10.times do |index|
    session = Session.create(title: Faker::University.name, body: Faker::Shakespeare.hamlet_quote)
    session.lecture=Lecture.first
    session.save
end


