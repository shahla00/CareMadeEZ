//
//  ViewController.swift
//  CareMadeEasy
//
//  Created by Shahla Hafez on 11/8/17.
//  Copyright © 2017 NA. All rights reserved.
//

import UIKit

class HomePage: UICollectionViewController {

  ///
  ///
  ///
  override func viewDidLoad() {
    super.viewDidLoad()
    
    collectionView?.dataSource = self
    collectionView?.delegate = self
    
    collectionView?.register(UINib(nibName: "HomePageCell", bundle: nil),
                             forCellWithReuseIdentifier: "HomePageCell")
  }
  
  
}

extension HomePage {
  ///
  ///
  ///
  public override func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }
  
  ///
  ///
  ///
  public override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int)
    -> Int
  {
      return 3
  }
  
  ///
  ///
  ///
  public override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath)
    -> UICollectionViewCell
  {
    return collectionView.dequeueReusableCell(withReuseIdentifier: "HomePageCell", for: indexPath)
  }
}

extension HomePage {
  override func collectionView(_ collectionView: UICollectionView,
                      willDisplay cell: UICollectionViewCell,
                      forItemAt indexPath: IndexPath)
  {
    guard let cell = cell as? HomePageCell else {
      return
    }
    
    var title = ""
    //    let image: UIImage
    switch indexPath.row {
    case 0:
      title = "Care Team"
      
    case 1:
      title = "Medications"
      
    case 2:
      title = "Appointments"
      
    default:
      title = ""
    }
    
    cell.button.setTitle(title, for: .normal)
  }
}
