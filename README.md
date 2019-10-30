# Pursuit-Core-iOS-ColorGuessingGameExercise

Welcome Developers!  Here is your in-class exercise for today:

## Overview

The name of the game is generating and guessing random colors.

Have the app generate and display a random color from RGB values.

The user is to guess which RGB value is most dominant (ie, the largest), by pressing one of three buttons, red, green or blue.

When the user selects the correct color, the game increments the current score and selects a new random color.

When the user selects the incorrect color, the game ends and the user should have the option to play again.

The game should keep track of the highest score (while the app is running).

Your app should have a model and implement MVC where possible.



### Stage 1: 

Create three buttons for red, green and blue. Create a UIView that displays just red, green or blue randomly. 

If the user clicks the button for the displayed color, the app should display a new color and the user able to guess again.
If the user clicks the wrong button the game should end and the user should have the option to play again.

### Stage 2: 

Have the app keep score of the correct guesses.


```
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // makes an array colors
        let colorArr = [UIColor.red , UIColor.blue, UIColor.green]
// where is uiicolor from...
        
        let randomColor = colorArr.randomElement()
        //chooses a random color from the array
        
        colorImage.backgroundColor = randomColor
        //changes the color of the colorImage
        
        //declaring the buttons to have a specific color
        greenButton.backgroundColor = UIColor.green
        redButton.backgroundColor = UIColor.red
        blueButton.backgroundColor = UIColor.blue
    }
// THE SCORE SHOULD BE A LABEL THAT INCREMENTS??
    // do I need to create a new file to hold the spectrum of colors.

    // i want the display to change to:
    /*
     you choose the correct col
     */
    
    // buttons
    
    
// below is the users choice of which button is correct
    // always make buttons the uiButton
    // tag is a label so it is an int cannot compare to non ints were comparing to a UIColor
    @IBAction func colorChoicePick(_ sender: UIButton) {
        
//        var correctColor: Bool = true
                
                print(sender.backgroundColor)
                print(colorImage.backgroundColor)
                // why is colorImage an optional
                
        if sender.backgroundColor == colorImage.backgroundColor {
//            correctColor = true
              score += 1
            displayLabelPickAColor.text = "You win"
             updateColorImage()
            
            
        } else {
            print(sender.backgroundColor)
//            correctColor = false
            let highScore = score

        
            displayLabelPickAColor.text = "You WHORE, and your score is \(highScore)"
            
            redButton.isEnabled = false
            blueButton.isEnabled = false
            greenButton.isEnabled = false
            
            
            
        }

    }
    
        
    func updateColorImage() {
       let colorArr = [UIColor.red , UIColor.blue, UIColor.green]
    // where is uiicolor from...
            
            let randomColor = colorArr.randomElement()
            //chooses a random color from the array
            
            colorImage.backgroundColor = randomColor
            //changes the color of the colorImage
            
      
        
    }
    
    
    

// NEW GAME CODE
    
    
    @IBAction func newGameButton(_ sender: UIButton) {
        
        
        updateColorImage()
        
        displayLabelPickAColor.text = "PLEASE PICK WHICH COLOR IS MOST DOMINATE"
        // hold the variable of the
        
        redButton.isEnabled = true
                         blueButton.isEnabled = true
                         greenButton.isEnabled = true
        
        
    }
    
    
    
}


```


### Stage 3: 

Have the game generate a random color using the below UIColor initializer...

```swift
let myColor = UIColor(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
```

You can generate random CGFloats between 0 and 1 using...

```swift
let randNum = CGFloat.random(in: 0...1)
```

### Stage 4:

Have the app keep track of the highest score (so long as it is running)


### Bonus:


Try to refactor any duplicated code into functions.

The game is kinda easy. Change your code so that the random colors generated have rgb values that are closer together.

Add the ability for the user to select the dificulty level. 

