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
        
        labelRed.text = "\(String (format: "%.2f", sliderRed.value))"
        labelGreen.text = "\(String (format: "%.2f", sliderGreen.value))"
        labelBlue.text = "\(String (format: "%.2f", sliderBlue.value))"
        
        sliderRed.minimumTrackTintColor = .red
        sliderGreen.minimumTrackTintColor = .green
        
        colorView.backgroundColor = UIColor(
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: 1
        )
    }
    
    @IBAction func sliderRedSlide() {
        labelRed.text = "\(String (format: "%.2f", sliderRed.value))"
        colorView.backgroundColor = UIColor(
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: 1
        )
    }
    
    @IBAction func sliderGreenSlide() {
        labelGreen.text = "\(String (format: "%.2f", sliderGreen.value))"
        colorView.backgroundColor = UIColor(
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: 1
        )
    }
    
    @IBAction func sliderBlueSlide() {
        labelBlue.text = "\(String (format: "%.2f", sliderBlue.value))"
        colorView.backgroundColor = UIColor(
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: 1
        )
    }
    
}

