//
//  CircleImageView.swift
//  Wolf Pack
//
//  Created by Sean Hess on 9/5/14.
//  Copyright (c) 2014 Orbital Labs. All rights reserved.
//

import UIKit

class CircleImageView : UIImageView {
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        layer.cornerRadius = self.frame.size.width / 2
        layer.masksToBounds = true
        layer.borderWidth = 2
        layer.borderColor = backgroundColor?.CGColor
    }
}
