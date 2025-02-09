const cart = ["jean","shirt"];

const promise = createOrder(cart);
console.log(cart);

promise
.then((OrderID)=>{ return OrderID;})
.then((OrderID)=> { return proceedToPayment(OrderID)})
.then((paymentInfo)=>{ console.log(paymentInfo);return paymentInfo})


function createOrder(cart){
//Producer
    const pr = new Promise( (resolve,reject)=>{
        //createOrder
        //ValidateCart
        //OrderID

        if(!validateCart(cart)){
            const err = new Error("cart is not valid");
              reject(err);
        }
        const OrderID = '123'
        if(OrderID){
             resolve(OrderID)
        }
    });

    return pr;
}

function validateCart(cart) 
{
    return true;
}

function proceedToPayment(OrderID){

    return new Promise((resolve,reject)=>{
        resolve("payment successful");
    })
}