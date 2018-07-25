//
//  ScoreTableViewCell.swift
//  minamavssawada
//
//  Created by MASAHITO MIZOGAKI on 2018/07/25.
//  Copyright © 2018年 MASAHITO MIZOGAKI. All rights reserved.
//

import UIKit

class ScoreTableViewCell: UITableViewCell {

    @IBOutlet weak var loserImageView: UIImageView!
    @IBOutlet weak var winnerImageView: UIImageView!
    
    @IBOutlet weak var winnerScoreLabel: UILabel!
    @IBOutlet weak var loserScoreLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
