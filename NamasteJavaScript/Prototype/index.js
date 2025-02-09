(function create(){
    let a = 2;
    console.log(a)
})();
(function create(){
    let a = 2;
    console.log(a)
})();
console.log("start")

setTimeout(function cbT(){
    console.log("CBT called")
},5000);

fetch("https://Api.getUserDetail").then(function cbF(){
    console.log("Data fetched");
})

console.log(
    "End"
)

