//
//  PDFActivityItemSource.swift
//  ActivityBug
//
//  Created by David Reed on 8/16/16.
//  Copyright © 2016 David Reed. All rights reserved.
//

import UIKit

class PDFActivityItemSource: NSObject, UIActivityItemSource {
    init(url: URL) {
        self.url = url
        super.init()
    }

    func activityViewControllerPlaceholderItem(_ activityViewController: UIActivityViewController) -> Any {
        return url
    }

    func activityViewController(_ activityViewController: UIActivityViewController, itemForActivityType activityType: UIActivityType) -> Any? {
        return url
    }

    @nonobjc func activityViewController(_ activityViewController: UIActivityViewController, subjectForActivityType activityType: UIActivityType?) -> String {
        print("called")
        return "PDF " + url.lastPathComponent
    }

    private let url: URL
}
