//
//  NotificatorViewController.swift
//  NotifierApp
//
//  Created by Vadim Shoshin on 10.11.2017.
//  Copyright © 2017 Vadim Shoshin. All rights reserved.
//

import UIKit

class NotificatorViewController: UIViewController {

    @IBOutlet private weak var notificatorStatusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetLabel()
                NotificationCenter.default.addObserver(self, selector: #selector(resetPressed), name: .ResetPressed, object: nil)
    }

    @IBAction private func notifyPushed(_ sender: Any) {
        notificatorStatusLabel.text = "Notification Sent!!!"
        NotificationCenter.default.post(name: .NotifyPressed, object: nil)
    }
    
    private func resetLabel() {
        notificatorStatusLabel.text = "Press to notify!"
    }
    
}

extension NotificatorViewController {
    @objc private func resetPressed() {
        resetLabel()
    }
}
