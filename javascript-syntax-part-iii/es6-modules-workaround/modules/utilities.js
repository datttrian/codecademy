export const formatNumber = number => {
    let numString = String(Math.floor(number));
  
    for (let i = numString.length - 3; i > 0; i -= 3) {
      numString = numString.slice(0,i) + ',' + numString.slice(i);
    }
  
    return numString;
  }