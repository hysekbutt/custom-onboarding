//
//  AppDelegate.swift
//  TravSoloAssessment
//
//  Created by Hazz Butt on 4/29/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
//        printNumbersMatchingConditions()
        return true
    }
    /*
     Loop this sequence 10 times:
     Randomly pick a number between 1 and 50, if the selection is even, keep picking new random numbers in the same range
     until it is odd and print out the square of that number. If the printed number is greater than 400 select another
     random number between 1 and 50 until you find one that is even and print this random number out.
     */
//    func printNumbersMatchingConditions() {
//        var min = Int.max
//        var max = Int.min
//        for _ in 0..<10 {
//            let oddRandomNumber = getOddRandomNumber()
//            let squareOfRandomNum = oddRandomNumber * oddRandomNumber
//            print("Square of selected Odd number within given range: ", squareOfRandomNum)
//
//            if squareOfRandomNum > 400 {
//                print("Even number within range: ", getEvenRandomNumber())
//            }
//        }
//    }
//
//    func getOddRandomNumber() -> Int {
//        var randomNumber = -1
//        repeat {
//            randomNumber = Int.random(in: 1...50)
//        } while randomNumber % 2 == 0
//        return randomNumber
//    }
//
//    func getEvenRandomNumber() -> Int {
//        var randomNumber = -1
//        repeat {
//            randomNumber = Int.random(in: 1...50)
//        } while randomNumber % 2 != 0
//        return randomNumber
//    }
//
//
//    func generateRandomNumber(min: Int, max: Int) -> Int {
//        let randomNum = Int(arc4random_uniform(UInt32(max) - UInt32(min)) + UInt32(min))
//        return randomNum
//    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

