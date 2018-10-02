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
  {email: "alvaro@me.com", password: "pw"}
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
    profile_pic: "https://amsterdamduckstore.com/wp-content/uploads/2016/11/Fitness-Rubber-Duck-left-slant-Amsterdam-Duck-Store-2.jpg",
    cover_photo: "https://payload.cargocollective.com/1/2/68904/1152293/distance_beth_hoeckel_470.jpg",
    occupation: "Student",
    education: "FlatIron School",
    user: User.find_by(email: "alvaro@me.com")
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
    {user: User.find_by(email: "alvaro@me.com"), skill: Skill.find_by(name: "Python")}
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
      host: User.find_by(email: "ruby@me.com")
    },
    { name: "Ruby on Rails",
      location: "625 H St, NE",
      description: "How to use Rails with Ruby",
      date: "2018-10-21",
      time: "11:00:00",
      cover_photo: "http://krailinc.com/wp-content/uploads/2017/08/railroad-tracks.jpg",
      host: User.find_by(email: "ruby@me.com")
    }
    ])

    Userevent.create([
      {invitee_id: User.find_by(email: "ayana@me.com").id, event: Event.find_by(name: "React Review")},
      {invitee_id: User.find_by(email: "emily@me.com").id, event: Event.find_by(name: "Ruby on Rails")},
      {invitee_id: User.find_by(email: "alvaro@me.com").id, event: Event.find_by(name: "Ruby on Rails")},
      {invitee_id: User.find_by(email: "emily@me.com").id, event: Event.find_by(name: "Ruby on Rails")}
    ])
