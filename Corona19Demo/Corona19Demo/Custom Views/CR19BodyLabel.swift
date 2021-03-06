//
//  CR19BodyLabel.swift
//  Corona19Demo
//
//  Created by Sunmi on 2020/06/09.
//  Copyright © 2020 sun. All rights reserved.
//

import UIKit

class CR19BodyLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(textAlignment: NSTextAlignment) {
        super.init(frame: .zero)
        self.textAlignment = textAlignment
        configure()
    }
    
    private func configure() {
        textColor                    = .secondaryLabel
        font                         = UIFont.systemFont(ofSize: 15, weight: .regular)
        
        adjustsFontSizeToFitWidth    = true
        minimumScaleFactor           = 0.7
       // setLineHeight(lineHeight: 0.2)
        lineBreakMode                = .byWordWrapping
        translatesAutoresizingMaskIntoConstraints = false
        numberOfLines = 0
        // Pass value for any one argument - lineSpacing or lineHeightMultiple

    }
    
    func changeFontColor(clr: UIColor) {
        textColor = clr
    }
    
}

