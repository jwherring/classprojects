# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Role.create(
  [
    {role: 'administrator'},
    {role: 'student'}
  ]
)

Course.create(
  [
    {
      title: 'Software Development on Evolving Platforms',
      section: 'CS 3216'
    }
  ]
)

Project.create(
  [
    {title: 'JFDI Academy Made Simple', 
    abstract: 'JFDI Academy was originally developed for the CS1101S course to teach programming through gamification. Students are given programming goals to achieve, and they level up through these goals to be able to bigger and more fulfilling challenges. JFDI Academy was recently taken up by a geography teacher in a government secondary school and he has found it to be extremely effective in engaging troubled students, resulting in significant improvements to their grades. Unfortunately JFDI Academy in its current form requires significant hacking and customization to the source code, making it unsuitable for teachers with little technical background. The objective of this project is to produce a simplified JFDI Academy system that non-technically inclined teachers can customize and deploy to their students.',
    website: '',
    course_id: 1 
  ]
)
