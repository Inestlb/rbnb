# Celebrity.destroy_all



# puts "Starting seed deployment"

# User.create(email: "test@test.fr", id: 1)

# Celebrity.create({ user_id: 1, name: "Ian Somerhalder", price_per_hour: 45, location: "Los Angeles, USA", rating: 4.9 })
# # Celebrity.create({ name: "George Clooney", price_per_hour: 50, location: "Hollywood, USA", rating: 5.0 })
# # Celebrity.create({ name: "Paris Hilton", price_per_hour: 40, location: "Beverly Hills, USA", rating: 4.8 })
# # Celebrity.create({ name: "Squeezie", price_per_hour: 30, location: "Paris, France", rating: 4.7 })



# puts "seeding finished"

User.destroy_all
Celebrity.destroy_all

puts "Starting seed deployment"
users_email = ["test1@test.fr", "test2@test.net", "test3@test.com", "test4@test.fr", "test5@test.net", "test6@test.com", "test7@test.fr", "test8@test.net", "test9@test.com", "test10@test.fr", "test11@test.net", "test12@test.net"]
@celebrities_name = ["George Clooney", "Paris Hilton", "Squeezie", "Ian somerhalder", "Lady Gaga", "Emma Watson", "Timothée Chalamet", "Daddy yankee", "Fary", "Léon Marchand", "Céline Dion", "Marine Le Pen"]
@celebrities_location = ["Hollywood", "New York", "Lyon", "Paris", "Beverly Hills", "Grigny la grande Borne", "Villegenon", "Evry-sur-Seine", "Paris", "Toulouse", "Montréal", "Neuilly-sur-Seine" ]
@celebrities_images = ["https://cdn.britannica.com/33/196233-050-169795DF/George-Clooney-2016.jpg", "https://static.foxnews.com/foxnews.com/content/uploads/2024/09/paris-hilton.jpg",
"https://cdn.unitycms.io/images/A7G8p8VRKa-Abuh9nzCziK.jpg?op=ocroped&val=1200,630,1000,1000,0,0&sum=ddLUVgX4MY8", "https://photos.tf1.fr/940/531/ian-somerhalder-12-7178be-0@3x.webp",
"https://www.francetvinfo.fr/pictures/xtwrDAeRv6kHkqUNeaAww54yxAQ/1200x1200/2024/09/27/ladygagagetty-66f679a73447b481577297.jpg",
"https://static1.purepeople.com/articles/8/51/77/68/@/7596150-emma-watson-est-a-retrouver-ce-soir-dans-1200x0-3.jpg",
"https://image.lematin.ch/2024/10/28/476c75de-dd72-4e46-8fd2-390168c8c8cb.jpeg?auto=format%2Ccompress%2Cenhance&fit=max&w=1200&h=1200&rect=0%2C0%2C4000%2C2667&s=cd1a6a73ef4b2cf608896a95a3e03725", "https://peopleenespanol.com/thmb/okZkbg-pclSSZjtp6phQfJvseD8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/DaddyYankee-be72832c66a546448c181ff188a270b1.jpg",
"https://img.20mn.fr/iUzW6gRoTBy54-icUnlkew/1444x920_vendredi-1er-mars-2019-fary-troisieme-humoriste-francais-produire-accorhotels-arena-bercy-devant-salle-comble", "https://img.20mn.fr/sjFVrRG9TJazCAtjApausik/1444x920_singapore-singapore-october-31-leon-marchand-of-france-celebrates-after-winning-the-men-s-100m-individual-medley-final-during-day-one-of-the-world-aquatics-swimming-world-cup-2024-singapore-stop-at-the-ocbc-aquatic-centre-on-october-31-2024-in-singapore-photo-by-yong-teck-lim-getty-images-photo-by-yong-teck-lim-getty-images-asiapac-getty-images-via-afp",
"https://remeng.rosselcdn.net/sites/default/files/dpistyles/rem_16_9_1124w/node_593289/14237951/public/afp/2024/4/24/10/40697ac816e3ce21fa08d3450c93d13aa5466eef.jpg?itok=1o2zmB6r1713946501", "https://cdn.wamiz.fr/cdn-cgi/image/format=auto,quality=80,width=1200,height=675,fit=cover/article/main-picture/bengal-le-pen-fb-5ff59f3d0b67b.jpg"]

@celebrities_word = [
  "Un café en terrasse ? Bien sûr, mais seulement si je peux le préparer moi-même avec une machine de luxe.
  Amateur de plaisanteries élégantes et de discussions sur les villas italiennes,
  je suis l'accompagnateur parfait pour une journée chic et relax. What else?",
  "La vie, c'est hot ! Entre un shopping marathon et une soirée en boîte privée,
  je peux aussi vous enseigner comment poser pour un selfie parfait. Si vous aimez les petits chiens,
  je peux même ramener Tinkerbell (ou son héritier).",
  "Roi des défis improbables, je suis toujours prêt pour une course en karting ou un marathon de memes.
  Attention, je risque de filmer l'intégralité de notre activité pour ma prochaine vidéo.",
  "Éternel romantique et ténébreux, j'adore lire dans un cimetière, boire un verre (de vin, pas de sang, promis !)
  et parler de la fin du monde... avec style. Fans de vampires, préparez-vous à une nuit mystique.",
  "Reine de la transformation, je peux passer de robes en viande à des conversations philosophiques sur l'art et la musique.
  Si vous aimez chanter faux à plein poumons, je vous entraînerai dans un karaoké inoubliable.",
  "Féministe et intellectuelle, je peux vous apprendre à sauver des elfes de maison ou à lire trois
  livres en une après-midi. Bonus : un accent britannique impeccable.",
  "Artiste bohème, amateur de films d'auteur et de poésie sous la pluie,
  je suis votre compagnon idéal pour une balade mélancolique dans les rues pavées d'un vieux quartier.",
  "Reggaetonero légendaire, je vous apprends à bouger comme jamais sur mes hits planétaires.
  Ambiance caliente garantie, et je ramène les enceintes !",
  "Maîtrisant l'art de l'autodérision et des punchlines, je transforme n'importe quelle situation en stand-up mémorable.
  Préparez-vous à rire (de vous, de moi, de tout le monde).",
  "Champion sous l'eau comme sur la terre, je peux vous donner des cours de natation, ou simplement discuter techniques sportives.
  J'apporte mes lunettes de nage, au cas où.",
  "Icône absolue, prête à chanter My Heart Will Go On dans
  n'importe quel contexte (même au karaoké d'un fast-food). Si vous aimez l'excentricité, vous serez servi.", "Pas d'arguments"
]
@index = 0

users_email.each do |user_email|
  user = User.new
  user.email = user_email
  user.password = "123456"
  user.password_confirmation = "123456"
  user.save!

  celebrity = Celebrity.new
  celebrity.name = @celebrities_name[@index]
  celebrity.price_per_hour = rand(1..100)
  celebrity.location = @celebrities_location[@index]
  celebrity.word = @celebrities_word[@index]
  celebrity.rating = rand(1..5)
  celebrity.user_id = user.id
  celebrity.images = @celebrities_images[@index]
  celebrity.save!
  @index += 1
end
puts "seeding finished"
