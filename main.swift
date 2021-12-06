//
//  main.swift
//  bclock
//
//  Created by Amir on 04/12/2021.
//

import Foundation

var tophours = [String]()
var topminutes = [String]()
var topseconds = [String]()

print("Berlin Clock")

//Input Time

func mytime() -> Int{
//print  ("Enter it here")
let myinput = readLine()
let mynumber = Int(myinput!)
return mynumber!
}

// HOURS
func hoursconvert(enterhours hours:Int){
    let bighour:Int = hours/5
    var index:Int = bighour
    
    while index > 0{
        tophours.append("R")
        index = index - 1
    }
    
    var index2: Int = 4 - bighour
    while index2 > 0{
        tophours.append("O")
        index2 = index2 - 1
    }

}

func hoursconvert2(enterhours hours:Int){
    let bighour:Int = hours % 5
    var index:Int = bighour
    
    while index > 0{
        tophours.append("R")
        index = index - 1
    }
    
    var index2: Int = 4 - bighour
    while index2 > 0{
        tophours.append("O")
        index2 = index2 - 1
    }

}

//Minutes

func fiveminutesconver(enterminutes minutes:Int){
    let bigminute:Int = minutes / 5 // = 7
    var index:Int = bigminute //7
    var every3: Int = 1
    var count:Int = 0

    while index > 0{ //7
        if every3 % 3 == 0{
            topminutes.append("R")
        }
        else{
        topminutes.append("Y")
        }
        every3 = every3 + 1
        index = index - 1
    
        count = count + 1
    }
    
    var index2: Int = 11 - bigminute //4
    while index2 > 0{
        topminutes.append("O")
        index2 = index2 - 1
    }

}


func oneminuteconver(enterminutes minutes:Int){
    let bigminute:Int = minutes % 5 // = 7
    var index:Int = bigminute //7
    while index > 0{ //7
            topminutes.append("Y")
        index = index - 1
        }
    
    var index2: Int = 4 - bigminute //4
    while index2 > 0{
        topminutes.append("O")
        index2 = index2 - 1
    }
}

func secondscover(enterseconds seconds:Int){
    if seconds % 2 == 0{
        topseconds.append("Y")
    }
    else{
        topseconds.append("O")
    }
}


func hours(){
    print ("Enter hours:")
    hoursconvert(enterhours: mytime())
    hoursconvert2(enterhours: mytime())
    
}

func mins(){
    print ("Enter minutes:")
    fiveminutesconver(enterminutes: mytime())
    oneminuteconver(enterminutes: mytime())
}

func sec(){
    print ("Enter seconds:")
    secondscover(enterseconds: mytime())
}

func finalproduct(){
    var totaltime = [String]()
    hours()
    mins()
    sec()
    totaltime=topseconds + tophours + topminutes
    
    print (totaltime)
}

finalproduct()

