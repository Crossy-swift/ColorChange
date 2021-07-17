//
//  SettingsViewController.swift
//  ColorChange
//
//  Created by Артем Репин on 27.03.2021.
//

import UIKit



class SettingsViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var labelRed: UILabel!
    @IBOutlet var labelGreen: UILabel!
    @IBOutlet var labelBlue: UILabel!
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    var delegate: ColorViewControllerDelegate!
    var frontColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.backgroundColor = frontColor
        
        colorView.layer.cornerRadius = 15
        
        sliderRed.minimumTrackTintColor = .red
        sliderGreen.minimumTrackTintColor = .green
        
        changeSliderSpot()
        
        setValue(for: labelRed, labelGreen, labelBlue)
    }
    
    @IBAction func rgbSlide(_ sender: UISlider) {
        
        switch sender {
        case sliderRed: setValue(for: labelRed)
        case sliderGreen: setValue(for: labelGreen)
        default: setValue(for: labelBlue)
        }
        
        setColor()
        
    }
    
    
    @IBAction func doneButtonPresses() {
        delegate?.setViewColor(color: colorView.backgroundColor ?? .black)
        dismiss(animated: true)
    }
    
    private func setColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: 1
        )
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
            case labelRed:
                label.text = string(from: sliderRed)
            case labelGreen:
                label.text = string(from: sliderGreen)
            default:
                label.text = string(from: sliderBlue)
            }
        }
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    
    private func changeSliderSpot() {
        let viewColor = CIColor(color: frontColor)
        
        sliderRed.value = Float(viewColor.red)
        sliderGreen.value = Float(viewColor.green)
        sliderBlue.value = Float(viewColor.blue)
    }
}

