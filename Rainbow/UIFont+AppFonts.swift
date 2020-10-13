//
//  UIFont+AppFonts.swift
//  Rainbow
//
//  Created by Alexander Kononok on 10/13/20.
//

import UIKit

extension UIFont {
  static func pacifico(ofSize: CGFloat) -> UIFont {
    return UIFont(name: "Pacifico-Regular", size: ofSize) ?? UIFont.systemFont(ofSize: ofSize)
  }
}
