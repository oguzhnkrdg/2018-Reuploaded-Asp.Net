<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HastaneOtomasyon.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SliderContentPlaceHolder" runat="server">
        <ul id="slider">
    	<li style="background:url(images/banner-img.jpg) no-repeat center top; height:500px; background-size:cover; width:100%";>
        	<div class="slider-caption">
            <p>daha İyİ <span>sağlık</span> İÇİN</p><br/>
			<p>daha İyİ <span>teknolojİ</span></p>
            </div>
        </li>
        <li style="background:url(images/banner-img2.jpg) no-repeat center top; height:500px; background-size:cover; width:100%";>
        	<div class="slider-caption">
            <p>daha İyİ <span>sağlık</span> İÇİN</p><br/>
			<p>daha İyİ <span>teknoloji</span></p>
            </div>
        </li>
        <li style="background:url(images/banner-img3.jpg) no-repeat center top; height:500px; background-size:cover; width:100%";>
        	<div class="slider-caption">
            <p>daha İyİ <span>sağlık</span> İÇİN</p><br/>
			<p>daha İyİ <span>teknolojİ</span></p>
            </div>
        </li>
        <li style="background:url(images/banner-img4.jpg) no-repeat center top; height:500px; background-size:cover; width:100%";>
        	<div class="slider-caption">
            <p>daha İyİ <span>sağlık</span> İÇİN</p><br/>
			<p>daha İyİ <span>teknolojİ</span></p>
            </div>
        </li>
    </ul>
        
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageContentPlaceHolder" runat="server">

     
    <section class="information">
                <div class="container">
                    <div class="text-center">
                        <ul class="information-list">
                            <li>
                                <a href="randevual.aspx">
                                    <span>
                                        <i class="icons icon_1"></i>
                                    </span>
                                    <p>E-Randevu</p>
                                </a>
                            </li>
                            <li>
                                <a href="randevual.aspx">
                                    <span>
                                        <i class="icons icon_2"></i>
                                    </span>
                                    <p>E-Sonuç</p>
                                </a>
                            </li>
                            <li>
                                <a href="randevual.aspx">
                                    <span>
                                        <i class="icons icon_3"></i>
                                    </span>
                                    <p>E-Radyoloji</p>
                                </a>
                            </li>
                            <li>
                                <a href="/e-bebek">
                                    <span>
                                        <i class="icons icon_4"></i>
                                    </span>
                                    <p>E-Bebek</p>
                                </a>
                            </li>
                            <li>
                                <a href="/bizden-haberler">
                                    <span>
                                        <i class="icons icon_5"></i>
                                    </span>
                                    <p>Basında Biz</p>
                                </a>
                            </li>
                            <li>
                                <a href="/sorun-cevaplayalim">
                                    <span>
                                        <i class="icons icon_6"></i>
                                    </span>
                                    <p>Sorun Cevaplayalım</p>
                                </a>
                            </li>
                            <li>
                                <a href="/gorus-ve-onerileriniz">
                                    <span>
                                        <i class="icons icon_7"></i>
                                    </span>
                                    <p>Görüş ve Önerileriniz</p>
                                </a>
                            </li>
                            <li>
                                <a href="/nobetci-eczaneler">
                                    <span>
                                        <i class="icons icon_8"></i>
                                    </span>
                                    <p>Nöbetçi Eczaneler</p>
                                </a>
                            </li>
                            <li>
                                <a href="/anlasmali-kurumlar">
                                    <span>
                                        <i class="icons icon_10"></i>
                                    </span>
                                    <p>Anlaşmalı Kurumlar</p>
                                </a>
                            </li>
                            <li>
                                <a href="/interaktif-hesaplayicilar">
                                    <span>
                                        <i class="icons icon_11"></i>
                                    </span>
                                    <p>İnteraktif Hesaplayıcılar</p>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
    </section>    
    
    <section class="row text-center no-margin">
        <div class="col-md-4 bg-default">
        <div class="home-box">
        	<span class="glyphicon glyphicon-tint"></span>
            <h3>7/24 ACİL SERVİS</h3>
            <p>7 gün 24 saat hizmet veren acil servis bölümünde gerektiğinde diğer uzmanlık dallarındaki hekimlerimizden konsültasyon alınmakta ve gece saatlerinde dahi acil durumlar titizlikle yönetilmektedir.</p>
			<a href="#." class="btn-rounded btn-bordered">Daha Fazla</a>
        </div>
        </div>    	
    	<div class="col-md-4">
        <div class="home-box opening-hours clearfix">
        <span class="glyphicon glyphicon-time"></span>
        <h3>ÇALIŞMA SAATLERİ</h3>
        <p>Acil servis dışında, polikliniklerimizin çalışma saatleri aşağıda sunulmuştur.</p>
 			<ul class="list-unstyled">
				<li class="clearfix">
				<span>
					Pazartesi - Cuma
				</span>
				<div class="value">
					8.00 - 16.00
				</div>
				</li>
				<li class="clearfix">
				<span>
					Cumartesi
				</span>
				<div class="value">
					9.30 - 15.30
				</div>
				</li>
			</ul>
        </div>
        </div>
    	<div class="col-md-4 bg-default">
        <div class="home-box">
        <span class="glyphicon glyphicon-tint"></span>
        <h3>KANSER TEDAVİSİ</h3>
        <p>
        Hastanemizde kemoterapi tedavilerin yapıldığı %100 temiz hava tertibatı ile donatılmış Kemoterapi ünitesinde çağın gerektirdiği kanser tedavileri kemoterapi sorumlusu doktorlar gözetiminde uygulanmaktadır.</p>
		<a href="#." class="btn-rounded btn-bordered">Daha Fazla</a>
        </div>
        </div>
    </section>
    <div class="bosluk_ata_alt">&nbsp;</div>
    <section class="about-sec text-center" data-stellar-background-ratio="0.3">
        <div class="container">
            <h1>AMP11B MEDİKAL</h1>
            <p class="lead">2018 yılında İstanbul'da kurulan AMP11B Medikal, sahip olduğu seçkin kadrosu ile dünya standartlarında hizmet veren A Sınıfı bir hastanedir.</p>
            
            <div class="row text-center" id="counters">
            	<div class="col-md-3">
                	<div class="counter">
                       <span class="quantity-counter1 highlight">180</span>
                       <h6 class="counter-details">KURUMSAL ÖDÜL</h6>
                     </div>
                </div>
                <div class="col-md-3">
                	<div class="counter">
                       <span class="quantity-counter2 highlight">99</span>
                       <h6 class="counter-details">DEYİMLİ PERSONEL</h6>
                     </div>
                </div>
                <div class="col-md-3">
                	<div class="counter">
                       <span class="quantity-counter3 highlight">50</span>
                       <h6 class="counter-details">YATAK KAPASİTESİ</h6>
                     </div>
                </div>
                <div class="col-md-3">
                	<div class="counter">
                       <span class="quantity-counter4 highlight">362</span>
                       <h6 class="counter-details">SON TEKNOLOJİK CİHAZ</h6>
                     </div>
                </div>
            </div>
            
        </div>
    </section>
    
    
    <section class="latest-news">
    <div class="container">
    	<div class="row">
        	<div class="col-md-8">
            	<h2 class="bordered light"><span>BİZDEN</span> HABERLER</h2>

                <asp:Repeater ID="rpt_BizdenHaberler" runat="server">
                    <HeaderTemplate>
