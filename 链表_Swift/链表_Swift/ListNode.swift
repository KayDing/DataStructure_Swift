//
//  ListNode.swift
//  链表_Swift
//
//  Created by 丁磊 on 2019/5/12.
//  Copyright © 2019 丁磊. All rights reserved.
//

import Cocoa

class ListNode: NSObject {
    var value: Int
    var Next: ListNode?
    
    init(_ value: Int) {
        self.value = value;
        self.Next = nil
    }
}
