//
//  Data.swift
//  LatihanBuatWWDC
//
//  Created by Zacky Ilahi Azmi on 24/04/22.
//

import Foundation
import SwiftUI

struct Info {
    let image: String
    let name: String
    let story: String
}

struct Feed {
    static var data = [
        Info(image: "kapalselam", name: "Pempek Kapal Selam", story: "Pempek kapal selam is the largest pempek that you ever found! Kapal selam in english means submarine which is why it is big.\n\nInside pempek kapal selam there is an egg. There is smaller type of pempek kapal selam called \"Pempek Telur\". Naturally, you eat pempek kapal selam with cuko pempek and cucumber."),
        
        Info(image: "adaan", name: "Pempek Adaan", story: "Pempek adaan is pempek who have ball structure. Naturally, you eat pempek adaan with cuko pempek and cucumber."),
        
        Info(image: "lenjer", name: "Pempek Lenjer", story: "Pempek lenjer is pempek who have long sctructure. You can cut pempek lenjer into pieces and make them food called \"Lenggang\". Lenggang is many pieces of pempek lenjer and mixed with egg"),
        
        Info(image: "cuko", name: "Cuko Pempek", story: "When you want to eat all type of pempek, you must found this item. Cuko pempek is like the sauce of the pempek but the texture is liquid. Cuko pempek made from palm sugar, garlic, tamarind, water, and salt."),
        
        Info(image: "timun", name: "Cucumber", story: "Cucumber or timun in indonesia naturally served with pempek. You can cut cucumber into small pieces and put the cucumber into cuko pempek. You can add dry ebi to increase the taste.")
    ]
}


