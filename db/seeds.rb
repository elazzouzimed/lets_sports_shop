Item.destroy_all
Feedback.destroy_all
Sport.destroy_all
User.destroy_all

p "creating users"

user1 = User.create({ email: "steph@yahoo.com", username: "steph", rating: 4, password: "123456", phone_number: "06557788567" })
user2 = User.create({ email: "math@outlook.com", username: "mathieu", rating: 4, password: "123456", phone_number: "06114437829" })
user3 = User.create({ email: "hamzaa@gmail.com", username: "hamza", rating: 4, password: "123456", phone_number: "05763849264"})
user4 = User.create({ email: "gerard@gmail.com", username: "gerard", rating: 0, password: "123456", phone_number: "0854637685"})

p "creating sports"

football = Sport.create({ name: "Football", description: "sport qui se joue avec un ballon ovale, sur un terrain de 90 m sur 52 m, divisé en tranches de 4,50 m, entre deux équipes de onze ou douze joueurs utilisant les mains et les pieds."})
tennis = Sport.create({ name: "tennis", description: "Le tennis est un sport de raquette qui oppose soit deux joueurs (on parle alors de jeu en simple) soit quatre joueurs qui forment deux équipes de deux (on parle alors de jeu en double.)"})
golf = Sport.create({ name: "golf", description: "Le golf est un sport de précision se jouant en plein air, qui consiste à envoyer une balle dans un trou à l'aide de clubs. Le but du jeu consiste à effectuer, sur un parcours défini, le moins de coups possible. Précision, endurance, technicité, concentration sont des qualités primordiales pour cette activité."})

p "creating Items"

Item.create({ user_id: user1.id, sport_id: football.id, description: "c'est un ballon d’origin signe adidas model 2022", name:"ballon adidas", price: 125})
Item.create({ user_id: user1.id, sport_id: tennis.id, description: "raquette rolex tout neuve avec sac de protection", name:"raquette rolex", price: 500})
Item.create({ user_id: user3.id, sport_id: golf.id, description: "short rodania matiere silecone signe nadal", name:"short rodania", price: 350})

p "creating feedbacks"

Feedback.create({ user_id: user1.id, comment: "tres satisfait", comentator_id: user4.id, rating: 5 })
Feedback.create({ user_id: user3.id, comment: "moyenement satisfait", comentator_id: user4.id, rating: 3 })


p "seeding DONE "
