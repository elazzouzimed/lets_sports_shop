Item.delete_all
Feedback.delete_all
Sport.delete_all
User.delete_all

p "creating users"

user1 = User.create!({ email: "steph@yahoo.com", username: "steph", rating: 4, password: "123456", phone_number: "06557788567" })
user2 = User.create!({ email: "math@outlook.com", username: "mathieu", rating: 4, password: "123456", phone_number: "06114437829" })
user3 = User.create!({ email: "hamzaa@gmail.com", username: "hamza", rating: 4, password: "123456", phone_number: "05763849264"})
user4 = User.create!({ email: "gerard@gmail.com", username: "gerard", rating: 0, password: "123456", phone_number: "0854637685"})

p "creating sports"


football = Sport.create({ name: "Football", description: "sport qui se joue avec un ballon ovale, sur un terrain de 90 m sur 52 m, divisé en tranches de 4,50 m, entre deux équipes de onze ou douze joueurs utilisant les mains et les pieds."})
tennis = Sport.create({ name: "tennis", description: "Le tennis est un sport de raquette qui oppose soit deux joueurs (on parle alors de jeu en simple) soit quatre joueurs qui forment deux équipes de deux (on parle alors de jeu en double.)"})
golf = Sport.create({ name: "golf", description: "Le golf est un sport de précision se jouant en plein air, qui consiste à envoyer une balle dans un trou à l'aide de clubs. Le but du jeu consiste à effectuer, sur un parcours défini, le moins de coups possible. Précision, endurance, technicité, concentration sont des qualités primordiales pour cette activité."})
basketball = Sport.create({ name: "basketball", description: "Le basket-ball ou basket ou Basketball (selon les rectifications orthographiques du français en 1990 1), est un sport collectif qui se joue entre deux équipes de cinq joueurs"})

p "creating Items"


item1 = Item.create!({ user: user1, sport_id: tennis.id, description: "Ensemble de tenis", name:"marque rolex", price: 500})
item1.photo.attach(io: File.open('app/assets/images/Tenis_ensemble.jpg'), filename: 'Tenis_ensemble.jpg')

item2 = Item.create!({ user: user1, sport_id: tennis.id, description: "Materiels professionnels de tenis", name:"marque rodania", price: 650})
item2.photo.attach(io: File.open('app/assets/images/Tenis_materiels.jpg'), filename: 'Tenis_materiels.jpg')

item3 = Item.create!({ user: user3, sport_id: tennis.id, description: "short rodania matiere silecone signe nadal", name: "raquette rodania", price: 100})
item3.photo.attach(io: File.open('app/assets/images/Tenis_raquette.jpeg'), filename: 'Tenis_raquette.jpeg')

item4 = Item.create!({ user: user3, sport_id: golf.id, description: "ball d'origine", name:"ball", price: 70})
item4.photo.attach(io: File.open('app/assets/images/Golf_ball.png'), filename: 'Golf_ball.png')

item5 = Item.create!({ user: user3, sport_id: golf.id, description: "club signe", name:"signe", price: 350})
item5.photo.attach(io: File.open('app/assets/images/Golf_club.jpg'), filename: 'Golf_club.jpg')

item6 = Item.create!({ user: user3, sport_id: golf.id, description: "packs ensemble", name:"d'origine", price: 450})
item6.photo.attach(io: File.open('app/assets/images/Golf_ensemble.jpg'), filename: 'Golf_ensemble.jpg')

item7 = Item.create!({ user: user2, sport_id: football.id, description: "crampon signé", name:"adidas", price: 650})
item7.photo.attach(io: File.open('app/assets/images/Foot_crampon.jpg'), filename: 'Foot_crampon.jpg')

item8 = Item.create!({ user: user3, sport_id: football.id, description: "ensemble foot", name:"nick", price: 250})
item8.photo.attach(io: File.open('app/assets/images/Foot_ensemble.jpg'), filename: 'Foot_ensemble.jpg')

item9 = Item.create!({ user: user1, sport_id: football.id, description: "pack foot", name:"umbro", price: 750})
item9.photo.attach(io: File.open('app/assets/images/Foot_materiels.jpg'), filename: 'Foot_materiels.jpg')

item10 = Item.create!({ user: user1, sport_id: basketball.id, description: "ballon d'origine ", name:"jordan", price: 250})
item10.photo.attach(io: File.open('app/assets/images/Basket_ball.jpg'), filename: 'Basket_ball.jpg')

item11 = Item.create!({ user: user2, sport_id: basketball.id, description: "chaussure d'origine signe", name:"jordan", price: 150})
item11.photo.attach(io: File.open('app/assets/images/Basket_chaussure.jpg'), filename: 'basket_chaussure.jpg')

item12 = Item.create!({ user: user1, sport_id: basketball.id, description: "ensemble signe", name:"jordan", price: 850})
item12.photo.attach(io: File.open('app/assets/images/Basket_tenue.jpg'), filename: 'basket_tenue.jpg')


p "creating feedbacks"

Feedback.create!({ user_id: user1.id, comment: "tres satisfait", comentator_id: user4.id, rating: 5 })
Feedback.create!({ user_id: user3.id, comment: "moyenement satisfait", comentator_id: user4.id, rating: 3 })


p "seeding DONE "
