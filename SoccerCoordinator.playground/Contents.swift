//: Playground - noun: a place where people can play

import UIKit

// Array of Dictionaries


var soccerPlayers: [[String: String]] = [
    [
        "name": "Joe Smith",
        "height": "42",
        "experience": "YES",
        "guardian": "Jim and Jan Smith"
    ],
    [
        "name": "Jill Tanner",
        "height": "36",
        "experience": "YES",
        "guardian": "Clara Tanner"
    ],
    [
        "name": "Bill Bon",
        "height": "43",
        "experience": "YES",
        "guardian": "Sara and Jenny Bon"
    ],
    [
        "name": "Eva Gordon",
        "height": "45",
        "experience": "NO",
        "guardian": "Wendy and Mike Gordon"
    ],
    [
        "name": "Matt Gill",
        "height": "40",
        "experience": "NO",
        "guardian": "Charles and Sylvia Gill"
    ],
    [
        "name": "Kimmy Stein",
        "height": "41",
        "experience": "NO",
        "guardian": "Bill and Hillary Stein"
    ],
    [
        "name": "Sammy Adams",
        "height": "45",
        "experience": "NO",
        "guardian": "Jeff Adams"
    ],
    [
        "name": "Karl Saygan",
        "height": "42",
        "experience": "YES",
        "guardian": "Heather Bledsoe"
    ],
    [
        "name": "Suzane Greenberg",
        "height": "44",
        "experience": "YES",
        "guardian": "Henrietta Dumas"
    ],
    [
        "name": "Sal Dali",
        "height": "41",
        "experience": "NO",
        "guardian": "Gala Dali"
    ],
    [
        "name": "Joe Kavalier",
        "height": "39",
        "experience": "NO",
        "guardian": "Sam and Elaine Kavalier"
    ],
    [
        "name": "Ben Finkelstein",
        "height": "44",
        "experience": "NO",
        "guardian": "Aaron and Jill Finkelstein"
    ],
    [
        "name": "Diego Soto",
        "height": "41",
        "experience": "YES",
        "guardian": "Robin and Sarika Soto"
    ],
    [
        "name": "Chloe Alaska",
        "height": "47",
        "experience": "NO",
        "guardian": "David and Jamie Alaska"
    ],
    [
        "name": "Arnold Willis",
        "height": "43",
        "experience": "NO",
        "guardian": "Claire Willis"
    ],
    [
        "name": "Phillip Helm",
        "height": "44",
        "experience": "YES",
        "guardian": "Thomas Helm and Eva Jones"
    ],
    [
        "name": "Les Clay",
        "height": "42",
        "experience": "YES",
        "guardian": "WyNonna Brown"
    ],
    [
        "name": "Herschel Krustofski",
        "height": "45",
        "experience": "YES",
        "guardian": "Hyman and Rachel Krustofski"
    ]
]

//Assign soccer players to teams - Empty team collections
var sharks: [[String: String]] = []
var dragons: [[String: String]] = []
var raptors: [[String: String]] = []

//Divide soccer players by experience
var playersWithExperience: [[String: String]] = []
for soccerPlayer in soccerPlayers {
    if soccerPlayer ["experience"]  == "YES" {
        playersWithExperience.append(soccerPlayer)
    }
}

var playersWithoutExperience: [[String: String]] = []
for soccerPlayer in soccerPlayers {
    if soccerPlayer ["experience"] == "NO"{
        playersWithoutExperience.append(soccerPlayer)
    }
}




//Reuse code by creating a function to divide soccer players by experience
func assignTeams() {
    for soccerPlayer in soccerPlayers {
        if soccerPlayer ["experience"] == "YES"{
            playersWithExperience.append(soccerPlayer)
        }else{
            playersWithoutExperience.append(soccerPlayer)
        }
    }
    
    
//Assign soccer players to teams
    //empty array for experienced soccer players
    var numberInArray = 0
    
    var experiencedPlayers = playersWithExperience.count
    while experiencedPlayers > 1 {
        
        sharks.append(playersWithExperience[numberInArray])
        numberInArray += 1
        experiencedPlayers -= 1
        
        dragons.append(playersWithExperience[numberInArray])
        numberInArray += 1
        experiencedPlayers -= 1
        
        raptors.append(playersWithExperience[numberInArray])
        numberInArray += 1
        experiencedPlayers -= 1
    }
    
    //empty array for inexperienced soccer players
    var inexperiencedArray = 0
    
    var inexperiencedCount = playersWithoutExperience.count
    while inexperiencedCount > 1 {
        
        raptors.append(playersWithoutExperience[inexperiencedArray])
        inexperiencedArray += 1
        inexperiencedCount -= 1
        
        dragons.append(playersWithoutExperience[inexperiencedArray])
        inexperiencedArray += 1
        inexperiencedCount -= 1
        
        sharks.append(playersWithoutExperience[inexperiencedArray])
        inexperiencedArray += 1
        inexperiencedCount -= 1
    }
    
    //Soccer Player roster printout
    
    func printRoster(team: [[String: String]]) {
        for soccerPlayer in team {
            let playerName = soccerPlayer["name"]!
            print(playerName)
        }
    }
    printRoster(team: sharks)
    print("Sharks player count: \(sharks.count)\n")
    printRoster(team: dragons)
    print("Dragons player count: \(dragons.count)\n")
    printRoster(team: raptors)
    print("Raptors player count: \(raptors.count)\n")
    
    
  

    
    
    //Print message to guardians
    let sharksFirstPractice = "March 17th, 3pm"
    let sharksName = "Sharks"
    let dragonsFirstPractice = "March 17th, 1pm"
    let dragonsName = "Dragons"
    let raptorsFirstPractice = "March 18th, 1pm"
    let raptorsName = "Raptors"
    
    func printMessages(team: [[String: String]], teamName: String, firstPractice: String) {
        for player in team {
            let guardians = player["guardian"]!
            let playerName = player["name"]!
            
            print("Dear \(guardians)\n\nThe \(teamName) would like to welcome your child \(playerName) to the team. The \(teamName) first practice will be on \(firstPractice). Good luck!\n\n\nBrandon Mahoney\nSoccer League Coordinator\n\n\n")
        }
    }
    
    printMessages(team: sharks, teamName: sharksName, firstPractice: sharksFirstPractice)
    printMessages(team: dragons, teamName: dragonsName, firstPractice: dragonsFirstPractice)
    printMessages(team: raptors, teamName: raptorsName, firstPractice: raptorsFirstPractice)
}

assignTeams()

