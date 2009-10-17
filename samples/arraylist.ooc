import structs/ArrayList

liste := ArrayList<Int> new()
liste add(1) .add(2) .add(3)

for (i in 0..liste size()) {
    liste[i] toString() println()
}
