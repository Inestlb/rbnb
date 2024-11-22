# Celebrity.destroy_all



# puts "Starting seed deployment"

# User.create(email: "test@test.fr", id: 1)

# Celebrity.create({ user_id: 1, name: "Ian Somerhalder", price_per_hour: 45, location: "Los Angeles, USA", rating: 4.9 })
# # Celebrity.create({ name: "George Clooney", price_per_hour: 50, location: "Hollywood, USA", rating: 5.0 })
# # Celebrity.create({ name: "Paris Hilton", price_per_hour: 40, location: "Beverly Hills, USA", rating: 4.8 })
# # Celebrity.create({ name: "Squeezie", price_per_hour: 30, location: "Paris, France", rating: 4.7 })



# puts "seeding finished"

Celebrity.destroy_all
User.destroy_all

puts "Starting seed deployment"
users_email = ["test1@test.fr", "test2@test.net", "test3@test.com", "test4@test.fr", "test5@test.net", "test6@test.com", "test7@test.fr", "test8@test.net", "test9@test.com", "test10@test.fr", "test11@test.net", "test12@test.net"]
@celebrities_name = ["George Clooney", "Paris Hilton", "Squeezie", "Ian somerhalder", "Lady Gaga", "Emma Watson", "Timothée Chalamet", "Daddy yankee", "Fary", "Léon Marchand", "Céline Dion", "Marine Le Pen"]
@celebrities_location = ["Hollywood", "New York", "Lyon", "Paris", "Beverly Hills", "Grigny la grande Borne", "Villegenon", "Evry-sur-Seine", "Paris", "Toulouse", "Montréal", "Neuilly-sur-Seine" ]
# @celebrities_images = ["https://cdn.britannica.com/33/196233-050-169795DF/George-Clooney-2016.jpg", "https://static.foxnews.com/foxnews.com/content/uploads/2024/09/paris-hilton.jpg",
# "https://cdn.unitycms.io/images/A7G8p8VRKa-Abuh9nzCziK.jpg?op=ocroped&val=1200,630,1000,1000,0,0&sum=ddLUVgX4MY8", "https://photos.tf1.fr/940/531/ian-somerhalder-12-7178be-0@3x.webp",
# "https://www.francetvinfo.fr/pictures/xtwrDAeRv6kHkqUNeaAww54yxAQ/1200x1200/2024/09/27/ladygagagetty-66f679a73447b481577297.jpg",
# "https://static1.purepeople.com/articles/8/51/77/68/@/7596150-emma-watson-est-a-retrouver-ce-soir-dans-1200x0-3.jpg",
# "https://image.lematin.ch/2024/10/28/476c75de-dd72-4e46-8fd2-390168c8c8cb.jpeg?auto=format%2Ccompress%2Cenhance&fit=max&w=1200&h=1200&rect=0%2C0%2C4000%2C2667&s=cd1a6a73ef4b2cf608896a95a3e03725", "https://peopleenespanol.com/thmb/okZkbg-pclSSZjtp6phQfJvseD8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/DaddyYankee-be72832c66a546448c181ff188a270b1.jpg",
# "https://img.20mn.fr/iUzW6gRoTBy54-icUnlkew/1444x920_vendredi-1er-mars-2019-fary-troisieme-humoriste-francais-produire-accorhotels-arena-bercy-devant-salle-comble", "https://img.20mn.fr/sjFVrRG9TJazCAtjApausik/1444x920_singapore-singapore-october-31-leon-marchand-of-france-celebrates-after-winning-the-men-s-100m-individual-medley-final-during-day-one-of-the-world-aquatics-swimming-world-cup-2024-singapore-stop-at-the-ocbc-aquatic-centre-on-october-31-2024-in-singapore-photo-by-yong-teck-lim-getty-images-photo-by-yong-teck-lim-getty-images-asiapac-getty-images-via-afp",
# "https://remeng.rosselcdn.net/sites/default/files/dpistyles/rem_16_9_1124w/node_593289/14237951/public/afp/2024/4/24/10/40697ac816e3ce21fa08d3450c93d13aa5466eef.jpg?itok=1o2zmB6r1713946501", "https://cdn.wamiz.fr/cdn-cgi/image/format=auto,quality=80,width=1200,height=675,fit=cover/article/main-picture/bengal-le-pen-fb-5ff59f3d0b67b.jpg"]

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
  # celebrity.images = @celebrities_images[@index]
  celebrity.save!
  @index += 1
end

