function madLib(verb, adj, noun){
    return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`
}

function isSubstring(searchString, subString){
    return searchString.includes(subString);
}
function fizzBuzz(array){
    const arr = []

    array.forEach(el => {
        if ((el % 3 === 0) ^ (el % 5 === 0)) {
        arr.push(el)
        }
    })
    return arr
}

function isPrime(i) {
    if (i < 2) { return false }

    for (let n = 2; n < i; n++) {
        if (i % n === 0){
            return false
        }
    }
    return true;
}

function sumOfNPrimes(n) {
    let sum = 0;
    let count = 0;
    let i = 2;
    while (count < n) {
      if (isPrime(i)){
            sum += i
            count ++;
        }
        i ++;
    }
    return sum;
}