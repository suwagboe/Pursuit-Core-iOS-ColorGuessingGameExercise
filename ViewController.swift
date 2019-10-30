//
//  ViewController.swift
//  colorGuessingGame
//
//  Created by World Domination a Brand on 10/29/19.
//  Copyright © 2019 Pursuitful stuff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

// OUTLET
    @IBOutlet weak var colorImage: UIImageView!
    
    @IBOutlet weak var displayLabelPickAColor: UILabel!
    
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    
    
    //need to set the
    var score = 0
    var highestScore: [Int] = [0]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // makes an array colors
       // let colorArr = [UIColor.red , UIColor.blue, UIColor.green]
// where is uiicolor from...
        
      //  let randomColor = colorArr.randomElement()
        //chooses a random color from the array
        
//        colorImage.backgroundColor = randomColor
        //changes the color of the colorImage
        
        let randNum = CGFloat.random(in: 0...1)
        let randNum1 = CGFloat.random(in: 0...1)
        let randNum2 = CGFloat.random(in: 0...1)
        let randNum3 = CGFloat.random(in: 0...1)
        let myColor = UIColor(red: randNum, green: randNum1, blue: randNum2, alpha: randNum3)
        
        
        
//            var rgba: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
//                  var red: CGFloat = randNum
//                var green: CGFloat = randNum1
//                var blue: CGFloat = randNum2
//                var alpha: CGFloat = randNum3
//                myColor.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
//
//                return (red, green, blue, alpha)
//            }
        
//        var arrayForCrash = arrayOfOptionals.map { $0! }
        colorImage.backgroundColor = myColor
        
//        let colorArr = UIColor[red: randNum, green: randNum1, blue: randNum2, alpha: randNum3]
    

        
        //declaring the buttons to have a specific color
        greenButton.backgroundColor = UIColor.green // tag = 2
        redButton.backgroundColor = UIColor.red     // tag = 1
        blueButton.backgroundColor = UIColor.blue   // tag = 0
    }
    
    // buttons
    
    
// below is the users choice of which button is correct
    // always make buttons the uiButton
    // tag is a label so it is an int cannot compare to non ints were comparing to a UIColor
    @IBAction func colorChoicePick(_ sender: UIButton) {
        
//        var correctColor: Bool = true
        
                // why is colorImage an optional
        
        
//        guard let x = colorImage.backgroundColor else { show (UIColor.blue, sender: Any?); return}
        
        let x = colorImage.backgroundColor!
        
        if sender.tag == seperateColorValues(myColor: x) {
//            correctColor = true
              score += 1
            
            displayLabelPickAColor.text = "You win, Please keep going"
             updateColorImage()
            
            
        } else {
//            correctColor = false
            
            highestScore.append(score)
            displayLabelPickAColor.text = "You lost, and your score is \(score), the highest score \(highestScore.max)) "
            
            redButton.isEnabled = false
            blueButton.isEnabled = false
            greenButton.isEnabled = false
            
            
            
        }

    }
    
    
    func seperateColorValues(myColor: UIColor) -> Int {
        
        // takes in the myColor data from above
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0

        myColor.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        // getRed is an instance method
        let colorsArr = [red, green, blue]
        // there is no alpha button so it isn't needed.
        colorsArr.max()
        
        if colorsArr.max() == red {
            return 1
        } else if colorsArr.max() == blue {
            return 0
        } else {
            // doesnt need specify code because this is like the last condition
            return 2
        }
    }
    
    func updateColorImage() {
        
        
          let randNum = CGFloat.random(in: 0...1)
                let randNum1 = CGFloat.random(in: 0...1)
                let randNum2 = CGFloat.random(in: 0...1)
                let randNum3 = CGFloat.random(in: 0...1)
                let myColor = UIColor(red: randNum, green: randNum1, blue: randNum2, alpha: randNum3)
                
        //        var arrayForCrash = arrayOfOptionals.map { $0! }
                colorImage.backgroundColor = myColor
                
        func dominateColor(seperateColorValues: UIColor) {
        }
    
        /*
       let colorArr = [UIColor.red , UIColor.blue, UIColor.green]
    // where is uiicolor from...
            
            let randomColor = colorArr.randomElement()
            //chooses a random color from the array
            
            colorImage.backgroundColor = randomColor
            //changes the color of the colorImage
            
      */
    }

// NEW GAME CODE
    
    @IBAction func newGameButton(_ sender: UIButton) {
        updateColorImage()
        
        displayLabelPickAColor.text = "PLEASE PICK WHICH COLOR IS MOST DOMINATE"
        // hold the variable of the
        
        redButton.isEnabled = true
                         blueButton.isEnabled = true
                         greenButton.isEnabled = true
        
        score = 0
    }
}

