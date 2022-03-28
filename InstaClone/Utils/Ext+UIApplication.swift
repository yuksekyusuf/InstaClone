//
//  Ext+UIApplication.swift
//  InstaClone
//
//  Created by Ahmet Yusuf Yuksek on 3/28/22.
//

import Foundation
import UIKit


extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
