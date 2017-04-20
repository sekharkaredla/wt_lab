function getFact()
{
var n=document.getElementById("a").value;
var n1=parseInt(n);
var fact=1;
while(n1>=1)
{
fact=fact*n1;
n1=n1-1;
}
document.write(fact);
}