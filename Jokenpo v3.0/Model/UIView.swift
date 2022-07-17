//
//  UIView.swift
//  Jokenpo v3.0
//
//  Created by Pedro Moraes (user220265) on 7/17/22.
//

import UIKit

extension UIView {
    open func addSubviews(_ views: [UIView]){
        for view in views {
            self.addSubview(view)
        }
    }
}