<div class="row">
                    </HeaderTemplate>

                    <ItemTemplate>

    <div class='<%# Container.ItemIndex%2 == 0 ? "col-md-5" : "col-md-7" %>'>

                    <article class="blog-item">
                        <div class="blog-thumbnail">
                        <img alt="" src='<%#Eval("Resim")%>'/>
                        <div class="blog-date"><p class="day"><%#Eval("Gun")%></p><p class="monthyear"><%#Eval("Ay")%> <%#Eval("Yil")%></p></div>
                        </div>
                        <div class="blog-content">
                        <h4 class="blog-title"><a href="#"><%#Eval("Baslik")%></a></h4>
                        <p class="blog-meta">Ekleyen: <a href="#"><%#Eval("Ekleyen")%></a> | Etiketler: <a href="#"><%#Eval("Etiket1")%></a>, <a href="#"><%#Eval("Etiket2")%></a>, <a href="#"><%#Eval("Etiket3")%></a><%#Eval("Icerik")%>                   
                        <a href="#." class="btn btn-default btn-mini btn-rounded">DAHA FAZLA</a>
                        </div>  
                       
                    </article>
                    </div> 


                    </ItemTemplate>
                    <FooterTemplate>
</div>
                    </FooterTemplate>
                </asp:Repeater>
               
                	
              



            </div>
        	<aside class="col-md-4">
            	<h2 class="bordered light"><span>DOKTORLARIMIZ</span>  </h2>
            	<div class="what-doctor-say clearfix">
                <div id="carousel-meet-doctors" class="carousel slide text-center" data-ride="carousel">
                      <!-- Indicators -->
                      <ol class="carousel-indicators">
                        <li data-target="#carousel-meet-doctors" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-meet-doctors" data-slide-to="1"></li>
                        <li data-target="#carousel-meet-doctors" data-slide-to="2"></li>
                      </ol>
                    
                      <!-- Wrapper for slides -->
                      <div class="carousel-inner">
                          <asp:Repeater ID="rpt_DoktorGetir" runat="server">

                              <ItemTemplate>
                                   <div class='<%# Container.ItemIndex == 0 ? "item active text-center" : "item" %>'>
                                  <img src='<%# Eval("D_FotografKucuk") %>' class="img-circle img-thumbnail" alt="" title=""/>
                        	        <h4><%# Eval("D_AdSoyad") %><br /><span><%# Eval("B_Adi") %></span></h4>
                                    <p><%# Eval("D_Bilgiler") %> </p>
                                </div>
                              </ItemTemplate>
                                                            
                          </asp:Repeater>                                                 
                      </div>
					</div>
                
                	
                </div>
                <h2 class="bordered light"> <span>TIBBİ BRİMLERİMİZ</span></h2>
                <div class="panel-group" id="accordion">
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title active">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                          <span><i class="fa fa-plus fa-minus"></i></span>Acil Servis
                        </a>
                      </h4>
                    </div>
                    
                    <div id="collapseOne" class="panel-collapse collapse in">
                      <div class="panel-body">
                      
                        Modern tıbbi cihaz ve yatak başı monitörleri ile donatılmış olan acil servisimizde 24 saat boyunca laboratuar tahlillerinin ve radyolojik tetkiklerin yapılması mükündür.<br/>

