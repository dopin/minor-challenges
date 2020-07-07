const array = Array.from(Array(10).keys()).slice(1);
console.log(array.reduce((acc, x) => acc + x));
