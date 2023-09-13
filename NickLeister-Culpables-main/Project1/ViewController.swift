//
//  ViewController.swift
//  Project1
//
//  Created by Jane Calnick on 9/4/23.
//

import UIKit

class ViewController: UIViewController {


    //create different screens using buttoons
    let buttonApperance = ContextItem(title:"Appearance", image: UIImage(named:"nick3")!,description: "Nick has blue/brown eyes , in the book Nick's blue eyes are mentioned throughout , although in the movie ,Nick's eyes are dark brown.Nicholas is also very tall , around 1.80m, he has dark black hair, and he is also very athletic.")
    let buttonWeakness = ContextItem(title: "Weakness", image: UIImage(named:"culpables")!, description: "Nick's biggest weakness is Noah Morgan , his stepsister at first and later on the love of his life. Noah comes into Nick's life when he is 22 years old and his father marries Noah's mother ,before they move-in into Leister's mansion , Nick and Noah had never met before.")
    let buttonBackgroundStory = ContextItem(title: "Background Story", image: UIImage(named:"nick4")!, description: "Nicholas was abandoned by his mother when he was just 12 years old , this made Nick have tragic childhood and later on in life to start developing anger and trust issues.Leister gets often into fights , races car and it is the typical guy who doesn't believe in love and that's why he has meaningless flings until he meets Noah.")
    let buttonBasicInfo = ContextItem(title:"Basic Information",image:UIImage(named:"nick2")!,description:"Nicholas Leister lives in Los Angeles , California in the Leister Mansion. Nicholas is 22 years old and studies law at UCLA , he also works as an intern on his father's law firm .")
   
        //make sure to add for all other screens
    //array for the buttons
    var contextItems:[ContextItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        contextItems = [buttonApperance, buttonWeakness, buttonBackgroundStory ,buttonBasicInfo]
    }

    
    @IBAction func didTapButton(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedButton = sender as? UIButton,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedButton.tag == 0 {
                detailViewController.contextItem = contextItems[0]
            } else if tappedButton.tag == 1 {
                detailViewController.contextItem = contextItems[1]
            } else if tappedButton.tag == 2 {
                detailViewController.contextItem = contextItems[2]
            } else if tappedButton.tag == 3 {
                detailViewController.contextItem = contextItems[3]
            } else {
                print("no buttons were tapped.")
            }
        }
    }

    
}

