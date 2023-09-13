//
//  DetailViewController.swift
//  Project1
//
//  Created by Jane Calnick on 9/5/23.
//

import UIKit

class DetailViewController: UIViewController {

    var contextItem: ContextItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let contextItem = contextItem {
                print(contextItem.title)
            }
        // Do any additional setup after loading the view.
        if let contextItem = contextItem{
            characterImage.image = contextItem.image
            characterTitle.text = String(contextItem.title)
            characterDescription.text = String(contextItem.description)
        }
    }
    
    
    
    @IBOutlet weak var characterTitle: UILabel!
    
    @IBOutlet weak var characterImage: UIImageView!
    
    
    
    @IBOutlet weak var characterDescription: UITextView!
    /*
     
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
