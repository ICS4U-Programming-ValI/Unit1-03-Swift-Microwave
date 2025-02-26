//
//  Microwave.swift
//
//  Created by Val I on 2025-02-26.
//  Version 1.0
//  Copyright (c) 2025 Val I. All rights reserved.
//
//  The Microwave program calculating how long it takes
//  to microwave 1,2,or 3 items of soup, pizza or subs.
//

import Foundation

enum InputError: Error {
    case invalidNumber
}

print("Hi! We will be calculating how long it takes to")
print("microwave 1,2,or 3 items of soup, pizza or subs.")
print("What food will you like to calculate?")

// Getting constants
let SUB_TIME_SECS = 60
let PIZZA_TIME_SECS = 45
let SOUP_TIME_SECS = 105
let TWO_ITEMS_MULTIPLE = 1.5
let THREE_ITEMS_MULTIPLE = 2
let MINUTE_IN_SECS = 60

// Get item from user
print("What food will you like to calculate? (sub, pizza, soup)")
let item = readLine()!.lowercased()

// Check if item is valid
if item == "sub" || item == "pizza" || item == "soup" {
    // Get item amount
    print("How many? 1, 2, or 3")
    do{

    
    guard let itemAmountStr = readLine() else {
        throw InputError.invalidNumber
    }
        // Try to convert itemAmount to Int
        let itemAmountInt = Int(itemAmountStr) 
        var minutes = 0
        var seconds = 0

        // Calculate time based on item and amount
        if itemAmountInt == 1 && item == "sub" {
            minutes = SUB_TIME_SECS / MINUTE_IN_SECS
            seconds = SUB_TIME_SECS % MINUTE_IN_SECS
            print("It will take \(minutes) minutes and \(seconds) seconds")
        } else if itemAmountInt == 2 && item == "sub" {
            let newTime = Int(Double(SUB_TIME_SECS) * TWO_ITEMS_MULTIPLE)
            minutes = newTime / MINUTE_IN_SECS
            seconds = newTime % MINUTE_IN_SECS
            print("It will take \(minutes) minutes and \(seconds) seconds")
        } else if itemAmountInt == 3 && item == "sub" {
            let newTime = SUB_TIME_SECS * THREE_ITEMS_MULTIPLE
            minutes = newTime / MINUTE_IN_SECS
            seconds = newTime % MINUTE_IN_SECS
            print("It will take \(minutes) minutes and \(seconds) seconds")
        } else if itemAmountInt == 1 && item == "pizza" {
            minutes = PIZZA_TIME_SECS / MINUTE_IN_SECS
            seconds = PIZZA_TIME_SECS % MINUTE_IN_SECS
            print("It will take \(minutes) minutes and \(seconds) seconds")
        } else if itemAmountInt == 2 && item == "pizza" {
            let newTime = Int(Double(PIZZA_TIME_SECS) * TWO_ITEMS_MULTIPLE)
            minutes = newTime / MINUTE_IN_SECS
            seconds = newTime % MINUTE_IN_SECS
            print("It will take \(minutes) minutes and \(seconds) seconds")
        } else if itemAmountInt == 3 && item == "pizza" {
            let newTime = PIZZA_TIME_SECS * THREE_ITEMS_MULTIPLE
            minutes = newTime / MINUTE_IN_SECS
            seconds = newTime % MINUTE_IN_SECS
            print("It will take \(minutes) minutes and \(seconds) seconds")
        } else if itemAmountInt == 1 && item == "soup" {
            minutes = SOUP_TIME_SECS / MINUTE_IN_SECS
            seconds = SOUP_TIME_SECS % MINUTE_IN_SECS
            print("It will take \(minutes) minutes and \(seconds) seconds")
        } else if itemAmountInt == 2 && item == "soup" {
            let newTime = Int(Double(SOUP_TIME_SECS) * TWO_ITEMS_MULTIPLE)
            minutes = newTime / MINUTE_IN_SECS
            seconds = newTime % MINUTE_IN_SECS
            print("It will take \(minutes) minutes and \(seconds) seconds")
        } else if itemAmountInt == 3 && item == "soup" {
            let newTime = SOUP_TIME_SECS * THREE_ITEMS_MULTIPLE
            minutes = newTime / MINUTE_IN_SECS
            seconds = newTime % MINUTE_IN_SECS
            print("It will take \(minutes) minutes and \(seconds) seconds")
        } else {
            print("That's not one of the amount options")
        }
    } catch {
        // Catch invalid number input
        print("That's not a number")
    }
} else {
    // Invalid item
    print("That's not one of the item options")
}
