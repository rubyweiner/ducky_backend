User.destroy_all
Occupation.destroy_all
Profile.destroy_all

User.create([
  {email: "ruby@me.com", password: "pw"},
  {email: "emily@me.com", password: "pw"},
  {email: "ayana@me.com", password: "pw"}
  ])

Occupation.create([
  {title: "Student"},
  {title: "Employed"},
  {title: "Unemployed"}
  ])

Profile.create([
  {
    first_name: "Ruby",
    last_name: "Weiner",
    dob: "1996-07-09",
    bio: "Aspiring Web Developer - Founder of Ducky",
    profile_pic: "https://www.worldwideweirdholidays.com/wp-content/uploads/2016/01/national-rubber-ducky-day.jpg",
    cover_photo: "http://daytonducks.com/wp-content/uploads/2017/06/cropped-DSC6501-1.jpg",
    occupation_id: Occupation.find_by(title: "Student"),
    user: User.find_by(email: "ruby@me.com")
  },
  {
    first_name: "Emily",
    last_name: "Collins",
    dob: "1993-10-30",
    bio: "Founder /  Lead Developer of Hippo",
    profile_pic: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMaDPPn618gLjqQJHr-3jeiz_eBI-Kd4OM8ZyRpYfmR3aGxGldpg",
    cover_photo: "https://images.fineartamerica.com/images-medium-large-5/rubber-duck-pattern-li-or.jpg",
    occupation_id: Occupation.find_by(title: "Student"),
    user: User.find_by(email: "emily@me.com")
  },
  {
    first_name: "Ayana",
    last_name: "Cotton",
    dob: "1994-05-26",
    bio: "Founder / Lead Developer of CoMuse",
    profile_pic: "http://static1.squarespace.com/static/59698a7d29687fd47a2a7c52/599a2c9837c581a0f21a7030/5a21f156706fdd0394ccfd30/1517718413390/?format=1000w",
    cover_photo: "https://render.fineartamerica.com/images/rendered/search/print/images/artworkimages/medium/1/rose-colored-glasses-linda-apple.jpg",
    occupation_id: Occupation.find_by(title: "Student"),
    user: User.find_by(email: "ayana@me.com")
  }
  ])
