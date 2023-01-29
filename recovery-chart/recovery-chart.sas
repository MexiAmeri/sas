/****************************************************************************************
 * Create data base
 *  - These tables are structured based on imports that have been tranpsoed
 ****************************************************************************************/

	/************************************************************************************
	 * List of group ID's and titles
 	 *  - This feeds the looping macro
	 ************************************************************************************/
	proc sql;
	create table SORTED_GROUPS (Cat char(11), Title char(90)) ;
	insert into SORTED_GROUPS values('CAT_1','Sample Group');
	run;

	/************************************************************************************
	 * Raw data for recovery chart
	 ************************************************************************************/
	proc sql;
	create table finalTransposedPrep (Source char(15), _LABEL_ char(40), Column1 Char(73), CAT_1 char(20),Date  DATE) ;
	insert into finalTransposedPrep
	values('Cat','Cat','','CAT_1',.)
	values('Title','Title','','Sample Group',.)

	values('edf_median','edf_median','5/31/2002','0.678355789900205','31-May-02'd)
	values('edf_median_0001','edf_median','6/28/2002','0.888887809906675','28-Jun-02'd)
	values('edf_median_0002','edf_median','7/31/2002','1.24920991513214','31-Jul-02'd)
	values('edf_median_0003','edf_median','8/30/2002','1.56098628421395','30-Aug-02'd)
	values('edf_median_0004','edf_median','9/30/2002','1.37345960026358','30-Sep-02'd)
	values('edf_median_0005','edf_median','10/31/2002','2.01328465476097','31-Oct-02'd)
	values('edf_median_0006','edf_median','11/29/2002','1.67447532709623','29-Nov-02'd)
	values('edf_median_0007','edf_median','12/31/2002','1.81222869796154','31-Dec-02'd)
	values('edf_median_0008','edf_median','1/31/2003','1.80582134336387','31-Jan-03'd)
	values('edf_median_0009','edf_median','2/28/2003','1.78158688967794','28-Feb-03'd)
	values('edf_median_0010','edf_median','3/31/2003','1.62648788542166','31-Mar-03'd)
	values('edf_median_0011','edf_median','4/30/2003','2.00212386167546','30-Apr-03'd)
	values('edf_median_0012','edf_median','5/30/2003','2.02453547079982','30-May-03'd)
	values('edf_median_0013','edf_median','6/30/2003','1.33365038114619','30-Jun-03'd)
	values('edf_median_0014','edf_median','7/31/2003','1.43539562140406','31-Jul-03'd)
	values('edf_median_0015','edf_median','8/29/2003','1.05768206669176','29-Aug-03'd)
	values('edf_median_0016','edf_median','9/30/2003','1.05060797383667','30-Sep-03'd)
	values('edf_median_0017','edf_median','10/31/2003','1.10852019102019','31-Oct-03'd)
	values('edf_median_0018','edf_median','11/28/2003','0.867859310839127','28-Nov-03'd)
	values('edf_median_0019','edf_median','12/31/2003','0.716550209087935','31-Dec-03'd)
	values('edf_median_0020','edf_median','1/30/2004','0.722758292324732','30-Jan-04'd)
	values('edf_median_0021','edf_median','2/27/2004','0.69192049521193','27-Feb-04'd)
	values('edf_median_0022','edf_median','3/31/2004','0.744992264904944','31-Mar-04'd)
	values('edf_median_0023','edf_median','4/30/2004','0.712873907350922','30-Apr-04'd)
	values('edf_median_0024','edf_median','5/31/2004','0.660783422461323','31-May-04'd)
	values('edf_median_0025','edf_median','6/30/2004','0.720481644783933','30-Jun-04'd)
	values('edf_median_0026','edf_median','7/30/2004','0.830646175331042','30-Jul-04'd)
	values('edf_median_0027','edf_median','8/31/2004','0.746151856019326','31-Aug-04'd)
	values('edf_median_0028','edf_median','9/30/2004','0.71988155394366','30-Sep-04'd)
	values('edf_median_0029','edf_median','10/29/2004','0.668038969306667','29-Oct-04'd)
	values('edf_median_0030','edf_median','11/30/2004','0.359523412791141','30-Nov-04'd)
	values('edf_median_0031','edf_median','12/31/2004','0.364853296878328','31-Dec-04'd)
	values('edf_median_0032','edf_median','1/31/2005','0.343429101598017','31-Jan-05'd)
	values('edf_median_0033','edf_median','2/28/2005','0.39027764975089','28-Feb-05'd)
	values('edf_median_0034','edf_median','3/31/2005','0.375117133972046','31-Mar-05'd)
	values('edf_median_0035','edf_median','4/29/2005','0.368794712774163','29-Apr-05'd)
	values('edf_median_0036','edf_median','5/31/2005','0.366185331596489','31-May-05'd)
	values('edf_median_0037','edf_median','6/30/2005','0.305885578884456','30-Jun-05'd)
	values('edf_median_0038','edf_median','7/29/2005','0.279610688456585','29-Jul-05'd)
	values('edf_median_0039','edf_median','8/31/2005','0.268128818598613','31-Aug-05'd)
	values('edf_median_0040','edf_median','9/30/2005','0.310639819743965','30-Sep-05'd)
	values('edf_median_0041','edf_median','10/31/2005','0.337977612130271','31-Oct-05'd)
	values('edf_median_0042','edf_median','11/30/2005','0.324752236984309','30-Nov-05'd)
	values('edf_median_0043','edf_median','12/30/2005','0.265543685002504','30-Dec-05'd)
	values('edf_median_0044','edf_median','1/31/2006','0.218912225581113','31-Jan-06'd)
	values('edf_median_0045','edf_median','2/28/2006','0.227943897381227','28-Feb-06'd)
	values('edf_median_0046','edf_median','3/31/2006','0.202004988285032','31-Mar-06'd)
	values('edf_median_0047','edf_median','4/28/2006','0.174228246909077','28-Apr-06'd)
	values('edf_median_0048','edf_median','5/31/2006','0.262717819681517','31-May-06'd)
	values('edf_median_0049','edf_median','6/30/2006','0.226051709478687','30-Jun-06'd)
	values('edf_median_0050','edf_median','7/31/2006','0.239984680905458','31-Jul-06'd)
	values('edf_median_0051','edf_median','8/31/2006','0.447542956471818','31-Aug-06'd)
	values('edf_median_0052','edf_median','9/29/2006','0.485581073885568','29-Sep-06'd)
	values('edf_median_0053','edf_median','10/31/2006','0.361091324548526','31-Oct-06'd)
	values('edf_median_0054','edf_median','11/30/2006','0.313791687320561','30-Nov-06'd)
	values('edf_median_0055','edf_median','12/29/2006','0.354346180473533','29-Dec-06'd)
	values('edf_median_0056','edf_median','1/31/2007','0.293098733561996','31-Jan-07'd)
	values('edf_median_0057','edf_median','2/28/2007','0.280716928598413','28-Feb-07'd)
	values('edf_median_0058','edf_median','3/30/2007','0.229829069588735','30-Mar-07'd)
	values('edf_median_0059','edf_median','4/30/2007','0.237398794383565','30-Apr-07'd)
	values('edf_median_0060','edf_median','5/31/2007','0.182969066850012','31-May-07'd)
	values('edf_median_0061','edf_median','6/29/2007','0.181043337789435','29-Jun-07'd)
	values('edf_median_0062','edf_median','7/31/2007','0.177731819604774','31-Jul-07'd)
	values('edf_median_0063','edf_median','8/31/2007','0.16488452333199','31-Aug-07'd)
	values('edf_median_0064','edf_median','9/28/2007','0.142432658524872','28-Sep-07'd)
	values('edf_median_0065','edf_median','10/31/2007','0.137627770483014','31-Oct-07'd)
	values('edf_median_0066','edf_median','11/30/2007','0.146541813923988','30-Nov-07'd)
	values('edf_median_0067','edf_median','12/31/2007','0.173068841216716','31-Dec-07'd)
	values('edf_median_0068','edf_median','1/31/2008','0.26589204128752','31-Jan-08'd)
	values('edf_median_0069','edf_median','2/29/2008','0.340396831225298','29-Feb-08'd)
	values('edf_median_0070','edf_median','3/31/2008','0.328913520694408','31-Mar-08'd)
	values('edf_median_0071','edf_median','4/30/2008','0.265830669969708','30-Apr-08'd)
	values('edf_median_0072','edf_median','5/30/2008','0.302943432604352','30-May-08'd)
	values('edf_median_0073','edf_median','6/30/2008','0.587492763558958','30-Jun-08'd)
	values('edf_median_0074','edf_median','7/31/2008','0.606509796670719','31-Jul-08'd)
	values('edf_median_0075','edf_median','8/29/2008','0.518721507963967','29-Aug-08'd)
	values('edf_median_0076','edf_median','9/30/2008','0.659010411472745','30-Sep-08'd)
	values('edf_median_0077','edf_median','10/31/2008','0.996452905762852','31-Oct-08'd)
	values('edf_median_0078','edf_median','11/28/2008','1.40478649908966','28-Nov-08'd)
	values('edf_median_0079','edf_median','12/31/2008','1.26705175021416','31-Dec-08'd)
	values('edf_median_0080','edf_median','1/30/2009','1.45852473958288','30-Jan-09'd)
	values('edf_median_0081','edf_median','2/27/2009','2.20716296443949','27-Feb-09'd)
	values('edf_median_0082','edf_median','3/31/2009','2.2480254064858','31-Mar-09'd)
	values('edf_median_0083','edf_median','4/30/2009','2.19279427486133','30-Apr-09'd)
	values('edf_median_0084','edf_median','5/29/2009','1.51558447733682','29-May-09'd)
	values('edf_median_0085','edf_median','6/30/2009','1.48951646169647','30-Jun-09'd)
	values('edf_median_0086','edf_median','7/31/2009','1.47340677845588','31-Jul-09'd)
	values('edf_median_0087','edf_median','8/31/2009','1.27472760720279','31-Aug-09'd)
	values('edf_median_0088','edf_median','9/30/2009','1.18554602820836','30-Sep-09'd)
	values('edf_median_0089','edf_median','10/30/2009','1.45180002451957','30-Oct-09'd)
	values('edf_median_0090','edf_median','11/30/2009','1.32312096015786','30-Nov-09'd)
	values('edf_median_0091','edf_median','12/31/2009','1.31044329581675','31-Dec-09'd)
	values('edf_median_0092','edf_median','1/29/2010','1.21035880418924','29-Jan-10'd)
	values('edf_median_0093','edf_median','2/26/2010','1.38918346747573','26-Feb-10'd)
	values('edf_median_0094','edf_median','3/31/2010','0.81990944578004','31-Mar-10'd)
	values('edf_median_0095','edf_median','4/30/2010','0.967471311195177','30-Apr-10'd)
	values('edf_median_0096','edf_median','5/31/2010','0.959568786461052','31-May-10'd)
	values('edf_median_0097','edf_median','6/30/2010','1.06277630860761','30-Jun-10'd)
	values('edf_median_0098','edf_median','7/30/2010','0.774770408877881','30-Jul-10'd)
	values('edf_median_0099','edf_median','8/31/2010','0.850796742706198','31-Aug-10'd)
	values('edf_median_0100','edf_median','9/30/2010','0.85289475017639','30-Sep-10'd)
	values('edf_median_0101','edf_median','10/29/2010','0.685649381973055','29-Oct-10'd)
	values('edf_median_0102','edf_median','11/30/2010','0.589873501403786','30-Nov-10'd)
	values('edf_median_0103','edf_median','12/31/2010','0.490942505563119','31-Dec-10'd)
	values('edf_median_0104','edf_median','1/31/2011','0.406474041947591','31-Jan-11'd)
	values('edf_median_0105','edf_median','2/28/2011','0.395563459585448','28-Feb-11'd)
	values('edf_median_0106','edf_median','3/31/2011','0.308572892375888','31-Mar-11'd)
	values('edf_median_0107','edf_median','4/29/2011','0.327001220683267','29-Apr-11'd)
	values('edf_median_0108','edf_median','5/31/2011','0.356894372384107','31-May-11'd)
	values('edf_median_0109','edf_median','6/30/2011','0.457722865939748','30-Jun-11'd)
	values('edf_median_0110','edf_median','7/29/2011','0.492244164782847','29-Jul-11'd)
	values('edf_median_0111','edf_median','8/31/2011','0.629897867378397','31-Aug-11'd)
	values('edf_median_0112','edf_median','9/30/2011','0.639953658716435','30-Sep-11'd)
	values('edf_median_0113','edf_median','10/31/2011','0.434157527284423','31-Oct-11'd)
	values('edf_median_0114','edf_median','11/30/2011','0.676124353867101','30-Nov-11'd)
	values('edf_median_0115','edf_median','12/30/2011','0.631525259148975','30-Dec-11'd)
	values('edf_median_0116','edf_median','1/31/2012','0.501470855598802','31-Jan-12'd)
	values('edf_median_0117','edf_median','2/29/2012','0.428472773542301','29-Feb-12'd)
	values('edf_median_0118','edf_median','3/30/2012','0.387759499579111','30-Mar-12'd)
	values('edf_median_0119','edf_median','4/30/2012','0.345177061509604','30-Apr-12'd)
	values('edf_median_0120','edf_median','5/31/2012','0.277852782058257','31-May-12'd)
	values('edf_median_0121','edf_median','6/29/2012','0.266123598555527','29-Jun-12'd)
	values('edf_median_0122','edf_median','7/31/2012','0.221098363576246','31-Jul-12'd)
	values('edf_median_0123','edf_median','8/31/2012','0.204235235369659','31-Aug-12'd)
	values('edf_median_0124','edf_median','9/28/2012','0.199453933008938','28-Sep-12'd)
	values('edf_median_0125','edf_median','10/31/2012','0.204301864806493','31-Oct-12'd)
	values('edf_median_0126','edf_median','11/30/2012','0.174816449388346','30-Nov-12'd)
	values('edf_median_0127','edf_median','12/31/2012','0.235056973811628','31-Dec-12'd)
	values('edf_median_0128','edf_median','1/31/2013','0.180263316790792','31-Jan-13'd)
	values('edf_median_0129','edf_median','2/28/2013','0.182821958636991','28-Feb-13'd)
	values('edf_median_0130','edf_median','3/29/2013','0.17512002794082','29-Mar-13'd)
	values('edf_median_0131','edf_median','4/30/2013','0.158158217010613','30-Apr-13'd)
	values('edf_median_0132','edf_median','5/31/2013','0.166599510713072','31-May-13'd)
	values('edf_median_0133','edf_median','6/28/2013','0.243035556411439','28-Jun-13'd)
	values('edf_median_0134','edf_median','7/31/2013','0.128021946697782','31-Jul-13'd)
	values('edf_median_0135','edf_median','8/30/2013','0.159731220569087','30-Aug-13'd)
	values('edf_median_0136','edf_median','9/30/2013','0.17864799767947','30-Sep-13'd)
	values('edf_median_0137','edf_median','10/31/2013','0.170977732569495','31-Oct-13'd)
	values('edf_median_0138','edf_median','11/29/2013','0.127775914150627','29-Nov-13'd)
	values('edf_median_0139','edf_median','12/31/2013','0.100805558537234','31-Dec-13'd)
	values('edf_median_0140','edf_median','1/31/2014','0.0987609368764616','31-Jan-14'd)
	values('edf_median_0141','edf_median','2/28/2014','0.112006590448959','28-Feb-14'd)
	values('edf_median_0142','edf_median','3/31/2014','0.108024390698549','31-Mar-14'd)
	values('edf_median_0143','edf_median','4/30/2014','0.101778939867452','30-Apr-14'd)
	values('edf_median_0144','edf_median','5/30/2014','0.0909291276062631','30-May-14'd)
	values('edf_median_0145','edf_median','6/30/2014','0.130593306247116','30-Jun-14'd)
	values('edf_median_0146','edf_median','7/31/2014','0.12543891567502','31-Jul-14'd)
	values('edf_median_0147','edf_median','8/29/2014','0.107553491808939','29-Aug-14'd)
	values('edf_median_0148','edf_median','9/30/2014','0.0909176988671188','30-Sep-14'd)
	values('edf_median_0149','edf_median','10/31/2014','0.0805237989011216','31-Oct-14'd)
	values('edf_median_0150','edf_median','11/28/2014','0.0749497241255274','28-Nov-14'd)
	values('edf_median_0151','edf_median','12/31/2014','0.0845250634066528','31-Dec-14'd)
	values('edf_median_0152','edf_median','1/30/2015','0.0838234444575563','30-Jan-15'd)
	values('edf_median_0153','edf_median','2/27/2015','0.0889561001974218','27-Feb-15'd)
	values('edf_median_0154','edf_median','3/31/2015','0.0786405528350981','31-Mar-15'd)
	values('edf_median_0155','edf_median','4/30/2015','0.0803300373837175','30-Apr-15'd)
	values('edf_median_0156','edf_median','5/29/2015','0.0728196746062481','29-May-15'd)
	values('edf_median_0157','edf_median','6/30/2015','0.0680314239766846','30-Jun-15'd)
	values('edf_median_0158','edf_median','7/31/2015','0.135350210441115','31-Jul-15'd)
	values('edf_median_0159','edf_median','8/31/2015','0.158094567811361','31-Aug-15'd)
	values('edf_median_0160','edf_median','9/30/2015','0.0893531112208826','30-Sep-15'd)
	values('edf_median_0161','edf_median','10/30/2015','0.0812867565787052','30-Oct-15'd)
	values('edf_median_0162','edf_median','11/30/2015','0.0913297212079335','30-Nov-15'd)
	values('edf_median_0163','edf_median','12/31/2015','0.0792930237107947','31-Dec-15'd)
	values('edf_median_0164','edf_median','1/29/2016','0.0759913182842665','29-Jan-16'd)
	values('edf_median_0165','edf_median','2/29/2016','0.0775093290424679','29-Feb-16'd)
	values('edf_median_0166','edf_median','3/31/2016','0.128772612580994','31-Mar-16'd)
	values('edf_median_0167','edf_median','4/29/2016','0.151787904113998','29-Apr-16'd)
	values('edf_median_0168','edf_median','5/31/2016','0.130751099263656','31-May-16'd)
	values('edf_median_0169','edf_median','6/30/2016','0.12421753407668','30-Jun-16'd)
	values('edf_median_0170','edf_median','7/29/2016','0.120043815853441','29-Jul-16'd)
	values('edf_median_0171','edf_median','8/31/2016','0.122922405083419','31-Aug-16'd)
	values('edf_median_0172','edf_median','9/30/2016','0.116163462238716','30-Sep-16'd)
	values('edf_median_0173','edf_median','10/31/2016','0.104721706468501','31-Oct-16'd)
	values('edf_median_0174','edf_median','11/30/2016','0.141961759635262','30-Nov-16'd)
	values('edf_median_0175','edf_median','12/30/2016','0.218348120098251','30-Dec-16'd)
	values('edf_median_0176','edf_median','1/31/2017','0.213863666032508','31-Jan-17'd)
	values('edf_median_0177','edf_median','2/28/2017','0.187680222374339','28-Feb-17'd)
	values('edf_median_0178','edf_median','3/31/2017','0.0714489159036056','31-Mar-17'd)
	values('edf_median_0179','edf_median','4/28/2017','0.0753355570105153','28-Apr-17'd)
	values('edf_median_0180','edf_median','5/31/2017','0.0624025496892287','31-May-17'd)
	values('edf_median_0181','edf_median','6/30/2017','0.0683414282450314','30-Jun-17'd)
	values('edf_median_0182','edf_median','7/31/2017','0.125610882800392','31-Jul-17'd)
	values('edf_median_0183','edf_median','8/31/2017','0.0711223865999474','31-Aug-17'd)
	values('edf_median_0184','edf_median','9/29/2017','0.0517444649220559','29-Sep-17'd)
	values('edf_median_0185','edf_median','10/31/2017','0.055173335018479','31-Oct-17'd)
	values('edf_median_0186','edf_median','11/30/2017','0.0447210642001088','30-Nov-17'd)
	values('edf_median_0187','edf_median','12/29/2017','0.046275250232823','29-Dec-17'd)
	values('edf_median_0188','edf_median','1/31/2018','0.040026461805339','31-Jan-18'd)
	values('edf_median_0189','edf_median','2/28/2018','0.039749110916866','28-Feb-18'd)
	values('edf_median_0190','edf_median','3/30/2018','0.0373048115268321','30-Mar-18'd)
	values('edf_median_0191','edf_median','4/30/2018','0.0359188560848141','30-Apr-18'd)
	values('edf_median_0192','edf_median','5/31/2018','0.0367886235894094','31-May-18'd)
	values('edf_median_0193','edf_median','6/29/2018','0.0361104284985945','29-Jun-18'd)
	values('edf_median_0194','edf_median','7/31/2018','0.0351606497060607','31-Jul-18'd)
	values('edf_median_0195','edf_median','8/31/2018','0.0505092598310696','31-Aug-18'd)
	values('edf_median_0196','edf_median','9/28/2018','0.0412440383190435','28-Sep-18'd)
	values('edf_median_0197','edf_median','10/31/2018','0.0467870374876016','31-Oct-18'd)
	values('edf_median_0198','edf_median','11/30/2018','0.048970614411298','30-Nov-18'd)
	values('edf_median_0199','edf_median','12/31/2018','0.0531970677812254','31-Dec-18'd)
	values('edf_median_0200','edf_median','1/31/2019','0.0502683921300419','31-Jan-19'd)
	values('edf_median_0201','edf_median','2/28/2019','0.0526033902953568','28-Feb-19'd)
	values('edf_median_0202','edf_median','3/29/2019','0.0517252237350718','29-Mar-19'd)

	;run;

