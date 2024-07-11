<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"

</head>
<body class="container">
<form:form action="/hdct/edit" method="post" modelAttribute="edit">
    <label>Id</label>
    <form:input path="id" cssClass="form-control" readonly="true"/>
    <form:errors path="id" cssClass="text text-danger"/><br>
    <label>Ten khach hang</label>
    <form:select path="idHoaDon" cssClass="form-control">
        <form:options items="${hoaDon}" itemLabel="idKH.ten"/>
    </form:select>
    <form:errors path="idHoaDon" cssClass="text text-danger"/><br>
    <label>Ten san pham</label>
    <form:select path="idSpct" cssClass="form-control">
        <form:options items="${spct}" itemLabel="idSanPham.ten"/>
    </form:select>
    <form:errors path="idSpct" cssClass="text text-danger"/><br>
    <label>So luong</label>
    <form:input path="soLuong" cssClass="form-control"/>
    <form:errors path="soLuong" cssClass="text text-danger"/><br>
    <label>Don gia</label>
    <form:input path="donGia" cssClass="form-control"/>
    <form:errors path="donGia" cssClass="text text-danger"/><br>
    <label>Trang thai</label>
    <form:radiobuttons path="trangThai" items="${tt}" delimiter=" "/>
    <form:errors path="trangThai" cssClass="text text-danger"/><br>
    <br>
    <button type="submit" class="btn btn-success">Update</button>
</form:form>
</body>
</html>