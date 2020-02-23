let wordsArray = ["VMRCO", "VORCM", "MCRTOX", "ZXTAC", "XZATC", "XMTCOR", "OXVS", "AZTXC", "VXOS", "RZAT", "MRCOTX", "SVXO","TRAZ", "ZTAR", "MVOCR"];
var regex = /^[a-zA-Z0-9]*$/;
let grouped = wordsArray.reduce(function(acc, curr) {
  
  let isSpecial = regex.test(curr);

  if (!isSpecial) {
    acc.special.push(curr)
  } else if (acc.hasOwnProperty(curr.charAt(0))) {
    acc[curr.charAt(0)].push(curr)
  } else {
    acc[curr.charAt(0)] = [curr]

  }
  return acc;

}, {
  special: []
})

console.log(grouped)