//
//  VocabularyController.swift
//  Swift Vocabulary 2
//
//  Created by Jake Connerly on 5/28/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

import Foundation


class VocabularyController {
    var vocabWords: [VocabularyWord]

    
    init(vocabWords: [VocabularyWord]) {
        self.vocabWords = vocabWords
        
    }
   
}

let words: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "A variable provides us with named storage that our programs can manipulate. Each variable in Swift has a specific type, which determines the size and layout of the variable's memory; the range of values that can be stored within that memory; and the set of operations that can be applied to the variable"),
                               VocabularyWord(word: "Constant", definition: "Constants refer to fixed values that a program may not alter during its execution. Constants can be of any of the basic data types like an integer constant, a floating constant, a character constant, or a string literal."),
                               VocabularyWord(word: "Function", definition: "A piece of code that is written to be used and called multiple times through out a code base. ")]


