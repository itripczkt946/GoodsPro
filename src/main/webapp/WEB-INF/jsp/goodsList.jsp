<%--
  Created by IntelliJ IDEA.
  User: wenjie
  Date: 2019-03-18
  Time: 15:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>商品列表页面</title>
    <script src="${pageContext.request.contextPath}/statics/js/jquery-1.8.3.min.js"></script>
    <style>
        .container {
            text-align:center;
            width:610px;
            height:360px;
            margin:0px auto; /*让div水平居中*/
        }
        table {wdith:100%; }

    </style>
    <script>
        function pageNav(currPageNo) {
            //将当前页码赋值给form表单的 currPageNo
            document.getElementById("myform").currPageNo.value = currPageNo;
            document.getElementById("myform").submit(); //将form表单进行提交
        }
        function submitForm() {
            document.getElementById("myform").submit(); //将form表单进行提交
        }
        $(function(){
            $("tr:odd").css("background-color","yellow");
        });
    </script>
</head>
<body>
    <div class="container">
        <form id="myform" action="${pageContext.request.contextPath}/goods/list">
            <span>请选择商品分类</span>
            <select name="sortId" onchange="submitForm()">
                <option value="0">全部</option>
                <c:forEach items="${sortList}" var="goods">
                    <c:choose>
                        <c:when test="${sortId eq goods.id}">
                            <option value="${goods.id}" selected="selected">${goods.name}</option>
                        </c:when>
                        <c:otherwise>
                            <option value="${goods.id}">${goods.name}</option>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
            </select>
            <%--当前页码--%>
            <input type="hidden" name="currPageNo" value="1"/>
        </form>
        <table border="1">
            <tr>
                <th>商品编号</th>
                <th>商品名称</th>
                <th>商品分类</th>
                <th>产地</th>
                <th>生产日期</th>
                <th>单价(元)</th>
                <th>剩余数量</th>
                <th>购买</th>
            </tr>
            <c:forEach items="${goodsDetailList}" var="detail">
                <tr>
                    <td>${detail.id}</td>
                    <td>${detail.name}</td>
                    <td>${detail.goodsSort.name}</td>
                    <td>${detail.address}</td>
                    <td><fmt:formatDate value="${detail.createDate}" pattern="yyyy-MM-dd"/></td>
                    <td>${detail.price}</td>
                    <td>${detail.remaining}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/goods/queryGoodsDetailById/${detail.id}">购买</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <div class="pager">
            <a href="javascript:pageNav(${page.currPageNo})">首页</a>
            <a href="javascript:pageNav(${page.currPageNo - 1})">上一页</a>
            <a href="javascript:pageNav(${page.currPageNo + 1})">下一页</a>
            <a href="javascript:pageNav(${page.totalPageCount})">末页</a>
            <span>第${page.currPageNo}页/共${page.totalPageCount}页</span>
        </div>
    </div>
</body>
</html>
