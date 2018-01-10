import UIKit

// coin toss

//var coin: [String] = ["Heads", "Tails"]

var headsCounter = 0
var tailsCounter = 0
var tossCounter = 0

func tossCoin() -> String {
    
//    let coinIdx = Int(arc4random_uniform(UInt32(coin.count)))
    
//    let coinVal = coin[coinIdx]
    
    print("Tossing a Coin!")
    
    if arc4random_uniform(2) == 0 {
        print("Heads")
        
        headsCounter = headsCounter + 1
        
        tossCounter = tossCounter + 1
        
        return "Heads"
    }
    
    else {
        print("Tails")
        
        tailsCounter = tailsCounter + 1
        
        tossCounter = tossCounter + 1
        
        return "Tails"
    }
}

tossCoin()

// toss multiple coins


func tossMultipleCoins(num: Int) -> Double {
    while tossCounter < num {
        tossCoin()
    }

  let ratio = headsCounter / tossCounter

    return Double(ratio)

}

tossMultipleCoins(num: 3)



