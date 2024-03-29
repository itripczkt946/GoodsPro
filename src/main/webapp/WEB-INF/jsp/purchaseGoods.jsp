<%--
  Created by IntelliJ IDEA.
  User: wenjie
  Date: 2019-03-18
  Time: 17:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>购买商品页面</title>
    <script src="${pageContext.request.contextPath}/statics/js/jquery-1.8.3.min.js"></script>

    <style>
        .container { width:280px; margin:0px auto;}
        table{ width:100%; }
    </style>
</head>
<body>

    <div class="container">
        <form id="myform" action="${pageContext.request.contextPath}/goods/updateGoods">
            <table border="1">
                <tr>
                    <td colspan="2" align="center"><h1>购买商品</h1></td>
                </tr>
                <tr>
                    <td>商品编号</td>
                    <td>
                        <input type="text" name="id" value="${goodsDetail.id}" readonly="readonly"/>
                    </td>
                </tr>
                <tr>
                    <td>商品名称</td>
                    <td>${goodsDetail.name}</td>
                </tr>
                <tr>
                    <td>商品分类</td>
                    <td>${goodsDetail.goodsSort.name}</td>
                </tr>
                <tr>
                    <td>单价(元)</td>
                    <td>
                        <input type="text" name="price" value="${goodsDetail.price}" readonly="readonly"/>
                    </td>
                </tr>
                <tr>
                    <td>剩余数量</td>
                    <td>
                        <input type="text" name="remaining" value="${goodsDetail.remaining}" readonly="readonly"/>
                    </td>
                </tr>
                <tr>
                    <td>购买数量</td>
                    <td>
                        <input type="text" id="num" onblur="calcPrice()" value="0"/>
                    </td>
                </tr>
                <tr>
                    <td>总金额(元)</td>
                    <td>
                        <input type="text" name="totalPirce" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="购买"/>
                        <input type="button" value="返回" onclick="javascript:location.href='${pageContext.request.contextPath}/goods/list'" />
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <script>
        var  price = parseFloat($("input[name='price']").val());  //单价
        var number;  //购买数量
        var remaining = $("input[name='remaining']").val();
        function calcPrice() {
            number = parseInt($("#num").val());  //购买数量
            $("input[name='totalPirce']").val(price * number);  //计算总金额。
            $("input[name='remaining']").val(remaining - number); //计算剩余数量
        }
    </script>
</body>
</html>
