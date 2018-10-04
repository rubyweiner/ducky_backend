User.destroy_all
Profile.destroy_all
Skill.destroy_all
Userskill.destroy_all
Followship.destroy_all
Event.destroy_all
Userevent.destroy_all

User.create([
  {email: "ruby@me.com", password: "pw"},
  {email: "emily@me.com", password: "pw"},
  {email: "ayana@me.com", password: "pw"},
  {email: "alvaro@me.com", password: "pw"},
  {email: "andres@me.com", password: "pw"},
  {email: "ryan@me.com", password: "pw"},
  {email: "josh@me.com", password: "pw"}
  ])

Profile.create([
  {
    first_name: "Ruby",
    last_name: "Weiner",
    dob: "1996-07-09",
    hometown: "Miami Beach, Florida",
    current_location: "Washington, D.C.",
    github: "https://github.com/rubyweiner",
    bio: "Aspiring Web Developer - Founder of Ducky",
    profile_pic: "https://pbs.twimg.com/profile_images/378800000529980137/5c27bdc4efce5e0777d93965157b2078_400x400.jpeg",
    cover_photo: "https://payload495.cargocollective.com/1/2/68904/12201373/terrarium_hoeckel-1_640.jpg",
    occupation: "Student",
    education: "FlatIron School",
    user: User.find_by(email: "ruby@me.com")
  },
  {
    first_name: "Emily",
    last_name: "Collins",
    dob: "1993-10-30",
    hometown: "Colorado Springs, Colorado",
    current_location: "Washington, D.C.",
    github: "https://github.com/cemilycollins",
    bio: "Founder /  Lead Developer of Hippo",
    profile_pic: "https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/16938575_10155192865689653_1626084982365907535_n.jpg?_nc_cat=109&oh=69ed9578959bd589b8fdfa8a75a1a5f9&oe=5C61609F",
    cover_photo: "https://payload.cargocollective.com/1/2/68904/1152293/glacial.jpg",
    occupation: "Student",
    education: "FlatIron School",
    user: User.find_by(email: "emily@me.com")
  },
  {
    first_name: "Ayana",
    last_name: "Cotton",
    dob: "1994-05-26",
    hometown: "Washington, D.C.",
    current_location: "Washington, D.C.",
    github: "https://github.com/AyanaZaire",
    bio: "Founder / Lead Developer of CoMuse",
    profile_pic: "https://scontent-ams3-1.cdninstagram.com/vp/27fda9dc8dc5df38e87c55d3c285686e/5C04068C/t51.2885-15/e35/33373250_2147783062122239_8032075050997776384_n.jpg?se=8&ig_cache_key=MTc5NDMyNDczMTAwOTYxNTg0NQ%3D%3D.2",
    cover_photo: "https://payload.cargocollective.com/1/2/68904/1152293/5948882195_b232151a8e_z.jpg",
    occupation: "Student",
    education: "FlatIron School",
    user: User.find_by(email: "ayana@me.com")
  },
  {
    first_name: "Alvaro",
    last_name: "De La Torre",
    dob: "1989-06-22",
    hometown: "Lima, Peru",
    current_location: "Washington, D.C.",
    github: "https://github.com/alvarodltp",
    bio: "Founder / Lead Developer of NUBOD",
    profile_pic: "https://miro.medium.com/fit/c/240/240/1*Qfjn77DbLVHFl9XhhhmywA.png",
    cover_photo: "https://payload.cargocollective.com/1/2/68904/1152293/distance_beth_hoeckel_470.jpg",
    occupation: "Student",
    education: "FlatIron School",
    user: User.find_by(email: "alvaro@me.com")
  },
  {
    first_name: "Andres",
    last_name: "Manco",
    dob: "1992-05-04",
    hometown: "Caracas, Venezuela",
    current_location: "Washington, D.C.",
    github: "https://github.com/andresmanco",
    bio: "FlatIron Alum - Web Developer",
    profile_pic: "https://hackmag.com/wp-content/uploads/2015/12/rubber-ducky.jpg",
    cover_photo: "https://media2.s-nbcnews.com/i/newscms/2018_13/1328286/rubber-ducky-today-tease-180329_56ffccc8d6a5cdc1ce25d5f00fcca7e6.jpg",
    occupation: "Student",
    education: "FlatIron School",
    user: User.find_by(email: "andres@me.com")
  },
  {
    first_name: "Ryan",
    last_name: "Chan",
    dob: "1991-02-14",
    hometown: "Stoughton, Massachusetts",
    current_location: "Washington, D.C.",
    github: "https://github.com/ryanchan",
    bio: "Motorcycle Enthusiast",
    profile_pic: "https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/36177165_10156340047595833_1679274969411878912_n.jpg?_nc_cat=104&oh=470255fec9fecfe84ad4ab983c8c42dd&oe=5C1AF533",
    cover_photo: "http://www.delinleedelovely.com/blog/wp-content/uploads/2013/04/ancients_hoeckel.jpg",
    occupation: "Student",
    education: "FlatIron School",
    user: User.find_by(email: "ryan@me.com")
  },
  {
    first_name: "Josh",
    last_name: "Miller",
    dob: "1990-01-05",
    hometown: "Stoughton, Massachusetts",
    current_location: "Washington, D.C.",
    github: "https://github.com/joshmiller",
    bio: "Web Developer / FlatIron Grad",
    profile_pic: "https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/14657377_10103302267137059_6626768481327992110_n.jpg?_nc_cat=108&oh=782f0c2496248a3ba73c782b0325c639&oe=5C5CA7A1",
    cover_photo: "http://www.nicolevalentinedon.com/wp-content/uploads/2012/03/indiansummer.jpg",
    occupation: "Student",
    education: "FlatIron School",
    user: User.find_by(email: "josh@me.com")
  }
  ])

  Skill.create([
    {name: "Ruby"},
    {name: "Rails"},
    {name: "JavaScript"},
    {name: "React"},
    {name: "Redux"},
    {name: "Sinatra"},
    {name: "Java"},
    {name: "C Programming"},
    {name: "Swift"},
    {name: "Data Science"},
    {name: "Node.js"},
    {name: "Statistics"},
    {name: "Python"},
    {name: "SQL"},
    {name: "Machine Learning"},
    {name: "R"}
  ])

  Userskill.create([
    {user: User.find_by(email: "ruby@me.com"), skill: Skill.find_by(name: "Ruby")},
    {user: User.find_by(email: "ruby@me.com"), skill: Skill.find_by(name: "Rails")},
    {user: User.find_by(email: "ruby@me.com"), skill: Skill.find_by(name: "JavaScript")},
    {user: User.find_by(email: "ruby@me.com"), skill: Skill.find_by(name: "React")},
    {user: User.find_by(email: "ruby@me.com"), skill: Skill.find_by(name: "Redux")},

    {user: User.find_by(email: "emily@me.com"), skill: Skill.find_by(name: "Ruby")},
    {user: User.find_by(email: "emily@me.com"), skill: Skill.find_by(name: "Rails")},
    {user: User.find_by(email: "emily@me.com"), skill: Skill.find_by(name: "JavaScript")},
    {user: User.find_by(email: "emily@me.com"), skill: Skill.find_by(name: "React")},
    {user: User.find_by(email: "emily@me.com"), skill: Skill.find_by(name: "Redux")},

    {user: User.find_by(email: "ayana@me.com"), skill: Skill.find_by(name: "Ruby")},
    {user: User.find_by(email: "ayana@me.com"), skill: Skill.find_by(name: "Rails")},
    {user: User.find_by(email: "ayana@me.com"), skill: Skill.find_by(name: "JavaScript")},
    {user: User.find_by(email: "ayana@me.com"), skill: Skill.find_by(name: "React")},
    {user: User.find_by(email: "ayana@me.com"), skill: Skill.find_by(name: "Redux")},

    {user: User.find_by(email: "alvaro@me.com"), skill: Skill.find_by(name: "Ruby")},
    {user: User.find_by(email: "alvaro@me.com"), skill: Skill.find_by(name: "Javascript")},
    {user: User.find_by(email: "alvaro@me.com"), skill: Skill.find_by(name: "Python")},
    {user: User.find_by(email: "alvaro@me.com"), skill: Skill.find_by(name: "SQL")},
    {user: User.find_by(email: "alvaro@me.com"), skill: Skill.find_by(name: "C Programming")},


    {user: User.find_by(email: "andres@me.com"), skill: Skill.find_by(name: "Ruby")},
    {user: User.find_by(email: "andres@me.com"), skill: Skill.find_by(name: "R")},
    {user: User.find_by(email: "andres@me.com"), skill: Skill.find_by(name: "JavaScript")},
    {user: User.find_by(email: "andres@me.com"), skill: Skill.find_by(name: "Python")},
    {user: User.find_by(email: "andres@me.com"), skill: Skill.find_by(name: "Redux")},


    {user: User.find_by(email: "ryan@me.com"), skill: Skill.find_by(name: "Java")},
    {user: User.find_by(email: "ryan@me.com"), skill: Skill.find_by(name: "Rails")},
    {user: User.find_by(email: "ryan@me.com"), skill: Skill.find_by(name: "JavaScript")},
    {user: User.find_by(email: "ryan@me.com"), skill: Skill.find_by(name: "React")},
    {user: User.find_by(email: "ryan@me.com"), skill: Skill.find_by(name: "Swift")},


    {user: User.find_by(email: "josh@me.com"), skill: Skill.find_by(name: "Swift")},
    {user: User.find_by(email: "josh@me.com"), skill: Skill.find_by(name: "Rails")},
    {user: User.find_by(email: "josh@me.com"), skill: Skill.find_by(name: "JavaScript")},
    {user: User.find_by(email: "josh@me.com"), skill: Skill.find_by(name: "Java")},
    {user: User.find_by(email: "josh@me.com"), skill: Skill.find_by(name: "R")},
  ])

  Followship.create([
    {user: User.find_by(email: "ruby@me.com"), follower: User.find_by(email: "ayana@me.com")},
    {user: User.find_by(email: "ayana@me.com"), follower: User.find_by(email: "ruby@me.com")},
    {user: User.find_by(email: "ayana@me.com"), follower: User.find_by(email: "emily@me.com")}
    ])

  Event.create([
    { name: "React Review",
      location: "Wework White House",
      description: "Quick review of beginner's React",
      date: "2018-10-30",
      time: "12:30:00",
      cover_photo: "https://cdn-images-1.medium.com/max/1800/1*HSisLuifMO6KbLfPOKtLow.jpeg",
      host: User.find_by(email: "ayana@me.com")
    },
    { name: "Ruby on Rails",
      location: "625 H St, NE",
      description: "How to use Rails with Ruby",
      date: "2018-10-21",
      time: "11:00:00",
      cover_photo: "http://krailinc.com/wp-content/uploads/2017/08/railroad-tracks.jpg",
      host: User.find_by(email: "emily@me.com")
    },
    { name: "Science Fair",
      location: "Wework White House",
      description: "Come see all our hard work on display!",
      date: "2018-10-04",
      time: "11:00:00",
      cover_photo: "https://d1gx29cv2r2f1z.cloudfront.net/wp-content/uploads/sites/11/2018/02/28213622/Science-Fair.jpg",
      host: User.find_by(email: "ruby@me.com")
    },
    { name: "Graduation",
      location: "Wework White House",
      description: "${} graduates......",
      date: "2018-10-05",
      time: "09:00:00",
      cover_photo: "http://4.bp.blogspot.com/-OM6o7cPcIZk/T6MGE-NAW7I/AAAAAAAAF4s/MBRqw0Sdvtw/s1600/duck+1.jpg",
      host: User.find_by(email: "ruby@me.com")
    }
    ])

    Userevent.create([
      {invitee_id: User.find_by(email: "ayana@me.com").id, event: Event.find_by(name: "React Review")},
      {invitee_id: User.find_by(email: "emily@me.com").id, event: Event.find_by(name: "Ruby on Rails")},
      {invitee_id: User.find_by(email: "alvaro@me.com").id, event: Event.find_by(name: "Ruby on Rails")},
      {invitee_id: User.find_by(email: "emily@me.com").id, event: Event.find_by(name: "Ruby on Rails")},
      {invitee_id: User.find_by(email: "emily@me.com").id, event: Event.find_by(name: "Graduation")},
      {invitee_id: User.find_by(email: "ayana@me.com").id, event: Event.find_by(name: "Graduation")},
      {invitee_id: User.find_by(email: "ryan@me.com").id, event: Event.find_by(name: "Graduation")},
      {invitee_id: User.find_by(email: "alvaro@me.com").id, event: Event.find_by(name: "Graduation")},
      {invitee_id: User.find_by(email: "andres@me.com").id, event: Event.find_by(name: "Graduation")},
      {invitee_id: User.find_by(email: "josh@me.com").id, event: Event.find_by(name: "Graduation")},
      {invitee_id: User.find_by(email: "emily@me.com").id, event: Event.find_by(name: "Science Fair")},
      {invitee_id: User.find_by(email: "ayana@me.com").id, event: Event.find_by(name: "Science Fair")},
      {invitee_id: User.find_by(email: "ryan@me.com").id, event: Event.find_by(name: "Science Fair")},
      {invitee_id: User.find_by(email: "alvaro@me.com").id, event: Event.find_by(name: "Science Fair")},
      {invitee_id: User.find_by(email: "andres@me.com").id, event: Event.find_by(name: "Science Fair")},
      {invitee_id: User.find_by(email: "josh@me.com").id, event: Event.find_by(name: "Science Fair")}
    ])
