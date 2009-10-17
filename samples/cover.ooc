Int: cover from int {
    negate: func -> This {
        -this
    }
}

a := 42
b := a negate()
printf("a = %d, b = %d\n", a, b)
