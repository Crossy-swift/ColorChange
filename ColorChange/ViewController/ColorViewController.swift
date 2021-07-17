//
//  ColorViewController.swift
//  ColorChange
//
//  Created by Артем Репин on 10.04.2021.
//

import UIKit

protocol ColorViewControllerDelegate {
    func setViewColor(color: UIColor)
}

class ColorViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.frontColor = view.backgroundColor
        settingsVC.delegate = self
    }
}

extension ColorViewController: ColorViewControllerDelegate {
    func setViewColor(color: UIColor) {
        view.backgroundColor = color
    }
}




