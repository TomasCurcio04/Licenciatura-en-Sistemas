const A = Math.floor(Math.random() * 10)
const B = Math.floor(Math.random() * 10)
const C = Math.floor(Math.random() * 10)
console.log(A, B, C)

function operacionNumerica(a, b, c) {
    console.log(((a + b) ** c))
    console.log(Math.max(a, b, c))
}

operacionNumerica(A, B, C);