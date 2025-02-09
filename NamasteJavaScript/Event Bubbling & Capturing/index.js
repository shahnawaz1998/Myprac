document.querySelector("#grandparent").addEventListener('click',()=>{
    console.log("GrandParent");
},true)

document.querySelector("#parent").addEventListener('click',()=>{
    console.log("Parent");
},true)

document.querySelector("#child").addEventListener('click',()=>{
    console.log("Child Click");
},true)