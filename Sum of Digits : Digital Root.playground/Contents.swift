import Foundation

/// Given n, take the sum of the digits of n. If that value has more than one digit, continue reducing in this way until a single-digit number is produced. The input will be a non-negative integer.
///
/// 16  -->  1 + 6 = 7
/// 942  -->  9 + 4 + 2 = 15  -->  1 + 5 = 6
/// 132189  -->  1 + 3 + 2 + 1 + 8 + 9 = 24  -->  2 + 4 = 6
/// 4 + 9 + 3 + 1 + 9 + 3 = 29  -->  2 + 9 = 11  -->  1 + 1 = 2


func digitalRoot(of number: Int) -> Int {
    var sum = number
        
    // Повторяем процесс до тех пор, пока число не станет однозначным
    while sum >= 10 {
        var tempSum = 0
        var currentNumber = sum
            
        // Суммируем цифры числа
        while currentNumber > 0 {
            tempSum += currentNumber % 10
            currentNumber /= 10
        }
            
        sum = tempSum  // Обновляем sum с результатом суммы цифр
    }
        
    return sum
}



