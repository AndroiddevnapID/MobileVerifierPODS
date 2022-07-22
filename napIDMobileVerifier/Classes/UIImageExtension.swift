//
//  UIImageExtension.swift
//  napIDMobileVerifier
//
//  Created by napID on 22/07/22.
//

import UIKit

extension UIImageView {
public func circleImageView(borderColor: UIColor, borderWidth: CGFloat){
     self.layer.borderColor = borderColor.cgColor
     self.layer.borderWidth = borderWidth
     self.layer.cornerRadius = self.layer.frame.size.width / 2
     self.clipsToBounds = true
}
}

