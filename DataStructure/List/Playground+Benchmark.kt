import java.util.ArrayList
import java.util.LinkedList
import kotlin.system.measureTimeMillis

fun main() {
    val size = 100_000

    // --------------------------
    // 1. Crear listas grandes
    // --------------------------
    val arrayList = ArrayList<Int>()
    val linkedList = LinkedList<Int>()

    repeat(size) {
        arrayList.add(it)
        linkedList.add(it)
    }

    // --------------------------
    // 2. Acceso por índice
    // --------------------------
    val index = size / 2

    val arrayAccessTime = measureTimeMillis {
        repeat(1000) {
            arrayList[index]
        }
    }

    val linkedAccessTime = measureTimeMillis {
        repeat(1000) {
            linkedList[index]
        }
    }

    println("Access by index:")
    println("ArrayList: $arrayAccessTime ms")
    println("LinkedList: $linkedAccessTime ms")

    // --------------------------
    // 3. Agregar elementos al principio
    // --------------------------
    val arrayInsertTime = measureTimeMillis {
        repeat(1000) {
            arrayList.add(0, -1)
        }
    }

    val linkedInsertTime = measureTimeMillis {
        repeat(1000) {
            linkedList.addFirst(-1)
        }
    }

    println("\nInsert at beginning:")
    println("ArrayList: $arrayInsertTime ms")
    println("LinkedList: $linkedInsertTime ms")

    // --------------------------
    // 4. Eliminar elementos del principio
    // --------------------------
    val arrayRemoveTime = measureTimeMillis {
        repeat(1000) {
            arrayList.removeAt(0)
        }
    }

    val linkedRemoveTime = measureTimeMillis {
        repeat(1000) {
            linkedList.removeFirst()
        }
    }

    println("\nRemove from beginning:")
    println("ArrayList: $arrayRemoveTime ms")
    println("LinkedList: $linkedRemoveTime ms")
}
