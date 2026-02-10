class ArraySolution {
    // func reverseArr(_ arr: inout [Int]) -> [Int] {
    //     print(arr)

    //     var i = 0 , j = arr.count - 1

    //     while i < j {
    //         let temp = arr[i]
    //         arr[i] = arr[j]
    //         arr[j] = temp
    //         i += 1
    //         j -= 1
    //     }

    //     return arr
    // }

   func reverseArrayUsingStack(_ arr: inout [Int]) {
       var arrStack: [Int] = []
       var arrData = arr
       while !arrData.isEmpty {
           arrStack.append(arrData.removeLast())
       }
       print(arrStack)
   }


   func shiftZero(_ arr: [Int]) -> [Int] {
    print(arr)
    return arr
   }
}

var arr = [1,2,3,4,5,5,6]
// let sol = ArraySolution().reverseArr(&arr)
let sol1 = ArraySolution().reverseArrayUsingStack(&arr)


print(sol1)