//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    /*
     
     write your function here
     
     */
    
    func solveTrivia (statesAndCapitals: [String:String]) -> String {
        
        for (state, capital) in statesAndCapitals {
            
            var characterCount = 0
            
            for stateCharacter in state.lowercaseString.characters {
                
                let correctState = String(stateCharacter)
                
                if capital.containsString(correctState) {
                    break;
                    
                }
                
                characterCount += 1
            }
            
            if characterCount == state.characters.count {
                
                print("*****\n\n \(state) is the only state whose capital contains none of the characters as the state name. \n\n******")
                return state
            }
        }
        
        return "state not found"
    }

}