Hastanemiz acil servisine başvuruda bulunan her hasta acil servis doktoru ve hemşiresi tarafından değerlendirilmekte, uygun tetkik ve tedavisi hemen yapılmakta, konsültasyon gerekiyorsa ilgili branş hekiminin zaman kaybetmeksizin duruma müdahale etmesi sağlanmaktadır.
                      </div>
                    </div>
                  </div>
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                          <span><i class="fa fa-plus"></i></span>Ağız ve Diş Sağlığı Polikliniği
                        </a>
                      </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse">
                      <div class="panel-body">
                       Ağız ve Diş Cerrahisinin her alanında gelişmiş tanı ve tedavi hizmeti sunan hastanelerimiz koruyucu diş hekimliği, Endodonti, ağız ve çene cerrahisi, implantoloji, estetik diş hekimliği, protetik diş tedavisi, cerrahi tedavi (gömülü diş çekimleri operasyonları, kist operasyonu, implant), alanlarında modern ve en gelişmiş uygulamalarla hizmet veriyor.
                      </div>
                    </div>
                  </div>
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                          <span><i class="fa fa-plus"></i></span>Beslenme ve Diyet Polikliniği
                        </a>
                      </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse">
                      <div class="panel-body">
                        Hastanemizde sağlıklı bir yaşam için, tecrübeli ve yenilikleri takip eden diyetisyenimiz  ile beraber, belirlediğiniz hedeflere sağlıklı bir şekilde ve başarıyla ulaşacaksınız.
                      </div>
                    </div>
                  </div>
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">
                          <span><i class="fa fa-plus"></i></span>Çocuk Sağlığı ve Hastalıkları
                        </a>
                      </h4>
                    </div>
                    <div id="collapseFour" class="panel-collapse collapse">
                      <div class="panel-body">
                        Üst ve alt solunum yoluenfeksiyonları, sinüzit, orta kulak enfeksiyonları, bronşit,bronşiolit, gastroenterit, hepatit, menenjit tanı vetedavisi,<br/>
