import UIKit

struct Team {
    let name: String
    let color: String
    let fans: Int // Billion
    let budget: Int // Billion Euro
}

let allTeams =  [
                    Team(name: "Chelsea",       color: "Blue",   fans: 60,  budget: 120),
                    Team(name: "Fenerbahce",    color: "Yellow", fans: 45,  budget: 43),
                    Team(name: "Manchester U.", color: "Red",    fans: 64,  budget: 200),
                    Team(name: "Real Madrid",   color: "White",  fans: 102, budget: 384),
                    Team(name: "Galatasaray",   color: "Red",    fans: 43,  budget: 84),
                    Team(name: "Barcelona",     color: "Claret", fans: 109, budget: 192),
                    Team(name: "Roma",          color: "Orange", fans: 56,  budget: 85),
                    Team(name: "Dortmund",      color: "Yellow", fans: 42,  budget: 78)
                ]

// MARK: - FILTER

// Long Way without using filter functions
var redColorTeams = [Team]()
for i in allTeams {
    if i.color == "Red"{
        redColorTeams.append(i)
    }
}

// Shorthand Syntax using filter
let teamHasRedColor = allTeams.filter{ $0.color == "Red" } // $0.color == "Red" -> This condition returns true or false
/*
 
 teamHasRedColor has:
 Team(name: "Manchester U.", color: "Red", fans: 1231494),
 Team(name: "Galatasaray", color: "Red", fans: 193494)
 
*/

let teamHasMoreThanBillionFans = allTeams.filter { $0.fans > 1000000 } // $0.fans > 1000000 -> This condition returns true or false

/*

teamHasMoreThanBillionFans has:
Team(name: "Chelsea", color: "Blue", fans: 1538394)
Team(name: "Manchester U.", color: "Red", fans: 1231494)
Team(name: "Real Madrid", color: "White", fans: 1838494)
Team(name: "Barcelona", color: "Claret", fans: 1332494)
 
*/

// MARK: - MAP

let updatedBudget = allTeams.map({$0.budget + 15})
print(updatedBudget)
// Output-> [135, 58, 215, 399, 99, 207, 100, 93]



