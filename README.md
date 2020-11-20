<style>
    body {
      background-image: url("https://i.pinimg.com/originals/50/65/1e/50651e95ae192df7dddf0ddc8e92a284.jpg");
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size: 100% 100%;
    }
    </style>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TEACHER_DETAILS</title>
    <style>
        table,th,td {
          border : 1px solid black;
          border-collapse: collapse;
        }
        th,td {
          padding: 5px;
        }
        </style>
    
</head>
<body>
<h1>HALTON WALDROF SCHOOL</h1>
<h3>TEACHER DETAILS</h3>
<button type="button" onclick="loadXML()">VIEW HERE</button>
<br><br>
<table id="demo"></table>
<script>
    function loadXML()
    {
        var xhttp=new XMLHttpRequest();
        xhttp.onreadystatechange=function()
        {
            if(this.readyState==4 && this.status==200)
            {
                myFunction(this);
            }
        };
        xhttp.open("GET","teacher.xml",true);
        console.log(xhttp.readyState);
        xhttp.send();
    }
    function myFunction(xml)
    {
        var i;
        var xmlDoc=xml.responseXML;
        var t="<tr><th>HOD</th><th>dept</th></tr>";
        var x=xmlDoc.getElementsByTagName("Department");
        for(i=0;i<x.length;i++)
        {
            t +="<tr><td>" +
            x[i].getElementsByTagName("HOD")[0].childNodes[0].nodeValue +
            "</td><td>" +
            x[i].getElementsByTagName("dept")[0].childNodes[0].nodeValue +
            "</td></td>";
        }
        getdocument.getElementById("demo").innerHTML=t;
    }
</script>
</body>
</html>
