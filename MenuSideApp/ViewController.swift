//
//  ViewController.swift
//  MenuSideApp
//
//  Created by Enes Yavuz on 15.08.2021.
//

import UIKit
import SideMenu

class ViewController: UIViewController {
    var menu:SideMenuNavigationController?
   
    @IBOutlet weak var menuButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        menu = SideMenuNavigationController(rootViewController: MenuViewController())
        SideMenuManager.default.leftMenuNavigationController = menu
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
        
       
    }
    func makeSettings() -> SideMenuSettings{
    var settings = SideMenuSettings()
    settings.allowPushOfSameClassTwice = false
    settings.presentationStyle = .viewSlideOutMenuIn
    settings.presentationStyle.onTopShadowColor = .black
    settings.presentationStyle.presentingEndAlpha = 0.7
    settings.menuWidth = 280
    settings.statusBarEndAlpha = 0
    return settings}

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       guard let sideMenuNavigationController = segue.destination as? SideMenuNavigationController else { return }
        sideMenuNavigationController.settings = makeSettings()
    }

    @IBAction func menuButton(_ sender: Any) {
        performSegue(withIdentifier: "SideMenu", sender: nil)
    }
    
}

