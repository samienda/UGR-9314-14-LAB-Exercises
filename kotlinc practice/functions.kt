fun sortArray(arr: IntArray): IntArray {
    return arr.sortedArray()
}

fun factorial(n: Int): Int {
    return if (n == 0) 1 else n * factorial(n - 1)
}

fun hasUniqueChars(str: String): Boolean {
    val charSet = mutableSetOf<Char>()
    for (char in str) {
        if (!charSet.add(char)) {
            return false
        }
    }
    return true
}
