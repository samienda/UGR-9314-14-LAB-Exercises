fun sumEvenNumbers(): Int {
    var sum = 0
    for (i in 1..50) {
        if (i % 2 == 0) {
            sum += i
        }
    }
    return sum
}


fun findPrimesInRange(start: Int, end: Int): List<Int> {
    val primes = mutableListOf<Int>()
    for (number in start..end) {
        var isPrime = true
        var i = 2
        while (i <= number / 2) {
            if (number % i == 0) {
                isPrime = false
                break
            }
            i++
        }
        if (isPrime && number > 1) {
            primes.add(number)
        }
    }
    return primes
}


fun isPalindrome(number: Int): Boolean {
    var num = number
    var reversed = 0
    var original = number
    while (num != 0) {
        val digit = num % 10
        reversed = reversed * 10 + digit
        num /= 10
    }
    return original == reversed
}
