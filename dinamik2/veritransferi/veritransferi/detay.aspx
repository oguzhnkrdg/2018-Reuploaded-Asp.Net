﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detay.aspx.cs" Inherits="veritransferi.detay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

body{
	 color:#333;
	 font-size:15px;
}

#kapsayici{
		   margin:0 auto;
		   width:1050px;
}

.yorum{
	   margin-bottom:25px;
	   overflow:auto;
}

.yorum .resim{
	          width:100px;
			  height:100px;
			  float:left;			 
}

.yorum .resim img{
					width:100px;
					height:100px;
					border-radius:50%;
}

.yorum .yazi{
				float:left;
				background-color:#ddd;
				width:800px;
				margin-left:50px;
				padding:25px;
				border-radius:30px;
				position:relative;
}

.kenarlık{
			position:absolute;
			background:url(resimler/ucgen.png) no-repeat;
			width:100px;
			height:50px;
			left:-40px;
			top:40px;
}

.yorum .yazi .yıldızgri{
			background:url(resimler/yildiz-gri.svg) no-repeat;
			width:64px;
			height:10px;
			position:absolute;
			top:50px;
			right:50px;
			background-size:contain;			
}

.yorum .yazi .yıldızsari{
							background:url(resimler/yildiz-sari.svg) no-repeat;
							width:64px;
							height:10px;
							background-size:cover;
}
 
            
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="kapsayici">


<div class="yorum">
<h3><strong>Öğrenci Detayları</strong></h3>
<div class="resim"><img src="<%=resim %>"/></div>
<div class="yazi">
<h3><%=isim %><%=soyisim %> <br />
<%=sehir %>
    </h3>
<div class="kenarlık"></div>
<div class="yıldızgri"><div class="yıldızsari"></div></div>
</div>
</div>


</div>
    </form>
</body>
</html>
