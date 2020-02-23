/*##waranyoo## 23-02-2020*/
function isPalindrome(word) {
    word = word.toLowerCase();
    var half = word.length/2;
    return word.slice(0, half) === word.slice(-half).split("").reverse().join("");
  }
  
  var word = 'Deleveled'
  console.log( word , isPalindrome(word) )
  