ian_somerhalder = Celebrity.find_by(name: "Ian somerhalder")
if ian_somerhalder
  file1 = URI.parse("http://images4.fanpop.com/image/photos/16300000/Ian-Somerhalder-2010-Scream-Awards-HD-the-vampire-diaries-actors-16365428-2560-1971.jpg").open
  ian_somerhalder.photos.attach(io: file1, filename: "photo1-Ian.jpg", content_type: "image/jpg")
  file2 = URI.parse("https://images8.alphacoders.com/368/368322.jpg").open
  ian_somerhalder.photos.attach(io: file2, filename: "photo2-Ian.jpg", content_type: "image/jpg")
  puts "photo attached to Ian"
else
  puts "celeb ian not found"
end



george_clooney = Celebrity.find_by(name: "George Clooney")
if george_clooney
  file1 = URI.parse("https://content.fortune.com/wp-content/uploads/2018/08/george-clooney-net-worth-tequila.jpg").open
  george_clooney.photos.attach(io: file1, filename: "photo1-george.jpg", content_type: "image/jpg")
  file2 = URI.parse("https://www.aceshowbiz.com/images/wennpic/george-clooney-85th-annual-oscars-press-room-01.jpg").open
  george_clooney.photos.attach(io: file2, filename: "photo2-george.jpg", content_type: "image/jpg")
  puts "photo attached to george"
else
  puts "celeb george not found"
end


paris_hilton = Celebrity.find_by(name: "Paris Hilton")
if paris_hilton
  file1 = URI.parse("https://www.sheknows.com/wp-content/uploads/2022/12/paris-hilton.jpg").open
  paris_hilton.photos.attach(io: file1, filename: "photo1-paris.jpg", content_type: "image/jpg")
  file2 = URI.parse("http://top-10-list.org/wp-content/uploads/2009/09/Paris-Hilton1.jpg").open
  paris_hilton.photos.attach(io: file2, filename: "photo2-paris.jpg", content_type: "image/jpg")
  puts "photo attached to paris"
else
  puts "celeb paris not found"
end


squeezie = Celebrity.find_by(name: "Squeezie")
if squeezie
  file1 = URI.parse("https://media.gqmagazine.fr/photos/62961958fd1aed7cb4cf9171/16:9/w_1280,c_limit/Squeezie.jpeg").open
  squeezie.photos.attach(io: file1, filename: "photo1-squeezie.jpg", content_type: "image/jpeg")
  file2 = URI.parse("https://www.babelio.com/users/AVT_Squeezie_5430.jpg").open
  squeezie.photos.attach(io: file2, filename: "photo2-squeezie.jpg", content_type: "image/jpg")
  puts "photo attached to squeezie"
else
  puts "celeb squeezie not found"
end



lady_gaga = Celebrity.find_by(name: "Lady Gaga")
if lady_gaga
  file1 = URI.parse("https://www.level21mag.com/wp-content/uploads/2021/06/Lady-Gaga-Met-Gala-Level21-Entertainment-Tonight.jpg").open
  lady_gaga.photos.attach(io: file1, filename: "photo1-lady_gaga.jpg", content_type: "image/jpg")
  file2 = URI.parse("https://www.byrdie.com/thmb/qpFUq5QFbYt-6R8BTg-YNc9xP_Y=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-513201724-186f0c2fc0fe499a8c2691d8c9fadf5b-06972ddf269f4304ab8b9572dc602d2e.jpg").open
  lady_gaga.photos.attach(io: file2, filename: "photo2-Lady Gaga.jpg", content_type: "image/jpg")
  puts "photo attached to Lady Gaga"
else
  puts "celeb Lady Gaga not found"
end


emma_watson = Celebrity.find_by(name: "Emma Watson")
if emma_watson
  file1 = URI.parse("https://wallpapercave.com/wp/wc1733479.jpg").open
  emma_watson.photos.attach(io: file1, filename: "photo1-emma_watson.jpg", content_type: "image/jpg")
  file2 = URI.parse("https://i.pinimg.com/originals/06/18/6d/06186d95ebe5c21c2f2fd954d12e8693.jpg").open
  emma_watson.photos.attach(io: file2, filename: "photo2-emma_watson.jpg", content_type: "image/jpg")
  puts "photo attached to Emma Watson"
else
  puts "celeb Emma Watson not found"
end

