Team.delete_all
team1 = Team.create(name: "Rockets", color: "DarkOrchid", sport: "Lacrosse")
team2 = Team.create(name: "Slime Eels", color: "YellowGreen", sport: "Lacrosse")
team3 = Team.create(name: "Bad Muffins", color: "BlanchedAlmond", sport: "Cooking")

Player.delete_all
player1 = Player.create(name: "Bob", height: 70, sex: "M", nickname:"Thababo", skill: "Friendship", rating: 28, team: team1)
player2 = Player.create(name: "Robb", height: 70, sex: "M", nickname:"Thababo", skill: "Friendship", rating: 28, team: team1)
player3 = Player.create(name: "Clobb", height: 70, sex: "M", nickname:"Thababo", skill: "Friendship", rating: 28, team: team1)
player4 = Player.create(name: "Stobb", height: 70, sex: "M", nickname:"Thababo", skill: "Friendship", rating: 28, team: team1)

