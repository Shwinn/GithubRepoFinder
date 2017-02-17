//
//  GithubRepoCell.swift
//  GithubDemo
//
//  Created by Ashwin Gupta on 2/16/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class GithubRepoCell: UITableViewCell {
    
    @IBOutlet weak var forksImageView: UIImageView!
    @IBOutlet weak var starsImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var repoNameLabel: UILabel!
    @IBOutlet weak var starCountLabel: UILabel!
    @IBOutlet weak var forkCountLabel: UILabel!
    
    var repo: GithubRepo! {
        didSet {
            repoNameLabel.text = repo.name
            authorLabel.text = repo.ownerHandle
            avatarImageView.setImageWith(URL(string: repo.ownerAvatarURL!)!)
            descriptionLabel.text = repo.repoDescription
            starCountLabel.text = String(repo.stars!)
            forkCountLabel.text = String(repo.forks!)
            starsImageView.image = UIImage(named: "star")
            forksImageView.image = UIImage(named: "fork")
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
