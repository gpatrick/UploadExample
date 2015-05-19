//: Playground - noun: a place where people can play

import UIKit

public class Car{
    private var color:String
    private var numberOfDoors:Int
    
    init(){
        color = "Red"
        numberOfDoors = 2
    }
    
    public func setColor(color:String){
        self.color = color
    }
    
    public func getColor() -> String{
        return color
    }
}


public class Dealership{
    private var parkingSpace1:Car
    private var parkingSpace2:Car
    
    init(){
        parkingSpace1 = Car()
        parkingSpace2 = Car()
    }
    
    public func parkCarInSpace(space:Int, carToPark:Car){
        if space == 1 {
            parkingSpace1 = carToPark
        }
        else {
            parkingSpace2 = carToPark
        }
    }
    
    public func getCarInSpace(space:Int) -> Car{
        var result = Car() //We'll change to nil later
        
        if space == 1 {
            result = parkingSpace1
        }
        else if space == 2 {
            result = parkingSpace2
        }
        
        return result
    }
    
}




var myCar = Car()
myCar.setColor("Blue")
myCar.getColor()

var fordDealership = Dealership()
fordDealership.parkCarInSpace(1, carToPark:myCar)


// Get color of car in space 1
let carInSpaceOne = fordDealership.getCarInSpace(1)
let color = carInSpaceOne.getColor()





