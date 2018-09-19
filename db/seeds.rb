User.destroy_all
Friendship.destroy_all
Skill.destroy_all
Education.destroy_all
Occupation.destroy_all


Occupation.create([
  {title: "Student"},
  {title: "Web Developer"},
  {title: "iOS Developer"},
  ])

User.create([
  { email: "ruby@ducky.com",
    pw: "pw",
    first_name: "Ruby",
    last_name: "Weiner",
    bio: "Full-Stack Web Developer - Recent Graduate of FlatIron School",
    profile_pic: "https://pbs.twimg.com/profile_images/378800000529980137/5c27bdc4efce5e0777d93965157b2078_400x400.jpeg",
    cover_photo: "https://payload495.cargocollective.com/1/2/68904/12201373/terrarium_hoeckel-1_640.jpg",
    dob: '1996-07-09',
    occupation: Occupation.find_by(title: "Student")
  },
  { email: "ayana@ducky.com",
    pw: "pw",
    first_name: "Ayana",
    last_name: "Cotton",
    bio: "Full-Stack Web Developer - Designer - Recent Graduate of FlatIron School",
    profile_pic: "https://static01.nyt.com/images/2011/11/13/magazine/13duck/13duck-jumbo.jpg",
    cover_photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Rubber_duckies_So_many_ducks.jpg/1200px-Rubber_duckies_So_many_ducks.jpg",
    dob: '1993-05-31',
    occupation: Occupation.find_by(title: "Student")
  }
  ])

Friendship.create([
  { user: User.find_by(first_name: "Ruby"),
    friend: User.find_by(first_name: "Ayana")
  }
  ])

Skill.create([
  {name: "Ruby", user: User.find_by(first_name: "Ruby")},
  {name: "Ruby", user: User.find_by(first_name: "Ayana")},
  {name: "Rails", user: User.find_by(first_name: "Ruby")},
  {name: "Rails", user: User.find_by(first_name: "Ayana")},
  {name: "Javascript", user: User.find_by(first_name: "Ruby")},
  {name: "Javascript", user: User.find_by(first_name: "Ayana")},
  {name: "React", user: User.find_by(first_name: "Ruby")},
  {name: "React", user: User.find_by(first_name: "Ayana")}
  ])

Education.create([
  {name: "FlatIron School", degree: "N/A", user: User.find_by(first_name: "Ruby")},
  {name: "FlatIron School", degree: "N/A", user: User.find_by(first_name: "Ayana")}
  ])
