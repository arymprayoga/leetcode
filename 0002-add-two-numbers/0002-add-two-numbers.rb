# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    sum = 0
    carry = 0
    l3 = ListNode.new(0)
    head = l3

    while l1 || l2
        sum = 0

        if l1
            sum += l1.val
            l1 = l1.next
        end

        if l2
            sum += l2.val
            l2 = l2.next
        end

        sum += carry
        carry = sum / 10
        sum %= 10
        l3.next = ListNode.new(sum)
        l3 = l3.next
    end

    if carry != 0
        l3.next = ListNode.new(carry)
    end

    head.next
end