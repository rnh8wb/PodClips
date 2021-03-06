//
//  CategoryTableViewCell.swift
//  PodClips
//
//  Created by Ross Harding on 10/23/20.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configureData(with viewModel: CategoryTableCellViewModel) {
        title.text = viewModel.name
    }
    
}
