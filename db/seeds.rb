User.destroy_all
Profile.destroy_all

User.create([
  {email: "ruby@me.com", password_digest: "pw", profile: Profile.find(1)}
  ])
