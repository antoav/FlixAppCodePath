//
//  MovieCell.swift
//  FlixAppCP
//
//  Created by Antonella on 2/20/22.
//

import UIKit

class MovieCell: UITableViewCell  {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var poster: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
