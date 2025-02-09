//Inheritance In Javascript
class Parent{

    talk(){
        return "Child Talks";
    }
}

const child1 = new Parent();
child1.age = 12;
console.log(child1.talk());



//This how inheritance work behind the scene when we declare a class and Inherit in Javascript
function Person(){
    
}

Person.prototype.talk = function(){
    console.log("Talking");
}

const  me = new Person();
me.talk();

//Contructor Function
function Person1(){
    this.talk = function(){ // this.talk is considered as property but in above talk it is considered as method.
        return "Talking constructor"
    }
}

const you = new Person1();
you.talk()

//Ways to Create Object instance

const Human = {
    Walk(){
        return "Walk"
    }
}

const Sk = Object.create(Human)// it is instance of Human and now can access Walk method with SK.Walk()

// Suppose we have 2 independent object but we want obj1 should be parent of obj2 (instance of obj1)

const obj1={
    Sound(){
        console.log("OOOOOHHHHH");
    },
}
const obj2 = {}// currrently if i try to access obj2.Sound() will return undefined because it there is no relation between them

Object.setPrototypeOf(obj2,obj1);
//Now obj2 is instance of obj1 

obj2.Sound()