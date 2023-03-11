import UIKit

struct Team {
    let name: String
    let color: String
    let fans: Int
}

let allTeams =  [
                    Team(name: "Chelsea",       color: "Blue",   fans: 1538394),
                    Team(name: "Fenerbahce",    color: "Yellow", fans: 173494),
                    Team(name: "Manchester U.", color: "Red",    fans: 1231494),
                    Team(name: "Real Madrid",   color: "White",  fans: 1838494),
                    Team(name: "Galatasaray",   color: "Red",    fans: 193494),
                    Team(name: "Barcelona",     color: "Claret", fans: 1332494),
                    Team(name: "Roma",          color: "Orange", fans: 123594),
                    Team(name: "Dortmund",      color: "Yellow", fans: 111944)
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




