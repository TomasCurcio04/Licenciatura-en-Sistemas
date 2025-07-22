function total(prices, amounts) {
  let total = 0;
  Object.keys(amounts).forEach(producto => {
    total += prices[producto] * amounts[producto];
  });
  return total;
}


 var prices = {
 MILK: 48.90,
 BREAD: 90.50,
 BUTTER: 130.12
 };
 var amounts = {
 MILK: 1,
 BREAD: 0.5,
 BUTTER: 0.2
 }
 console.log(typeof prices);
 console.log(prices.BREAD);
 console.log(amounts["MILK"]);
 
 console.log(total(prices, amounts));
 var amounts2 = {
 BREAD: 1.5
 };
 console.log(total(prices, amounts2));
