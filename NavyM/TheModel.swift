//
//  TheModel.swift
//  NavyM
//
//  Created by Agrawal,Abhijeet P on 2/27/18.
//  Copyright © 2018 Agrawal,Abhijeet P. All rights reserved.
//

import Foundation

struct Airline {
    
    var name:String
    var profits:Double
    var homebase:String
    var numEmployees:Int
    var citiesFlown:[String]
    
    init(name:String, profits:Double,
         homebase:String, numEmployees:Int,
         citiesFlown:[String]){
        self.name = name
        self.profits = profits
        self.homebase = homebase
        self.numEmployees = numEmployees
        self.citiesFlown = citiesFlown
    }
}

struct FAA {
    
    static var airlines:[Airline] = [
        Airline(name: "United", profits: 25.0, homebase: "Chicago", numEmployees: 2500,
                citiesFlown:["New York", "Toronto", "London", "Paris"]),
        Airline(name: "Delta", profits: 50.0, homebase: "Atlanta", numEmployees: 3500,
                citiesFlown:["Cairo", "Tel Aviv", "Ankara", "Tokyo", "Beijing"]),
        Airline(name: "Jet Airways", profits: 87.50, homebase: "Mumbai", numEmployees: 3000,
                citiesFlown: ["Bangalore", "Colombo", "Chennai", "Budapest", "London"]),
        Airline(name: "Lufthansa", profits:75.0,homebase: "London",numEmployees:1000,
                citiesFlown:["Rome", "Munich", "Johannesburg"]),
        Airline(name: "Air Canada", profits: 315.0, homebase: "Ottawa", numEmployees: 500,
                citiesFlown: ["Toronto", "Vancouver", "Tokyo"])
    ]
    
    static func numAirlines()->Int {
        return airlines.count
    }
    
    static func airlineNum(_ index:Int) -> Airline {
        return airlines[index]
    }
    
    static func addNewAirline(_ airline:Airline){
        airlines.append(airline)
    }
}