Alerji (cilt alerjisi, ürtiker, egzema, anjioödem, besinalerjisi, hışıtılı çocuk, astım, alerjik rinit) hastalıklarınınmuayene ve kanda bakılabilen RAST testi ile tanısı, tedavisive takibi,
Page Maker including versions.
                      </div>
                    </div>
                  </div>
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive">
                          <span><i class="fa fa-plus"></i></span>Göz Hastalıkları
                        </a>
                      </h4>
                    </div>
                    <div id="collapseFive" class="panel-collapse collapse">
                      <div class="panel-body">
                        Rutin bir göz muayenesinin ilk adımını hastanın görme sorunuyla ilgili şikayetlerinin dinlenmesidir. Şikayetlerin özelliklerine göre rutin bir göz muayenesinde öncelikle, dış görünüm itibariyle kaşlar, göz kapakları ve gözlerin bakış pozisyonu gözlenir. Bilgisayarlı ORM (Otorefraktometre) ve retinoskop yardımıyla hastanın refraksiyon kusuru ölçülür. Her iki gözün gözlüksüz ve gözlüklü görme keskinlikleri tespit edilir. Biomikroskopi muayenesinde kirpikler, konjoktiva, kornea ve gözün diğer ön segment elemanları dikkatlice muayene edilir. Ardından göz tansiyonları ölçülür.
                      </div>
                    </div>
                  </div>
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseSix">
                          <span><i class="fa fa-plus"></i></span>Kulak Burun Boğaz Hastalıkları
                        </a>
                      </h4>
                    </div>
                    <div id="collapseSix" class="panel-collapse collapse">
                      <div class="panel-body">
                       Polikliniğimizde son teknolojik aletlerle donatılmış, görüntülü (Endoskopik) muayeneler ile işlem yapılmaktadır. Konularında geniş tecrübelere sahip uzman doktorlarımız, yapılan muayenelerinde hastalığın tanı ve tedavisini sağlamaktadırlar.
                      </div>
                    </div>
                  </div>
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseSeven">
                          <span><i class="fa fa-plus"></i></span>Kardiyoloji
                        </a>
                      </h4>
                    </div>
                    <div id="collapseSeven" class="panel-collapse collapse">
                      <div class="panel-body">
                        Kardiyoloji bölümümüz kardiyolojinin her alanında klinik ve laboratuvar çalışmaların yürütüldüğü, tanı ve tedavi yöntemlerinin uygulandığı bir bölümdür. Erişkin Kardiyoloji bünyesinde bir koroner bakım ünitesi, kateter hastaların takip edildiği servis, kardiyoloji polikliniği, girişimsel olmayan tetkiklerin (EKG, efor testi, ekokardiyografi, vb.) yapıldığı kardiyoloji laboratuvarı bulunmaktadır.
                      </div>
                    </div>
                  </div>
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseEight">
                          <span><i class="fa fa-plus"></i></span>Ortopedi ve Travmatoloji
                        </a>
                      </h4>
                    </div>
                    <div id="collapseEight" class="panel-collapse collapse">
                      <div class="panel-body">
                        Atroskopik omuz ve ayak bileği ameliyatları başarıyla yapılmaktadır.<br/>
Skolyoz vertabre kırığı, spinalstenoz gibi omurga ameliyatları rutin yapılan ameliyatlar arasındadır.<br/>
Kalça ve diz protezinde en son, gelişmiş protezler kullanılmakta olup, ayak bileği, parmak ve omuz protezleri sık yapılan ameliyatlar arasındadır.<br/>
Kırıklarda internal ve externalfixator tespiti, extremite uzatma ameliyatları, çocuk felci ve beyin felcinde deformite, düzeltici ameliyatlar başarıyla yapılmaktadır.
                      </div>
                    </div>
                  </div>
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseNine">
                          <span><i class="fa fa-plus"></i></span>Göğüs Hastalıkları
                        </a>
                      </h4>
                    </div>
                    <div id="collapseNine" class="panel-collapse collapse">
                      <div class="panel-body">
                        Göğüs Hastalıkları Bölümü'nün tedavi alanına giren hastalıkların başında Akciğer Kanseri, Astım, Alerji, Bronşit, Pnömoni, Plorezi, Sarkoidoz, Pnomotorax, Pulmoner Emboli'dir. Bu hastalıkların tanısı için tüm hastanelerimizde bulunan ileri radyolojik görüntüleme tekniklerinin yanı sıra, Solunum Fonksiyon Laboratuvarı, alerji testleri, Bronkoskopi cihazı gibi olanaklar da hastalarımıza çağdaş tedavi hizmetlerinin sunulmasında hekim kadromuza destek vermektedir.
                      </div>
                    </div>
                  </div>
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTen">
                          <span><i class="fa fa-plus"></i></span>Genel Cerrahi
                        </a>
                      </h4>
                    </div>
                    <div id="collapseTen" class="panel-collapse collapse">
                      <div class="panel-body">
                        Genel Cerrahi kliniğimizde bütün doku ve organların ameliyatları açık, kapalı (endoskobik) olarak,  konularında geniş tecrübelere sahip uzman doktorlarımız tarafından  yapılmaktadır.<br/>
