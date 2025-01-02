//
//  CurrencyTip.swift
//  LearningSwiftUI
//
//  Created by Hartzed Story on 10/13/24.
//

import Foundation
import TipKit

struct CurrencyTip: Tip {
    internal init(title: Text, message: Text? = nil) {
        self.title = title
        self.message = message
    }
    
    var title: Text
    var message: Text?
}
