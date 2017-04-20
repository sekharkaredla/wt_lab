function getFacts()
{
var n=document.getElementById("a").value;
var n1=parseInt(n);
var count;
for(count=1;count<=n1;count++)
{
var temp=count;
var fact=1;
while(temp>=1)
{
fact=fact*temp;
temp=temp-1;
}
document.write(fact+"<br>");
}
}