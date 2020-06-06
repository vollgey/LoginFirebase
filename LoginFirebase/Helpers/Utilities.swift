//
//  Utilities.swift
//  LoginFirebase
//
//  Created by Tomokawa Takumi on 2020/06/06.
//  Copyright © 2020 apex. All rights reserved.
//

import Foundation
import UIKit

class Utilities {

    static func styleTextField(_ textfield: UITextField) {

        let buttomLine = CALayer()

        buttomLine.frame = CGRect(x: 0, y: textfield.frame.height - 2, width: textfield.frame.width, height: 2)
        buttomLine.backgroundColor = UIColor.init(red: 48 / 226, green: 173 / 225, blue: 99 / 255, alpha: 1).cgColor

        textfield.borderStyle = .none

        textfield.layer.addSublayer(buttomLine)
    }

    static func styleFilledButton(_ button: UIButton) {

        button.backgroundColor = UIColor.init(red: 48 / 226, green: 173 / 225, blue: 99 / 255, alpha: 1)
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.white
    }

    static func styleHollowButton(_ button: UIButton) {

        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.black
    }

    static func isPasswordValid(_ password: String) -> Bool {

        let passwordTest = NSPredicate(format: "SELF MATCHES %@",
                                       "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
}


