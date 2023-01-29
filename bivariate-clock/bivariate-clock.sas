/****************************************************
 * Base data set (8AM - 5PM)
 ****************************************************/
	proc sql;
	create table base (INTERVAL	num format=time., SERVICE_LEVEL	num, QUEUE_TIME	num, SENTIMENT num);
		insert into base 
			values('8:00:00't,0.678709503625687,201.83232068192,24.240411507366)
			values('9:00:00't,0.796367958128867,170.123316735348,24.2794921139501)
			values('10:00:00't,0.68644464328102,203.903003501111,24.2735725367836)
			values('11:00:00't,0.704346584075627,203.650965532559,24.2616585784105)
			values('12:00:00't,0.577742469067347,355.990522078581,24.2201211345876)
			values('13:00:00't,0.612726919916478,319.838617595085,24.2100149022827)
			values('14:00:00't,0.653471303123074,269.386894606945,24.2027047287247)
			values('15:00:00't,0.565043114435476,321.335510032592,24.1897061607298)
			values('16:00:00't,0.492170090172067,316.37990556427,24.2274897298297)
			values('17:00:00't,0.360021011046207,498.029468901219,24.2062907930601)
	;run;

/****************************************************
 * Percentiles to be used in color coding
 ****************************************************/
	proc univariate data=base noprint;
	  var SERVICE_LEVEL;
		output out=SERVICE_PCNTILES pctlpre=SRV_P_ pctlpts= 1,10,20,30,40,50,60,70,80,90;
	run;

	proc univariate data=base noprint;
	  var QUEUE_TIME;
		output out=QUEUE_PCNTILES MEDIAN=MED MAX=MAX pctlpre=QUE_P_ pctlpts= 1,10,20,30,40,50,60,70,80,90;
	run;


	proc univariate data=base noprint;
	  var Sentiment;
		output out=Sentiment_PCNTILES pctlpre=SNT_P_ pctlpts= 10,20,30,40,50,60,70,80,90;
	run;

/****************************************************
 * Assign color coding colors based on percentile
 ****************************************************/
	proc sql;
	create table design_for_chart as
	Select 
	base.*,
	case when base.SERVICE_LEVEL <= SRV_PCT.SRV_P_10 then '#cb181d' /*Dark Red*/
		 when SRV_PCT.SRV_P_10 < base.SERVICE_LEVEL <= SRV_P_20 then '#de2d26' /*Red*/
		 when SRV_PCT.SRV_P_20 < base.SERVICE_LEVEL <= SRV_P_30 then '#fcae91' /*Light Red*/
		 when SRV_PCT.SRV_P_30 < base.SERVICE_LEVEL <= SRV_P_40 then '#fcbba1' /*Pink*/
		 when SRV_PCT.SRV_P_40 < base.SERVICE_LEVEL <= SRV_P_50 then '#fff5f0' /*Light Pink*/
		 when SRV_PCT.SRV_P_50 < base.SERVICE_LEVEL <= SRV_P_60 then '#f7fcf5' /*Extreme Light Green*/
		 when SRV_PCT.SRV_P_60 < base.SERVICE_LEVEL <= SRV_P_70 then '#c7e9c0' /*Very Light Green*/
		 when SRV_PCT.SRV_P_70 < base.SERVICE_LEVEL <= SRV_P_80 then '#bae4b3' /*Light Green*/
		 when SRV_PCT.SRV_P_80 < base.SERVICE_LEVEL <= SRV_P_90 then '#74c476' /*Green*/
		 when SRV_PCT.SRV_P_90 < base.SERVICE_LEVEL then '#238b45' /*Dark Green*/
	end as SRV_COLOR,

	case when base.QUEUE_TIME <= QUE_PCT.QUE_P_10 then '#238b45' /*Dark Green*/
		 when QUE_PCT.QUE_P_10 < base.QUEUE_TIME <= QUE_P_20 then '#74c476' /*Green*/
		 when QUE_PCT.QUE_P_20 < base.QUEUE_TIME <= QUE_P_30 then '#bae4b3' /*Light Green*/
		 when QUE_PCT.QUE_P_30 < base.QUEUE_TIME <= QUE_P_40 then '#c7e9c0' /*Very Light Green*/
		 when QUE_PCT.QUE_P_40 < base.QUEUE_TIME <= QUE_P_50 then '#f7fcf5' /*Extreme Light Green*/
		 when QUE_PCT.QUE_P_50 < base.QUEUE_TIME <= QUE_P_60 then '#fff5f0' /*Light Pink*/
		 when QUE_PCT.QUE_P_60 < base.QUEUE_TIME <= QUE_P_70 then '#fcbba1' /*Pink*/
		 when QUE_PCT.QUE_P_70 < base.QUEUE_TIME <= QUE_P_80 then '#fcae91' /*Light Red*/
		 when QUE_PCT.QUE_P_80 < base.QUEUE_TIME <= QUE_P_90 then '#de2d26' /*Red*/
		 when QUE_PCT.QUE_P_90 < base.QUEUE_TIME then '#cb181d' /*Dark Red*/
	end as QUE_COLOR,

	case when base.Sentiment <= SNT_PCT.SNT_P_10 then '#cb181d' /*Dark Red*/
		 when SNT_PCT.SNT_P_10 < base.Sentiment <= SNT_P_20 then '#de2d26' /*Red*/
		 when SNT_PCT.SNT_P_20 < base.Sentiment <= SNT_P_30 then '#fcae91' /*Light Red*/
		 when SNT_PCT.SNT_P_30 < base.Sentiment <= SNT_P_40 then '#fcbba1' /*Pink*/
		 when SNT_PCT.SNT_P_40 < base.Sentiment <= SNT_P_50 then '#fff5f0' /*Light Pink*/
		 when SNT_PCT.SNT_P_50 < base.Sentiment <= SNT_P_60 then '#f7fcf5' /*Extreme Light Green*/
		 when SNT_PCT.SNT_P_60 < base.Sentiment <= SNT_P_70 then '#c7e9c0' /*Very Light Green*/
		 when SNT_PCT.SNT_P_70 < base.Sentiment <= SNT_P_80 then '#bae4b3' /*Light Green*/
		 when SNT_PCT.SNT_P_80 < base.Sentiment <= SNT_P_90 then '#74c476' /*Green*/
		 when SNT_PCT.SNT_P_90 < base.Sentiment then '#238b45' /*Dark Green*/
	end as SNT_COLOR

	from base,
			SERVICE_PCNTILES SRV_PCT,
			Sentiment_PCNTILES SNT_PCT,
			QUEUE_PCNTILES QUE_PCT
	;run;


