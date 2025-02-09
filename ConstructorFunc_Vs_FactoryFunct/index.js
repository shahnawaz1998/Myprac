// Factory Function returns a Object

function createPerson(name){
    return {
        name:name,
        talk(){
            return `I am ${this.name}`
        }
    }
}

const Baap = createPerson('Murshid')
console.log(Baap)

const Beta = createPerson('Shahanwaz')
console.log(Beta)

// From this we understand that each object return from 'createPerson' get its own copy of function 'talk' so more memory is in use.
// We are using same function to create objects (ie Baap & Beta) but beta is not using inheritance Herarchy of createPerson 'Talk' function
Beta.talk = function(){
    return `Hello,I am ${this.name}`
}

// But we want that 'talk' function should be inherited and cannot be changed.
// Step 1 : Don't return object directly as we are doing in "createPerson" method above.
// Step 2 : Create a Prototype 'myProto'.
// Step 3 : use 'Object.create()' method and pass that proto 'myProto' in it.

const myProto = { //Proto method to pass in Object.create() method in createPersonFunction()
    talk(){
        return `Hello,I am ${this.name}`
    }
}

function createPersonFunction(name){
    return Object.create(myProto,{
        name:{
            value:name
        }
    })
}

const me = createPersonFunction("Shaikh")
const you = createPersonFunction("khan")
me.talk()
console.log(me.talk()) //OP: Hello,I am Shaikh
console.log(you.talk())//OP: Hello,I am khan

// Now suppose we try to manipulate 'talk' method for 'me' object than it will be manuplated for 'you' too because of inheritance Herarchy

me.__proto__.talk = function(){
     return `Ohh,I am ${this.name}`
}
console.log(me.talk()) //OP:Ohh,I am Shaikh
console.log(you.talk())//OP:Ohh,I am Khan
