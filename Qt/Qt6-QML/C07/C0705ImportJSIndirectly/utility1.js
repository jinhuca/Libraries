.import "utility2.js" as Ut2

function greet() {
    console.log("Hello there from external JS file: utility1.js")
}

function combineAges(age1, age2) {
    return Ut2.add(age1, age2)
}
