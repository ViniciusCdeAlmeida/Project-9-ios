//
//  Questions.swift
//  Quizzler-iOS13
//
//  Created by Apple Multiplier on 08/09/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Questions {
    let text: String
    let anwser: String
    
    init(q: String, a: String) {
        text = q
        anwser = a
    }
}