/****************************************************
 * Keep only working hours
 ****************************************************/
	data WORKDAY;
	set design_for_chart;
	if hms(8,0,0) <= INTERVAL <= HMS(17,0,0);
	run;

/********************************************
 *	Build Clock
 ********************************************/
	data WORKDAY_Clock_Prep1; 
	format HR TIME9.;

	rowNum=.;
	length function color $8 style $35 text $100;
	xsys='3'; ysys='3'; hsys='3'; when='a';

			function='pie'; x=50; y=50; 
				style='psolid'; 

					/*Hourly Angles Sentiment*/
					cat='SNT'; color=""; size=46;

					do i=0 to 10;
						angle = 195 - (i*30); rotate=30; HR=HMS(8+i,0,0); output; /*Starts at 7:00 position and loops around clockwise*/
					end; 

					/*Clock Outline*/
					cat=''; HR=.; angle=+0; rotate=360; color="Black" /*Blue*/; size=42; cat=''; output;

					/*Hourly Angles Service*/
					cat='SRV';  color=""; size=41.5;
					do i=0 to 10;
						angle = 195 - (i*30); rotate=30; HR=HMS(8+i,0,0); output; /*Starts at 7:00 position and loops around clockwise*/
					end; 
					
					/*Section off Hours*/
					style='pempty'; color="Black"; size=46; HR=.; cat='';
					do i = 0 to 12;
						angle = 75 - (i*30); rotate=30; HR=HMS(0+i,0,0); output;
					end;


					/*Block out unused clock face*/
					style='psolid'; 
					cat=''; HR=.; angle=225; rotate=30; color="Black"; size=46; output; *7:00;
					angle=+0; rotate=360; color="White"; size=37.5; output;

					/*Interiour outline between Service and clock face*/
					style='pempty'; angle=+0; rotate=360; color="Black"; size=37.5; output;



					/*Clock center*/
					style='psolid'; angle=+0; rotate=360; color="Black" /*Blue*/; size=1; output;

					/*Clock Numerals*/

					function='label'; angle = 0; position='5'; color="Black"; style="Times New Roman Symbol/bold"; size=12; x=50; y=88; text='12'; output;
					function='label'; angle = 0; position='5'; color="Black"; style="Times New Roman Symbol/bold"; size=12; x=67.5; y=83.5; text='1'; output;
					function='label'; angle = 0; position='5'; color="Black"; style="Times New Roman Symbol/bold"; size=12; x=78; y=73; text='2'; output;
					function='label'; angle = 0; position='5'; color="Black"; style="Times New Roman Symbol/bold"; size=12; x=84; y=56.5; text='3'; output;

					function='label'; angle = 0; position='5'; color="Black"; style="Times New Roman Symbol/bold"; size=12; x=79; y=41; text='4'; output;
					function='label'; angle = 0; position='5'; color="Black"; style="Times New Roman Symbol/bold"; size=12; x=67; y=28.5; text='5'; output;
					function='label'; angle = 0; position='5'; color="Black"; style="Times New Roman Symbol/bold"; size=12; x=50; y=25; text='6'; output;

					function='label'; angle = 0; position='5'; color="Black"; style="Times New Roman Symbol/bold"; size=12; x=33; y=28.5; text='7'; output;
					function='label'; angle = 0; position='5'; color="Black"; style="Times New Roman Symbol/bold"; size=12; x=21.5; y=41; text='8'; output;
					function='label'; angle = 0; position='5'; color="Black"; style="Times New Roman Symbol/bold"; size=12; x=17; y=56.5; text='9'; output;

					function='label'; angle = 0; position='5'; color="Black"; style="Times New Roman Symbol/bold"; size=12; x=24; y=73; text='10'; output;
					function='label'; angle = 0; position='5'; color="Black"; style="Times New Roman Symbol/bold"; size=12; x=35.5; y=83.5; text='11'; output;


					/*Clock Hands*/
					function='pie'; x=50; y=50; 
					style='psolid'; 
					/*Hour Hand Base*/ angle=295; rotate=10; color="black"; size=15; output; 
					/*Minute Hand Base*/ angle=358; rotate=4; color="black"; size=27; output; 

					/*Hour Hand Point*/ x=60.5; y=32; angle=108; rotate=24; color="black"; size=6.5; output;
					/*Minute Hand Point*/ x=82.5; y=50; angle=170; rotate=20; color="black"; size=6; output;


				function='pie'; style='pempty'; x=10; y=90; angle=0; rotate=360; color="Black"; size=6; output;
				/*Mini Hour Hand Base*/ angle=295; rotate=0; color="black"; size=3; output; 
				/*Mini Minute Hand Base*/ angle=358; rotate=0; color="black"; size=4.5; output; 

				/*Time Label*/
				function='label'; angle = 0; rotate=0; position='5'; color="Black"; style="Times New Roman Symbol/bold"; size=4; x=50; y=59; text='8AM - 6PM Workday'; output;

				function='label'; angle = 0; rotate=0; position='5'; color="Black"; style="Times New Roman Symbol/bold"; size=2; x=20; y=95; text='Sentiment'; output;
				function='label'; angle = 0; rotate=0; position='5'; color="Black"; style="Times New Roman Symbol/bold"; size=2; x=10; y=94; text='Service'; output;

	;run;


/****************************************************
 * Record row number for sorting
 ****************************************************/
	proc sql;
	update WORKDAY_Clock_PREP1 set rowNum = monotonic();
	run;

/****************************************************
 * Join base clock to data set for color coding. 
 *  - Allows of fields for comparison
 ****************************************************/
 	proc sql;
	create table WORKDAY_Clock as
	Select
	case when Cat = 'SNT' then WORKDAY.SNT_COLOR 
		 when Cat = 'SRV' then WORKDAY.QUE_COLOR 
	else PREP.COLOR end as color, /*Color code clock sections based on category*/
	PREP.*
	from WORKDAY_Clock_PREP1 PREP
			left join WORKDAY on PREP.HR = WORKDAY.INTERVAL
	order by rowNum;
	run;

/****************************************************
 * Set options
 ****************************************************/
	title;
	footnote;

	goptions reset=all;
	goptions xpixels=800 ypixels=800 ;
	goptions cback=white;
	ODS LISTING CLOSE;


/****************************************************
 * Output
 ****************************************************/
	proc gslide anno=WORKDAY_Clock name="WORKDAY_CLOCK"; 
	run;
	ods html close ;
	ods listing ;
