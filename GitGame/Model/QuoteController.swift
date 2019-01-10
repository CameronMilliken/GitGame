//
//  QuoteController.swift
//  GitGame
//
//  Created by Cameron Milliken on 1/10/19.
//  Copyright © 2019 Cameron Milliken. All rights reserved.
//

import Foundation

class QuoteController {
    
    static let sharedInstance = QuoteController()
    
    var quotes: [Quote] = []
    
    let swansonQuote1 = Quote(quote:"I'd wish you the best of luck but I believe luck is a concept created by the weak to explain their failures.", isRonSwanson: true)
    
    let swansonQuote2 = Quote(quote: "Dear frozen yogurt, you are the celery of desserts. Be ice cream or be nothing. Zero stars.", isRonSwanson: true)
    
    let swansonQuote3 = Quote(quote: "There has never been a sadness that can’t been cured by breakfast food.", isRonSwanson: true)
    
    let swansonQuote4 = Quote(quote: "It’s pointless for a human to paint scenes of nature when they can go outside and stand in it.", isRonSwanson: true)
    
    let swansonQuote5 = Quote(quote: "I once worked with a guy for three years and never learned his name. Best friend I ever had. We still never talk sometimes.", isRonSwanson: true)
    
    let swansonQuote6 = Quote(quote: "I’m a simple man. I like pretty, dark-haired women, and breakfast food.", isRonSwanson: true)
    
    let swansonQuote7 = Quote(quote: "Sting like a bee. Do not float like a butterfly. That's ridiculous.", isRonSwanson: true)
    
    let swansonQuote8 = Quote(quote: "Are you going to tell a man that he can’t fart in his own car?", isRonSwanson: true)
    
    let swansonQuote9 = Quote (quote: "Never half-ass two things. Whole-ass one thing.", isRonSwanson: true)
    
    let swansonQuote10 = Quote(quote: "If any of you need anything at all, too bad. Deal with your problems yourselves, like adults.", isRonSwanson: true)
    
    let fakeQuote1 = Quote(quote: "If your shirt isn't tucked into your pants, then your pants are tucked into your shirt", isRonSwanson: false)
    
    let fakeQuote2 = Quote(quote: "Figure out what you love to do, then figure out how to get paid to do it.", isRonSwanson: false)
    
    let fakeQuote3 = Quote(quote: "If you want to be happy in life, consider yourself a student. Every day of your life, think: how can I improve?", isRonSwanson: false)
    
    let fakeQuote4 = Quote(quote: "If properly dried and trimmed, New York-style pizza could be used to make a box for Chicago-style pizza.", isRonSwanson: false)
    
    let fakeQuote5 = Quote(quote: "You know, it's hard to beat bacon at anytime of day. But I also am a big fan of corned beef hash.", isRonSwanson: false)
    
    let fakeQuote6 = Quote(quote: "The average dog is a nicer person than the average person.", isRonSwanson: false)
    
    let fakeQuote7 = Quote(quote: "A bank is a place that will lend you money if you can prove that you don’t need it.", isRonSwanson: false)
    
    let fakeQuote8 = Quote(quote: "My favorite machine at the gym is the vending machine.", isRonSwanson: false)
    
    let fakeQuote9 = Quote(quote: "I’m too drunk to taste this chicken.", isRonSwanson: false)
    
    let fakeQuote10 = Quote(quote: "If you can’t live without me, why aren’t you dead already?", isRonSwanson: false)
    
    init(){
        self.quotes = [swansonQuote1, swansonQuote2, swansonQuote3, swansonQuote4, swansonQuote5, swansonQuote6,swansonQuote7, swansonQuote8, swansonQuote9, swansonQuote10, fakeQuote1, fakeQuote2, fakeQuote3, fakeQuote4, fakeQuote5, fakeQuote6, fakeQuote7, fakeQuote8, fakeQuote9, fakeQuote10]
    }
}