timotee_chalamet = Celebrity.find_by(name: "Timothée Chalamet")
if timotee_chalamet
  file1 = URI.parse("https://static.highsnobiety.com/thumbor/nTFhZOM1rcEY9B-ZcCTXwPIupGE=/1600x1067/static.highsnobiety.com/wp-content/uploads/2019/09/03111210/timothee-chalamet-venice-main.jpg").open
  timotee_chalamet.photos.attach(io: file1, filename: "photo1-timotee_chalamet.jpg", content_type: "image/jpg")
  file2 = URI.parse("https://www.theplace2.ru/cache/archive/timothee_chalamet/img/hoems4id_o_1-gthumb-gwdata1200-ghdata1200-gfitdatamax.jpg").open
  timotee_chalamet.photos.attach(io: file2, filename: "photo2-timothee_chalamet.jpg", content_type: "image/jpg")
  puts "photo attached to Thimothée Chalamet"
else
  puts "celeb Thimothée Chalamet not found"
end


daddy_yankee = Celebrity.find_by(name: "Daddy yankee")
if daddy_yankee
  file1 = URI.parse("https://www.cheatsheet.com/wp-content/uploads/2022/03/Daddy-Yankee.jpg").open
  daddy_yankee.photos.attach(io: file1, filename: "photo1-daddy_yankee.jpg", content_type: "image/jpg")
  file2 = URI.parse("https://cdn.milenio.com/uploads/media/2021/09/22/daddy-yankee-efe.jpg").open
  daddy_yankee.photos.attach(io: file2, filename: "photo2-daddy_yankee.jpg", content_type: "image/jpg")
  puts "photo attached to Daddy Yankee"
else
  puts "celeb Daddy Yankee not found"
end

fary = Celebrity.find_by(name: "Fary")
if fary
  file1 = URI.parse("https://fralondres.s3.dualstack.eu-west-2.amazonaws.com/original/2X/3/3df3eaf578394940d838b96ccdd10c2db9cedcf6.jpeg").open
  fary.photos.attach(io: file1, filename: "photo1-fary.jpg", content_type: "image/jpeg")
  file2 = URI.parse("https://www.coliseeroubaix.com/storage/artist/2457/fary-previewcirque-c-lauragilli-9jpg.jpg").open
  fary.photos.attach(io: file2, filename: "photo2-fary.jpg", content_type: "image/jpg")
  puts "photo attached to Fary"
else
  puts "celeb Fary not found"
end

leon_marchand = Celebrity.find_by(name: "Léon Marchand")
if leon_marchand
  file1 = URI.parse("https://cdn-s-www.ledauphine.com/images/311E3270-68C4-4F3F-9DA3-11CFA9C17330/NW_raw/leon-marchand-est-champion-du-monde-pour-la-premiere-fois-a-20-ans-photo-sipa-petr-david-josek-1655587613.jpg").open
  leon_marchand.photos.attach(io: file1, filename: "photo1-leon_marchand.jpg", content_type: "image/jpg")
  file2 = URI.parse("https://cloudfront-eu-central-1.images.arcpublishing.com/leparisien/DHKKXAPJ25CMLJYFWXBSFXXVX4.jpg").open
  leon_marchand.photos.attach(io: file2, filename: "photo2-leon_marchand.jpg", content_type: "image/jpg")
  puts "photo attached to Léon Marchand"
else
  puts "celeb Léon Marchand not found"
end

celine_dion = Celebrity.find_by(name: "Céline Dion")
if celine_dion
  file1 = URI.parse("https://www.grazia.fr/wp-content/uploads/grazia/2022/11/shutterstock_1684932607-1-scaled.jpg").open
  celine_dion.photos.attach(io: file1, filename: "photo1-celine_dion.jpg", content_type: "image/jpg")
  file2 = URI.parse("https://cdn-elle.ladmedia.fr/var/plain_site/storage/images/people/style/trajectoire-mode/celine-dion-transformation/78904379-1-fre-FR/celine-dion-transformation.jpg").open
  celine_dion.photos.attach(io: file2, filename: "photo2-celine_dion.jpg", content_type: "image/jpg")
  puts "photo attached to Céline Dion"
else
  puts "celeb Céline Dion not found"
end

marine_le_pen = Celebrity.find_by(name: "Marine Le Pen")
if marine_le_pen
  file1 = URI.parse("https://laregledujeu.org/files/2013/10/marine-le-pen-extreme-droite.jpg").open
  marine_le_pen.photos.attach(io: file1, filename: "photo1-marine_le_pen.jpg", content_type: "image/jpg")
  file2 = URI.parse("http://img.20mn.fr/5oPSuSCkSPyXxOgM0rivyw/2048x1536-fit_marine-le-pen-le-22-mars-2015.jpg").open
  marine_le_pen.photos.attach(io: file2, filename: "photo2-marine_le_pen.jpg", content_type: "image/jpg")
  puts "photo attached to Marine Le Pen"
else
  puts "celeb Marine Le Pen not found"
end

puts "seeding finished"