Genel Cerrahi kliniğinde yapılan ameliyatlar ;<br/>
Endokrin Cerrahisi (Guatr Ameliyatları)<br/>
Sindirim Sistemi Cerrahisi (Mide, Barsak, Pankreas, Safra Kesesi,  Safra Yolları, Apandisit)<br/>
Fıtık Ameliyatları (Göbek Fıtığı, Eski Ameliyat yerinde Oluşan Fıtıklar)<br/>
Onkolojik Cerrahisi (Mide, Barsak, Pankreas Kanserleri)<br/>
Varis tedavilerinin de uygulandığı hastanemizde, endoskopi cihazlarımızla; batın travmalarında, akut batın sendromlarında, safra kesesi, mide, apandisit ve fıtıklarda tanı ve tedavi amaçlı girişimler de yapılmaktadır.
                      </div>
                    </div>
                  </div>
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseEleven">
                          <span><i class="fa fa-plus"></i></span>Dahiliye (İç Hastalıkları)
                        </a>
                      </h4>
                    </div>
                    <div id="collapseEleven" class="panel-collapse collapse">
                      <div class="panel-body">
                        Günümüzdeki bilimsel gelişmelerin ışığında ayrıntılı fizik muayene doğrultusunda gerekli modern tetkikler, laboratuar (kan, idrar, dışkı vb.), radyolojik incelemeler (röntgen, ultrasonografi, mamografi, bilgisayarlı tomografi, kemik yoğunluğu, vb.), gerekli durumlarda endoskopik incelemeler (üst gastrointestinal sistem endoskopisi, kolonoskopi, vb.) ve EKG, Ekokardiyografi gibi gerekli tüm tetkikleri kullanarak hastalıkların erken ve kesin tanısını sağlar.
                      </div>
                    </div>
                  </div>
				</div>
            </aside>
        </div>
    </div>
    </section>
    
    
    <section class="testimonials bg-white">
    	<div class="container">
        	<div class="row">
            	<div class="col-md-12">
                	<div id="carousel-testimonials" class="carousel slide testimonials-carousel" data-ride="carousel">
                      <!-- Indicators -->
                      <ol class="carousel-indicators">
                        <li data-target="#carousel-testimonials" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-testimonials" data-slide-to="1"></li>
                        <li data-target="#carousel-testimonials" data-slide-to="2"></li>
                      </ol>


                        <asp:Repeater ID="rpt_hastaGorus" runat="server">
                            <HeaderTemplate>
 <div class="carousel-inner text-center">
                            </HeaderTemplate>
                            <ItemTemplate>

                        <div class='<%# Container.ItemIndex == 0 ? "item active text-center" : "item" %>'>
                                           <h1>HASTALARIMIZIN BİZİM HAKKIMIZDAKİ GÖRÜŞLERİ</h1>
                          <p><%#Eval("HG_Gorus")%></p>
							<div class="testimonials-patient-detail">
                            	<img src="images/patient-img.png" class="img-circle img-thumbnail" alt="" title=""/>
                                <p><%#Eval("adSoyad")%><span><%#Eval("B_Adi")%> BÖLÜMÜ HASTASI</span></p>
                            </div>
                        </div>                     
                            </ItemTemplate>
                            <FooterTemplate>
 </div>
                            </FooterTemplate>
                        </asp:Repeater>
                      <!-- Wrapper for slides -->
                     

					</div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
