characters = [
  {
    name: 'Spider-man',
    age: 18,
    enjoys: 'Mary-Jane',
    image: 'https://images.unsplash.com/photo-1604200213928-ba3cf4fc8436?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3BpZGVybWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60'
  },
  {
    name: 'Jotaro',
    age: 30,
    enjoys: 'Marine Biology',
    image: 'https://comicvine.gamespot.com/a/uploads/scale_medium/11141/111417570/8224299-956c3a74-6296-4d6f-96fb-b8d4be75d2d6.jpg'
  },
  {
    name: 'Johnny Bravo',
    age: 31,
    enjoys: 'Flexing on haters',
    image: 'https://cdna.artstation.com/p/assets/images/images/020/372/674/large/alejandro-tio-gary-johny-bravo.jpg?1567531127'
  }
]

characters.each do |each_character|
  Character.create each_character
  puts "creating character #{each_character}"
end