//
//  WordsTableViewController.swift
//  Swift Vocabulary 2
//
//  Created by Jake Connerly on 5/28/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    


    override func viewDidLoad() {
       var  vocabController = VocabularyController(vocabWords: words)
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return words.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        cell.textLabel?.text = words[indexPath.row].word
        
        return cell
    }
 


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinition" {
           guard let indexPath = tableView.indexPathForSelectedRow,
            let definitionVC = segue.destination as? DefinitionViewController else{
                return
            }
            
            let vocabWord = words[indexPath.row]
            
            definitionVC.vocabWord = vocabWord
        }
    
       
    }
    
}
