function compute()
{
var n=document.getElementById("displayfeild").value;
/*document.write(n+"<br>");*/
var result=eval(n);
/*document.writeln(result);*/
document.getElementById("displayfeild").value=result;
}