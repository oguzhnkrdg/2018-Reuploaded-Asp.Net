<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="masterpage.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="welcome" class="post">
			<h2 class="title">Welcome to Tropical!</h2>
			<h3 class="date"><span class="month">Mar.</span> <span class="day">8</span><span class="year">, 2007</span></h3>
			<div class="meta">
				<p>Posted by Jane Anderson under <a href="#">Uncategorized</a>, <a href="#">Daily Journal</a><br />
					<a href="#">Trackback URI</a> | <a href="#">No Comments</a> | <a href="#">Permalink</a></p>
			</div>
			<div class="story">
				<p><strong>Tropical</strong> is a free template from <a href="http://www.freecsstemplates.org/">Free CSS Templates</a> released under a <a href="http://creativecommons.org/licenses/by/2.5/">Creative Commons Attribution 2.5 License</a>. The photo is from <a href="http://www.pdphoto.org/">PDPhoto.org</a>. You're free to use it for both commercial or personal use. I only ask that you link back to my site in some way. <em>Enjoy :)</em></p>
			</div>
		</div>
		<div id="example" class="post">
			<h2 class="title">Examples of Common Tags</h2>
			<h3 class="date"><span class="month">Feb.</span> <span class="day">24</span><span class="year">, 2007</span></h3>
			<div class="meta">
				<p>Posted by Jane Anderson under <a href="#">Samples</a><br />
					<a href="#">Trackback URI</a> | <a href="#">No Comments</a> | <a href="#">Permalink</a></p>
			</div>
			<div class="story">
				<p>This is an example of a paragraph followed by a blockquote. In posuere  eleifend odio. Quisque semper augue mattis wisi. Maecenas ligula.  Pellentesque viverra vulputate enim. Aliquam erat volutpat lorem ipsum  dolorem.</p>
				<blockquote>
					<p>&ldquo;Pellentesque tristique ante ut  risus. Quisque dictum. Integer nisl risus, sagittis convallis, rutrum  id, elementum congue, nibh. Suspendisse dictum porta lectus. Donec  placerat odio.&rdquo;</p>
				</blockquote>
				<h3>Heading Level Three</h3>
				<p>This is another example of a paragraph followed by an unordered list. In posuere  eleifend odio. Quisque semper augue mattis wisi. Maecenas ligula.  Pellentesque viverra vulputate enim. Aliquam erat volutpat lorem ipsum  dolorem.</p>
				<p>An ordered list example:</p>
				<ol>
					<li>List item number one</li>
					<li>List item number two</li>
					<li>List item number thre</li>
				</ol>
			</div>
		</div>
</asp:Content>
