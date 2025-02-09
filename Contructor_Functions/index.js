function Person(name){  //Contructor function start with capital letter but itcan work without capital too.
    //step1 for new keyword const this = {]
    this.name = name;
    // step2 for new keyword return this
}

// The "new" keyword JS does 2steps for us create this object and return this object behind thew scene [Refer to line 2 & 4]
const sina = new Person("Sina")

console.log(sina)
//The Object will be create of type Person {name=Sina} this the output of it

function Human(name,gender,age){
    this.name = name;
    this.gender = gender;
    this.age = age;
    this.intro = ()=>{
        return `My name is ${this.name} and I m ${this.age} years old.`
    }
}

const Sam = new Human('Sam','M','22');
console.log(Sam.intro())