<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List,chap06.model.PizzaOrder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Pizza form</title>
</head>
<body>

	<div>
		<div>
			<span>����1</span> <br> M 30,000��<input type="radio" name="size1"
				form="form1" value="medium"> L 35,900��<input type="radio"
				name="size1" form="form1" value="Large"> <br> <input
				type="number" name="qty1" min="1" value="0" form="form1"> <br>
			<button type="submit" form="form1">�߰��ϱ�</button>
			<form action="<%=request.getContextPath() %>/pizza/cart/add"
				method="POST" id="form1"></form>
		</div>
		<div>
			<div>
				<span>����2</span> <br> M 31,000��<input type="radio"
					name="price2" form="form2"> L 37,900��<input type="radio"
					name="price2" form="form2"> <br> <input type="number"
					name="qty2" min="1" value="0"> <br>
				<button>�߰��ϱ�</button>
			</div>
		</div>
		<div>
			<div>
				<span>����3</span> <br> M 29,000��<input type="radio"
					name="price3" form="form3"> L 34,900��<input type="radio"
					name="price3" form="form4"> <br> <input type="number"
					name="qty3" min="1" value="0"> <br>
				<button>�߰��ϱ�</button>
			</div>
		</div>
		<div>
			<div>
				<span>����4</span> <br> M 29,000��<input type="radio"
					name="price4" form="form4"> L 34,900��<input type="radio"
					name="price4" form="form4"> <br> <input type="number"
					name="qty4" min="1" value="0"> <br>
				<button>�߰��ϱ�</button>
			</div>
		</div>
	</div>
	
	<h4># ���� ��ٱ��� ���</h4>
	
	<ul></ul>
	<%
		Object cart = session.getAttribute("cart");
	
		if (cart == null) {
			out.print("<li>��ٱ��ϰ� ����ֽ��ϴ�.</li>");
		} else {
			for (PizzaOrder order : (List<PizzaOrder>) cart) {
				out.print(order);
				
			}
		}
	%>
</body>
</html>