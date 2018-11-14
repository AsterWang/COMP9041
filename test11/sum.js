function sum(list) {
	const a = "1";
	const b = "2";
	const result = Number(a) + Number(b);
	console.log(result);
	console.log(int(a, 10) + int(b, 10));
  	return list.reduce((a, b) => a + + b, 0);
}

module.exports = sum;
