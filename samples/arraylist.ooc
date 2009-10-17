import structs/ArrayList

liste := ArrayList<Int> new()
liste add(1) .add(2) .add(3)

for (number in liste) {
	number toString() println()
}
