//
//  main.swift
//  链表_Swift
//
//  Created by 丁磊 on 2019/5/12.
//  Copyright © 2019 丁磊. All rights reserved.
//

import Foundation

var head = ListNode(0)
var node: ListNode? = head

var i: Int = 2
while i < 7 {
    node!.Next = ListNode(i)
    node = node!.Next!
    i += 1
}

var list = List.init()
list.head = head
list.tail = node
list.appendToHead(89)
list.appendToTail(99)

head = list.head!
node = head
while node != nil{
    print(node!.value)
    node = node!.Next
}
