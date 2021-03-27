//
//  ViewController.swift
//  ColorChange
//
//  Created by Артем Репин on 27.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var labelRed: UILabel!
    @IBOutlet var labelGreen: UILabel!
    @IBOutlet var labelBlue: UILabel!
    
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = colorView.frame.height / 8
        
        labelRed.text = "Red: 0.50"
        labelGreen.text = "Green: 0.50"
        labelBlue.text = "Blue: 0.50"
    }
    
    
    @IBAction func sliderRedSlide() {
        labelRed.text = "Red: \(String (format: "%.2f", sliderRed.value))"
        let backgoundColor = UIColor(
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: 1
        )
        self.colorView.backgroundColor = backgoundColor
    }
    
    @IBAction func sliderGreenSlide() {
        labelGreen.text = "Green: \(String (format: "%.2f", sliderGreen.value))"
        let backgoundColor = UIColor(
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: 1
        )
        self.colorView.backgroundColor = backgoundColor
    }
    
    @IBAction func sliderBlueSlide() {
        labelBlue.text = "Blue: \(String (format: "%.2f", sliderBlue.value))"
        let backgoundColor = UIColor(
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: 1
        )
        self.colorView.backgroundColor = backgoundColor
    }
    
}

