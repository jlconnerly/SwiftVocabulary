//
//  ViewController.swift
//  Swift Vocabulary 2
//
//  Created by Jake Connerly on 5/28/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
 
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
    var vocabWord: VocabularyWord?
    
    func updateViews() {
        if (vocabWord != nil) {
            wordLabel.text = vocabWord?.word
            definitionTextView.text = vocabWord?.definition
        }
    }
   
    override func viewDidLoad() {
        
        updateViews()
        
        super.viewDidLoad()
       
        
    }


}

