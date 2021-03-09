//
//  store.swift
//  jveit-finalProject
//
//  Created by Jeffrey Veit on 3/2/21.
//

import Foundation

let catalog = [
    Items(name: "Orange Cleaner",
        type: .cleaner,
        shortDescription: "Organic Orange Cleaner",
        longDescription: "Meet the cleaner that we use on (almost) every surface in our home—my Homemade Citrus All-Purpose Cleaner. This baby has just a handful of ingredients—ones that you probably already have kicking around—and it is an all-natural, good-smelling cleaning machine!",
        price: 5.99),
    
    Items(name: "Lavender Essential Oil",
        type: .oil,
        shortDescription: "Lavender Essential Oil",
        longDescription: "Organic lavender essential oil is a middle note steam distilled from the flowers of Lavandula angustifolia. One of our most popular essential oils, lavender oil has an unmistakable sweet, floral and herbal aroma found in body care and perfumes.",
        price: 7.55),
    
    Items(name: "Citrus Lemon Household Spray",
        type: .cleaner,
        shortDescription: "Lemon Housemade Cleaner",
        longDescription: "Homemade Citrus All-Purpose Cleaner is a cleaning powerhouse that you can make for just pennies. It can clean your house from top to bottom!",
        price: 8.99),
    
    Items(name: "Peppermint Essential Oil",
        type: .oil,
        shortDescription: "Peppermint Essential Oil",
        longDescription: "Premium Grade 100% Natural Peppermint Oil - 4 ounces of wonder peppermint aroma.",
        price: 10.25),
    
    Items(name: "Rosemary Essential Oil",
        type: .oil,
        shortDescription: "Rosemary Essential Oil",
        longDescription: "Rosemary is uplifting with a warm, camporaceous scent that is energizing, uplifting, purifying and cleansing. Boost your spirit and energy level safely and naturally without any crashes with premium energizing essential oils.",
        price: 12.22),
    
]

// Tacos class with init method, and declaration variables
class Items{
    
    enum `Type`: String {
        case cleaner = "cleaner"
        case oil = "oil"
    }
    
    var name: String
    var type: Type
    var shortDescription: String
    var longDescription: String
    var price: Float
    
    init(name: String, type: Type, shortDescription: String, longDescription: String, price: Float) {
        self.name = name
        self.type = type
        self.shortDescription = shortDescription
        self.longDescription = longDescription
        self.price = price
    }
    
}
