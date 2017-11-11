//
//  ListenerViewController.swift
//  NotifierApp
//
//  Created by Vadim Shoshin on 10.11.2017.
//  Copyright © 2017 Vadim Shoshin. All rights reserved.
//

import UIKit

class ListenerViewController: UIViewController {
    @IBOutlet private weak var notificationStatusLabel: UILabel!    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetLabel()
        NotificationCenter.default.addObserver(self, selector: #selector(buttonPressed), name: .NotifyPressed, object: nil)
    }
    private func resetLabel() {
        notificationStatusLabel.text = "Waiting to be notified..."
    }
    
    @IBAction private func resetPushed(_ sender: Any) {
        resetLabel()
        NotificationCenter.default.post(name: .ResetPressed, object: nil)
    }
    
}

// MARK: - Notifications

extension ListenerViewController {
    @objc private func buttonPressed() {
        notificationStatusLabel.text = "I've got a notification"
    }
}
