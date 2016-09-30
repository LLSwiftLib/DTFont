//
//  ViewController.swift
//  DTFont
//
//  Created by Suguru Kishimoto on 9/26/16.
//  Copyright © 2016 Suguru Kishimoto. All rights reserved.
//

import UIKit
import DTFont

class ViewController: UIViewController {

    @IBOutlet private weak var button: UIButton!
    @IBOutlet private weak var formTestButton: UIButton!
    private lazy var fontUpdater = DTFontUpdater()
    override func viewDidLoad() {
        super.viewDidLoad()

//        self.button.enableAutomaticFontUpdate(with: DTFont.make(with: "Avenir-Book") { $0 < .xl ? 12.0 : 30.0 })
        self.button.enableAutomaticFontUpdate(with: DTFont.make(with: "Avenir-Book", textStyle: .body))
        self.formTestButton.enableAutomaticFontUpdate(with: DTFont.make(with: "Avenir-Book") { size in
            switch size {
            case .xs ... .l:
                return 12.0
            default:
                return 22.0
            }
        })

//        fontUpdater.updateHandler = { [weak self] _ in
//            self?.button.titleLabel?.font = DTFont.make(with: "Avenir-Book", textStyle: .headline)
//        }
//        fontUpdater.update()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
