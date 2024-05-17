class Rectangle(val length: Double, val width: Double) {
    fun perimeter(): Double = 2 * (length + width)
    fun area(): Double = length * width
}


class Triangle(val sideA: Double, val sideB: Double, val sideC: Double) {
    fun type(): String {
        return when {
            sideA == sideB && sideB == sideC -> "Equilateral"
            sideA == sideB || sideB == sideC || sideA == sideC -> "Isosceles"
            else -> "Scalene"
        }
    }
}


class ShoppingCart {
    private val items = mutableListOf<Pair<String, Double>>()
    
    fun addItem(item: Pair<String, Double>) {
        items.add(item)
    }
    
    fun removeItem(item: Pair<String, Double>) {
        items.remove(item)
    }
    
    fun totalPrice(): Double {
        return items.sumOf { it.second }
    }
}
