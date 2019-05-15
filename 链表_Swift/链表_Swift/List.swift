//
//  List.swift
//  链表_Swift
//
//  Created by 丁磊 on 2019/5/12.
//  Copyright © 2019 丁磊. All rights reserved.
//

import Cocoa

class List: NSObject {
    var head: ListNode?
    var tail: ListNode?
    
//    尾插法
    func appendToTail(_ value: Int) {
        let node: ListNode = ListNode.init(value)
        if tail != nil {
            tail!.Next = node
            tail = tail!.Next
        }else{
            tail = node
            head = tail
        }
    }
    
    func appendToHead(_ value: Int) {
        if head == nil {
            head = ListNode(value)
            tail = head
        }else{
            let temp = ListNode(value)
            temp.Next = head
            head = temp
        }
    }
//    dummy节点
    func partiton(_ head: ListNode?, _ x: Int) -> ListNode? {
        let preDummy = ListNode(0), postDummy = ListNode(0)
        var prev = preDummy, post = postDummy
        var node = head
        while node != nil {
            if node!.value < x{
                prev.Next = node
                prev = node!
            }else{
                post.Next = node
                post = node!
            }
            node = node!.Next
        }
//        防止成环
        post.Next = nil
//        左右拼接
        prev.Next = postDummy.Next
        return preDummy.Next
    }
    
//    使用快行指针监测链表是否成环
    func hasCycle(_ head: ListNode?) -> Bool {
        var slow = head
        var fast = head
        
        
        while fast != nil && fast!.Next != nil {
            slow = slow!.Next
            fast = fast!.Next
            
//            三个等号判断指针地址是否相同
//            两个等号判断值是否相同
            if slow === fast{
                return true
            }
        }
        return false
    }
}
