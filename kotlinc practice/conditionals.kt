fun triangleType(a: Int, b: Int, c: Int): String {
    return when {
        a == b && b == c -> "Equilateral"
        a == b || b == c || a == c -> "Isosceles"
        else -> "Scalene"
    }
}

fun calculateSalary(hoursWorked: Int, hourlyRate: Double): Double {
    val regularHours = if (hoursWorked > 40) 40 else hoursWorked
    val overtimeHours = if (hoursWorked > 40) hoursWorked - 40 else 0
    return (regularHours * hourlyRate) + (overtimeHours * hourlyRate * 2.5)
}

fun determineSeason(month: Int): String {
    return when (month) {
        12, 1, 2 -> "Winter"
        3, 4, 5 -> "Spring"
        6, 7, 8 -> "Summer"
        9, 10, 11 -> "Autumn"
        else -> "Invalid month"
    }
}

fun findLargest(a: Int, b: Int, c: Int): Int {
    return if (a >= b && a >= c) {
        a
    } else if (b >= a && b >= c) {
        b
    } else {
        c
    }
}

