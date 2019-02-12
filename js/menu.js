var d = new Date();
var year = d.getFullYear();

var month = '' + (d.getMonth() + 1);
if (month.length == 1) {
  month = '0' + month;
}

var date = d.getDate();
if (date.length == 1) {
  date = '0' + date;
}

document.title = document.title + " - " + year + '-' + month + '-' + date ;


// document.getElementById("date").innerHTML = (d.getMonth() + 1) + '•' + d.getDate() + '•' + d.getFullYear();
