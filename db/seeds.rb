### Users ###

sam = User.create(name:"Sam Hall", username:"samhall", password:"abc123", profile_pic:"https://media-exp1.licdn.com/dms/image/C5603AQFmhFgE4_e2CQ/profile-displayphoto-shrink_800_800/0/1616696451214?e=1622678400&v=beta&t=4BMmp2XZYRrECfGZHmHJHRfx0ZgGNCsnYcib43epl_s", bio: "Amateur filmmaker and stand up comic!!!", phone:"918-857-0284")
jeff = User.create(name: "Jeff Lebowski", username:"theDude", password:"abc123", profile_pic:"https://media.istockphoto.com/photos/getting-the-right-shots-picture-id1081932226?k=6&m=1081932226&s=612x612&w=0&h=-ytrk_KJemf1M9eRM0cP1EoIVgM040KDMBTAwNAXzL0=", bio:"Roadie for Metallica", phone:"323-804-9389")
katherine = User.create(name: "Katherine H", username: "kat", password: "abc123", profile_pic: "https://static3.bigstockphoto.com/6/0/2/large1500/206988358.jpg", bio: "Painting is my life!", phone: "555-555-5555")
jeremy = User.create(name: "Jeremy Smith", username: "jerm", password: "abc123", profile_pic: "https://cdn7.dissolve.com/p/D985_84_569/D985_84_569_1200.jpg", bio: "Book me for your audio and recording needs!", phone: "323-333-3333")

### Specialties ###

video_editing = Specialty.create(user_id: 1, name: "video editing", pro_level: "Amateur")
audio = Specialty.create(user_id: 2, name: "audio", pro_level: "Semi-Professional")
audio_recording = Specialty.create(user_id: 4, name: "audio recording", pro_level: "Professional")
acting = Specialty.create(user_id: 2, name: "acting", pro_level: "Professional")
### Equipment ###

camera_tripod = Equipment.create(user_id: 1, name: "camera tripod", equip_link: "https://www.amazon.com/AmazonBasics-60-Inch-Lightweight-Tripod-Bag/dp/B005KP473Q/ref=asc_df_B005KP473Q/?tag=hyprod-20&linkCode=df0&hvadid=167139312229&hvpos=&hvnetw=g&hvrand=5992561659332765815&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9026544&hvtargid=pla-124905856875&psc=1")
car = Equipment.create(user_id: 2, name: "car", equip_link: "https://www.automobile-catalog.com/make/ford_usa/torino_usa_3gen_gran_torino/torino_usa_3gen_gran_sport_2-door_hardtop/1973.html")
recording_studio = Equipment.create(user_id: 4, name: "recording studio", equip_link: "https://www.metrosonic.net/")
sound_board = Equipment.create(user_id: 4, name: "sound board", equip_link: "https://www.amazon.com/Akai-Professional-MPD218-Controller-Software/dp/B0116X17JW/ref=asc_df_B0116X17JW/?tag=hyprod-20&linkCode=df0&hvadid=242054769560&hvpos=&hvnetw=g&hvrand=15390268034747638286&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9061107&hvtargid=pla-404286153279&psc=1")
easel = Equipment.create(user_id: 3, name: "easel", equip_link: "https://www.uline.com/Product/Detail/H-1450BL/Boards-Easels/Aluminum-Telescoping-Easel-Black?pricode=WA9206&gadtype=pla&id=H-1450BL&gclid=Cj0KCQjw9YWDBhDyARIsADt6sGaRU0vTu5MyJ0B_4_z8tUwSVW-4-PRQnvsbRb98xacRwW_kEs-MXRgaAlqOEALw_wcB&gclsrc=aw.ds")
### Software ###

adobe_premiere = Software.create(user_id: 1, name: "Adobe Premiere Pro", soft_link: "https://www.adobe.com/products/premiere.html?sdid=KKQOM&mv=search&ef_id=Cj0KCQjw0caCBhCIARIsAGAfuMy6tKVgd6i22EL3RtB1ojg7jkkszjNF6ztksUyH2Wd1Q8xNQ1DZDm8aAodSEALw_wcB:G:s&s_kwcid=AL!3085!3!383822106372!e!!g!!adobe%20premiere%20pro&gclid=Cj0KCQjw0caCBhCIARIsAGAfuMy6tKVgd6i22EL3RtB1ojg7jkkszjNF6ztksUyH2Wd1Q8xNQ1DZDm8aAodSEALw_wcB")
adobe_audition = Software.create(user_id: 4, name: "Adobe Audition", soft_link: "https://www.adobe.com/products/audition.html?sdid=KKQPG&mv=search&ef_id=Cj0KCQjw9YWDBhDyARIsADt6sGatBqypcqqIZGOc-1ETVLrwpmaFMylQcGFhG008-pkdkqMhS2St35QaAh1CEALw_wcB:G:s&s_kwcid=AL!3085!3!379243313516!e!!g!!adobe%20audition&gclid=Cj0KCQjw9YWDBhDyARIsADt6sGatBqypcqqIZGOc-1ETVLrwpmaFMylQcGFhG008-pkdkqMhS2St35QaAh1CEALw_wcB")

### Projects ###

short_film = Project.create(user_id: 1, title: "Short Film", project_type: "short film", location: "New York City", start_date: "May 1, 2021", duration: "3 weeks")
comedy = Project.create(user_id: 1, title: "Comedy Show", project_type: "comedy show", location: "New York City", start_date: "March 30, 2021", duration: "1 night")
art_show = Project.create(user_id: 1, title: "Mod Art Show", project_type: "art show", location: "New York City", start_date: "July 1st, 2021", duration: "1 week")

