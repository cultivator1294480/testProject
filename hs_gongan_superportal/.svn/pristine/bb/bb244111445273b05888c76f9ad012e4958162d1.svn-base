DATA={
	menu:[{//一级菜单
		menuid:'m001',
		name:'主页',
		code:'m001',
		icon:'images/home.png'
	},{
		menuid:'m002',
		name:'邮件',
		code:'m002',
		icon:'images/email.png'
	},{
		menuid:'m003',
		name:'文件夹',
		code:'m003',
		icon:'images/portfolio.png'
	},{
		menuid:'m004',
		name:'音乐',
		code:'m004',
		icon:'images/music.png'
	},{
		menuid:'m005',
		name:'视频',
		code:'m005',
		icon:'images/video.png'
	},{
		menuid:'m006',
		name:'备忘录',
		code:'m006',
		icon:'images/history.png'
	},{
		menuid:'m007',
		name:'日历',
		code:'m007',
		icon:'images/calendar.png'
	},{
		menuid:'m008',
		name:'RSS',
		code:'m008',
		icon:'images/rss.png'
	}]
};

	//=
   var  JSonObject =JSON.parse($("#app").val());
	
   DATA.app=JSonObject;
	
    var sonMenuOps ="[";
   for (var JsObj in JSonObject){
	   if (JsObj=="ST001")continue;
	   var str = JSON.stringify(JSonObject[JsObj]).replace(/"/g,"'")+",";
	   sonMenuOps=sonMenuOps+str;
   }
 //  sonMenuOps=sonMenuOps.substring(0,str.length-1);
   		sonMenuOps +="]";
   
	
	DATA.app.ST001.sonMenu=sonMenuOps;

	
	//
 	DATA.sApp=JSON.parse($("#sApp").val());
 	//
 	ops = JSON.parse($("#ops").val());
	//
    var leftMenu =JSON.parse($("#leftMenu").val());


