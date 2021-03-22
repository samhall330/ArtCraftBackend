### Users ###

sam = User.create(name:"Sam", username:"samhall", password:"abc123", profile_pic:"https://m.media-amazon.com/images/I/71XxpJV6iUL._SS500_.jpg", bio:"Amateur filmmaker and stand up comic.", phone:"918-857-0284")
jeff = User.create(name: "Jeff", username:"theDude", password:"abc123", profile_pic:"https://i.pinimg.com/originals/76/19/92/76199263c8d1bc961e93c5a0a987b732.png", bio:"Roadie for Metallica", phone:"323-804-9389")

### Specialties ###

video_editing = Specialty.create(user_id: 1, name: "video editing", pro_level: "Amateur")
audio = Specialty.create(user_id: 2, name: "audio", pro_level: "Semi-Professional")
acting = Specialty.create(user_id: 2, name: "acting", pro_level: "Professional")
### Equipment ###

camera_tripod = Equipment.create(user_id: 1, name: "Camera Tripod", equip_link: "https://www.amazon.com/AmazonBasics-60-Inch-Lightweight-Tripod-Bag/dp/B005KP473Q/ref=asc_df_B005KP473Q/?tag=hyprod-20&linkCode=df0&hvadid=167139312229&hvpos=&hvnetw=g&hvrand=5992561659332765815&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9026544&hvtargid=pla-124905856875&psc=1")
car = Equipment.create(user_id: 2, name: "Car", equip_link: "https://www.automobile-catalog.com/make/ford_usa/torino_usa_3gen_gran_torino/torino_usa_3gen_gran_sport_2-door_hardtop/1973.html")

### Software ###

adobe_premiere = Software.create(user_id: 1, name: "Adobe Premiere Pro", soft_link: "https://www.adobe.com/products/premiere.html?sdid=KKQOM&mv=search&ef_id=Cj0KCQjw0caCBhCIARIsAGAfuMy6tKVgd6i22EL3RtB1ojg7jkkszjNF6ztksUyH2Wd1Q8xNQ1DZDm8aAodSEALw_wcB:G:s&s_kwcid=AL!3085!3!383822106372!e!!g!!adobe%20premiere%20pro&gclid=Cj0KCQjw0caCBhCIARIsAGAfuMy6tKVgd6i22EL3RtB1ojg7jkkszjNF6ztksUyH2Wd1Q8xNQ1DZDm8aAodSEALw_wcB")

### Projects ###

short_film = Project.create(user_id: 1, title: "Gutterballs", project_type: "short film", location: "New York City", start_date: "May 1, 2021", duration: "3 weeks")
comedy = Project.create(user_id: 1, title: "Comedy Show", project_type: "comedy show", location: "New York City", start_date: "March 30, 2021", duration: "1 night")
art_show = Project.create(user_id: 1, title: "Mod Art Show", project_type: "art show", location: "New York City", start_date: "July 1st, 2021", duration: "1 week")

