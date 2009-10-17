Animal: abstract class {
    crier: abstract func (message: String)
}

Chien: class extends Animal {
    crier: func (message: String) {
        printf("Woof woof, %s, woof woof !\n", message)
    }
}

Chien new() crier("E = MC^2")
