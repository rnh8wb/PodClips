//
//  CategoryDetailTableViewController.swift
//  PodClips
//
//  Created by Ross Harding on 11/10/20.
//

import UIKit

class PodcastClipsTableViewController: ParentTableViewController {
    
    var viewModel: PodcastClipsTableViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return viewModel.numberOfSections
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return viewModel.numberOfRows
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryTableViewCell", for: indexPath) as? CategoryTableViewCell else {
            return UITableViewCell()
        }
        let podcastClip = viewModel.podcastClip(at: indexPath.row)
        let viewModel = PodcastClipsTableViewModel(category: <#T##Category#>)
        cell.configureData(with: viewModel)
        return cell
    }

}
