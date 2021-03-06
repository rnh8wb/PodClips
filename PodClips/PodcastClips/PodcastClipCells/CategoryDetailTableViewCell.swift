//
//  CategoryDetailTableViewCell.swift
//  PodClips
//
//  Created by Ross Harding on 11/10/20.
//

import UIKit

class PodcastClipTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureData(with viewModel: CategoryTableCellViewModel) {
        title.text = viewModel.name
    }
    
}
