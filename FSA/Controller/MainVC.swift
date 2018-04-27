//
//  ViewController.swift
//  FSA
//
//  Created by Philip Leung on 4/25/18.
//  Copyright © 2018 Philip Leung. All rights reserved.
//

import UIKit

enum QuestionCategory: Swift.String {
    case easy,normal,crazy,popular
}

class MainVC: UIViewController , UITableViewDelegate, UITableViewDataSource {

    //Outlets
    @IBOutlet private weak var segmentControl: UISegmentedControl!
    @IBOutlet private weak var tableView: UITableView!
    
    //Variables
    private var questions = [Question]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        //set up dynamic question size 
        tableView.estimatedRowHeight = 80
        tableView.rowHeight = UITableViewAutomaticDimension
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "questionCell", for: indexPath) as? QuestionCell {
            cell.configureCell(question : questions[indexPath.row])
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }
    
    
}

