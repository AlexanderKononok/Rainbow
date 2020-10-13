//
//  ViewController.swift
//  Rainbow
//
//  Created by Alexander Kononok on 10/13/20.
//

import UIKit

class ViewController: UIViewController {

  
  @IBOutlet weak var rainbowLabel: UILabel!
  @IBOutlet weak var tapmeButton: UIButton!
  
  let indigo = UIColor(red: 93/255, green: 111/255, blue: 211/255, alpha: 1)
  let violet = UIColor(red: 238/255, green: 130/255, blue: 238/255, alpha: 1)
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }

  @IBAction func tapmeButtonPressed(_ sender: Any) {
    let arrSevenColors: [UIColor] = [.red, .orange, .yellow, .green, .blue, indigo, violet]
    
    tapmeButton.isSelected = !tapmeButton.isSelected
    
    if tapmeButton.isSelected {
      setRainbowAttributes(arrSevenColors: arrSevenColors)
    } else {
      setRainbowAttributes(arrSevenColors: arrSevenColors.reversed())
    }
  }
  
  private func setRainbowAttributes(arrSevenColors: [UIColor]) {
    let text = "RAINBOW"
    let wholeRange = (text as NSString).range(of: text)
    let rRange = (text as NSString).range(of: "R")
    let aRange = (text as NSString).range(of: "A")
    let iRange = (text as NSString).range(of: "I")
    let nRange = (text as NSString).range(of: "N")
    let bRange = (text as NSString).range(of: "B")
    let oRange = (text as NSString).range(of: "O")
    let wRange = (text as NSString).range(of: "W")
    let attributedText = NSMutableAttributedString(string: text)
    
    attributedText.addAttribute(.font, value: UIFont.pacifico(ofSize: 36), range: wholeRange)
    attributedText.addAttribute(.foregroundColor, value: arrSevenColors[0], range: rRange)
    attributedText.addAttribute(.foregroundColor, value: arrSevenColors[1], range: aRange)
    attributedText.addAttribute(.foregroundColor, value: arrSevenColors[2], range: iRange)
    attributedText.addAttribute(.foregroundColor, value: arrSevenColors[3], range: nRange)
    attributedText.addAttribute(.foregroundColor, value: arrSevenColors[4], range: bRange)
    attributedText.addAttribute(.foregroundColor, value: arrSevenColors[5], range: oRange)
    attributedText.addAttribute(.foregroundColor, value: arrSevenColors[6], range: wRange)
    rainbowLabel.attributedText = attributedText
  }
  
}

