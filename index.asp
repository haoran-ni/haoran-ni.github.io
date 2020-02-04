<!DOCTYPE html>
<html>
<body>

<%
response.write("Hello World!")
%>

<%
Set fs=CreateObject("Scripting.FileSystemObject")
Set a=fs.openTextFile(server.mappath("count.txt"))
count=a.readline
response.write " " & count
count=count+1
Set fs=CreateObject("Scripting.FileSystemObject")
Set a=fs.createTextfile(server.mappath("count.txt"))
a.writeline(count)
%>

</body>
</html>



