function Human(n){
    const name=n;
     function sayHi(){
        console.log(`Hii it ${name}`)
     }
     function sayHowYouFee(){
        console.log(`${name} feeling good today!!`)
     }
     return {sayHi,sayHowYouFee}
}

const sam = Human("Sam")
const raj = Human("Raj")


// I want to  pss a paramaeter to my function but i dont want to invoke it.
// so we add return another function from our outer function,And outer function takes paramter but it does not do anything jsut return another function.


// Lets create 3 button and want to change the font size on click Event  
function makeSizer(size) {
   return function() {
     document.body.style.fontSize = size + 'px';
   };
 }
 
 const  size12 = makeSizer(12);
 const  size14 = makeSizer(14);
 const  size16 = makeSizer(16);
 
 document.getElementById('size-12').onclick = size12;
 document.getElementById('size-14').onclick = size14;
 document.getElementById('size-16').onclick = size16;
