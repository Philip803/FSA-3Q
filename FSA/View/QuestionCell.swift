//
//  QuestionCell.swift
//  FSA
//
//  Created by ka sing leung on 4/27/18.
//  Copyright © 2018 Philip Leung. All rights reserved.
//

import UIKit

class QuestionCell: UITableViewCell {

    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var timestampLabel: UILabel!
    @IBOutlet weak var questionTxtLabel: UILabel!
    @IBOutlet weak var likesImg: UIImageView!
    @IBOutlet weak var likesNumLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell ( question : Question){
        
    }
    
}