/************************************************************************************
 * Create variables for colors
 ************************************************************************************/
	%let Bl = #1A9ED9;
	%let Or = #E35425;
	%let Ye = #FBDA1E;
	%let Gr = #139977;

/************************************************************************************
 * Clear libraries that need to be overwritten
 ************************************************************************************/
	proc datasets lib=work nolist memtype=cat;
	delete GSEG;
	delete html;
	delete rtf;
	quit;

/************************************************************************************
 * Create empty base for compilation loop
 ************************************************************************************/
	data compileToChart;
	Date = .; Sector = ''; Cat = ''; Val = .; _LABEL_='';
	format Date Date9.;
	run;

/****************************************************************************************
 * Repeating macro to create charts for each group
 ****************************************************************************************/
	%macro Map_Macro(Cat,Z_Name,Slide,location,gseg_location);
		%symdel chartTitle;

		/*"U" opening downward slope*/
			proc sql;
			create table prepToChartStart as
			Select Distinct "&Cat" as Sector, 'Start' as Cat, mean(input(put(main.&Cat,$11.),12.9)) as Start, main._LABEL_ 
				from finalTransposedPrep main
			 		where _LABEL_ = "edf_median" and Date between mdy(5,1,2002) and mdy(6,30,2008);
			run;

		/*"U" Trough*/
			proc sql;
			create table prepToChartTrough as
			Select Distinct main.Date, "&Cat" as Sector, 'Trough' as Cat, input(put(main.&Cat,$11.),12.9) as trough, main._LABEL_ 
				from finalTransposedPrep main
						inner join (select max(input(put(&Cat,$11.),12.9)) as maxFilter from finalTransposedPrep where _LABEL_ = "edf_median" and Date > mdy(6,30,2008)) filter 
							on input(put(main.&Cat,$11.),12.9) = filter.maxFilter
			 		where _LABEL_ = "edf_median";
			run;

		/*"U" upward slope*/
			proc sql;
			create table prepToChartEnd as
			Select Distinct main.Date, "&Cat" as Sector, 'End' as Cat, input(put(main.&Cat,$11.),12.9) as End, main._LABEL_ 
				from finalTransposedPrep main
						inner join (select max(Date) as maxFilter from finalTransposedPrep where _LABEL_ = "edf_median") filter 
							on Date = filter.maxFilter
			 		where _LABEL_ = "edf_median";
			run;

		/*Chart Title*/
			proc sql;
			create table prepToChartTitle as
			Select main.Date, "&Cat" as Sector, 'Title' as Cat, &Cat as Title
				from finalTransposedPrep main
			 		where Source = 'Title';
			run;

		/*Compile both slopes and trough to one record*/
			proc sql;
			create table compileToChart1 as
			Select * from prepToChartStart start
				full join prepToChartTrough trough on start.Sector = trough.Sector
				full join prepToChartEnd end on start.Sector = end.Sector
				full join prepToChartTitle title on start.Sector = title.Sector;
			run;

		/*Calculations to determine length of each slope and color*/
			Data compileToChart;
			set compileToChart1;
			
			 ratio = Start / End;

			 curve1 = 1;
			 curve2 = 1;

			 				if (Start = Trough and Trough = End) or (Trough = End) then curve2=1;
							else if (End <= Start) then curve1 = ((End)/(Start));
							else if (End > Start) then curve2 = ((Start)/(End));
			 Run;


		/*Place title of chart into macro variable to be called later*/
			proc sql; select strip(Title) into: chartTitle from compileToChart;

		/*Create annotation base with the requried functions to draw chart and place label*/
			proc sql; create table functions (function	char(90));
			insert into functions 	values('label')
									values('move')
									values('draw')
									values('pie');
			run;

		/*Used compiled slopes and trough calculations to calculate points for annotated drawing and labeling*/
			proc sql;
			create table trough as
			select
			function,
			'Black' as color,
			'Thorndale AMT/italic' as style,
			case when trough < start then '' else trim(left(put(trough,6.2))) end as text,
			'3' as xsys,
			'3' as ysys,
			'3' as hsys,
			'a' as when,
			29 as x,
			10 as y,
			0 as angle,
			360 as rotate,
			5 as size,
			'1' as position
			from compileToChart,
					functions
				where function = 'label';
			run;

			proc sql;
			create table t_line as
			select
			function,
			'Black' as color,
			'' as style,
			'' as text,
			'3' as xsys,
			'3' as ysys,
			'3' as hsys,
			'a' as when,
			case when function = 'draw' then 32 else 68 end as x,
			30 + (59 * curve1) as y,
			. as angle,
			. as rotate,
			.5 as size,
			'' as position,
			2 as line
			from compileToChart,
					functions
				where function in ('move','draw');
			run;

			proc sql;
			create table b_line as
			select
			function,
			'Black' as color,
			'' as style,
			''  format = $90. as text,
			'3' as xsys,
			'3' as ysys,
			'3' as hsys,
			'a' as when,
			case when function = 'draw' then 32 else 68 end as x,
			14 as y,
			. as angle,
			. as rotate,
			.5 as size,
			'' as position,
			2 as line
			from compileToChart,
					functions
				where function in ('move','draw');

			run;
			 
			proc sql;
			create table trough_label1 as
			Select
			function,
			'Black' as color,
			'Thorndale AMT/bold' as style,
			case when trough < start then 'Bottomed out' else strip(PUT(DATE, MONNAME10.)) end as text,
			'3' as xsys,
			'3' as ysys,
			'3' as hsys,
			'a' as when,
			29 as x,
			10 as y,
			. as angle,
			. as rotate,
			5 as size,
			'4' as position
			from compileToChart,
					functions
				where function in ('label');
			run;

			proc sql;
			create table trough_label2 as
			Select
			function,
			'Black' as color,
			'Thorndale AMT/bold' as style,
			case when trough < start then 'in pre-recovery' else strip((PUT(year(DATE), 4.))) end as text,
			'3' as xsys,
			'3' as ysys,
			'3' as hsys,
			'a' as when,
			29 as x,
			5.5 as y,
			. as angle,
			. as rotate,
			5 as size,
			'4' as position
			from compileToChart,
					functions
				where function in ('label');
			run;

			proc sql;
			create table left_line as
			Select
			function,
			'gray' as color,
			case when function = 'label' then 'Thorndale amt/italic'
				 else 'psolid' end as style,
			case when function = 'label' then trim(left(put(start,6.2)))
				 else '' end as text,
			'3' as xsys,
			'3' as ysys,
			'3' as hsys,
			'a' as when,
			case when function = 'pie' then 49
				 when function = 'move' then 36.5
				 when function = 'draw' then 36.5 
				 when function = 'label' then 29 end as x, 
			case when function = 'pie' then 29
				 when function = 'move' then 29.5
				 when function = 'draw' then 30 + (59 * curve1) 
				 when function = 'label' then 30 + (59 * curve1) end as y,
			case when function = 'label' then 0
				 else -180 end as angle,
			case when function = 'label' then 360
				 else 90 end as rotate,
			case when function = 'pie' then 15
				 when function = 'move' then 35
				 when function = 'draw' then 5 
				 when function = 'label' then 5 end as size,
			case when function = 'draw' then 1 end as line,
			'4' as position

			from compileToChart,
					functions;
			run;

			proc sql;
			create table right_line as
			Select
			function,
			case when curve1 <= curve2 then "&Gr"
				 when curve2 >= .75 then "&Ye" 
				 when curve2 <.75 then "&Or"
				 end as color,
			case when function = 'label' then 'Thorndale amt/italic'
				 else 'psolid' end as style,
			case when function = 'label' then trim(left(put(End,6.2)))
				 else '' end as text,
			'3' as xsys,
			'3' as ysys,
			'3' as hsys,
			'a' as when,
			case when function = 'pie' then 51
				 when function = 'move' then 63.5
				 when function = 'draw' then 63.5	 
				 when function = 'label' then 71 end as x, 
			case when function = 'pie' then 29
				 when function = 'move' then 29.5
				 when function = 'draw' then 30 + (59 * curve2)
				 when function = 'label' then 30 + (59 * curve2) end as y,
			case when function = 'label' then 0
				 else 270 end as angle,
			case when function = 'label' then 360
				 else 90 end as rotate,
			case when function = 'pie' then 15
				 when function = 'move' then 35
				 when function = 'draw' then 5
				 when function = 'label' then 5 end as size,
			case when function = 'draw' then 1 end as line,
			'6' as position

			from compileToChart,
					functions;
			run;

		/*White pie to create "U"'s trough and label*/
			proc sql; create table form_sup (function	char(90), color	char(90), style	char(90), text char(90), xsys char(90),	ysys char(90), hsys char(90), when char(90), x int, y int, angle int, rotate int, size int, line int, position char(90)); 
			insert into form_sup 	values(	'pie','White','psolid','','3','3','3','a',49,29,-180,90,10,.,'')
									values(	'pie','White','psolid','','3','3','3','a',51,29,270,90,10,.,'')
									values(	'label','Black','Thorndale amt/bold',"&chartTitle",'3','3','3','a',50,97,0,0,6,.,'');
			run;


		/********************************************
		 *	Curves
		 ********************************************/
			data GROUP_form1; 
			length function color $8 style $35 text $100;
			xsys='3'; ysys='3'; hsys='3'; when='a';

							/*Lower Left*/
					function='pie'; x=48; y=36; 
						style='psolid'; 
								angle=-180; rotate=90; color="White"; size=25; output;
							function='move'; x=18; y=36.5; output;
							function='draw'; x=18; y=96; line=1; size=10; color="Black"; output;

							/*Lower Right*/
					function='pie'; x=52; y=36; 
						style='psolid'; 
							angle=270; rotate=90; color="&Gr."; size=35; output;
								angle=270; rotate=90; color="White"; size=25; output;
							function='move'; x=82; y=36.5; output;
							function='draw'; x=82; y=96; line=1; size=10; color="&Gr."; output;

			run;

		/********************************************
		 *	Chart title formatting
		 ********************************************/
			data title_form; 
			length function color $8 style $35 text $100;
			xsys='3'; ysys='3'; hsys='3'; when='a';

				function='label'; position='5'; color="black"; style="Thorndale amt/bold"; size=35;
					x=50; y=50; text="&chartTitle" ; output;

			run;

		/********************************************
		 *	All annotation data poitns to one table	*	
		 ********************************************/
			proc sql;
			create table group_form as 
			Select * from left_line
			outer union corr 
			Select * from right_line
			outer union corr
			Select * from form_sup
			outer union corr
			Select * from trough
			outer union corr
			Select * from t_line
			outer union corr
			Select * from b_line
			outer union corr
			Select * from trough_label1
			outer union corr
			Select * from trough_label2
			;run;

		/********************************************
		 *	gslide output
		 ********************************************/
			ODS HTML PATH = '/sasnas/opscollectprod/COLLNAS/Secured_Results/dev/' style=HTMLBLUE;
			goptions reset=all rotate=landscape device=javaimg xpixels=300 ypixels=300;
			ods graphics on / reset=all noborder border = off width=300px height=300px scale imagename="Body" imagefmt=png;
				proc gslide anno=GROUP_form name="YELLEN_OUTPUT"; 
				run;
			ods graphics off;
			ods html close;
			ods _all_ close;

	%mend Map_Macro;

/************************************************************************************
 * Loop base using list of categories
 ************************************************************************************/
	proc sql;
	create table loopin_III as
	Select Distinct
	Cat,
	Title
	from sorted_groups 
	order by Title
	;run;

/************************************************************************************
 * Call repeating chart macro
 ************************************************************************************/
	data loopin_II;
	set loopin_III;
	eep = trim(left(put(monotonic(),4.)));
	gseg_location = "slide"||eep;
	part = "part"||eep;
	location = trim("/sasnas/opscollectprod/COLLNAS/Secured_Results/dev/")||trim(lowcase(gseg_location))||".png";
		call execute('%Map_Macro('||Cat||','||Title||','||eep||','||location||','||gseg_location||')');
	run;


