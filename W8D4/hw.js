function titleize(arr, callback){
    let arr1 = arr.map(function(ele) { return `Mx. ${ele} Jingleheimer Schmidt`});
    
    callback(arr1)
};

function Elephant(name, height, ...tricks){
    this.name = name;
    this.height = height;
    this.tricks = tricks;
}

let dumbo = new Elephant("dumbo", 10, "painting a picture", "walking up stairs")
dumbo.trumpet

Elephant.prototype.trumpet = function(){
    console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!`)
}

Elephant.prototype.grow = function(){
    this.height = this.height + 12
}

Elephant.prototype.addTrick = function(trick){
    this.tricks.push(trick)
}

Elephant.prototype.play = function(){
    let index = Math.floor(Math.random() * this.tricks.length)
    console.log(`${this.name} is ${this.tricks[index]}`)
}

Elephant.paradeHelper = function(elephant){
    console.log(`${elephant.name} is trotting by!`)
}

function dinerBreakfast() {
    str = "I'd like cheesy scrambled eggs please"
    console.log(str)
    return function(food){
        str = `I'd like cheesy scrambled eggs and ${food} please`
        console.log(str)
    }
}