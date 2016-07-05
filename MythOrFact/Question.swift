//
//  Question.swift
//  MythOrFact
//
//  Created by Nabil K on 2016-07-05.
//  Copyright © 2016 Nabil. All rights reserved.
//

import UIKit

class Question: NSObject {
    var text: String
    var fact: Bool
    var category: String
    
    
    init(text:String, fact: Bool, category: String){
        self.text = text
        self.fact = fact
        self.category = category
    }
}
