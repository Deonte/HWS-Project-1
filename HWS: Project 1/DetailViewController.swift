//
//  DetailViewController.swift
//  HWS: Project 1
//
//  Created by Deonte on 6/5/19.
//  Copyright © 2019 Deonte. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    var totalPictures = Int()
    var pictureNumber = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        title = "Photo \(pictureNumber) of \(totalPictures)"
        navigationItem.largeTitleDisplayMode = .never
        
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    
    

}
