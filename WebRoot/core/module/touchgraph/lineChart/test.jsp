<%@ page language="java" contentType="text; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String flag = request.getParameter("flag");
String selected = request.getParameter("selected");
if ("hitRate".equals(flag)) {
%>
{"rtData":[{"year":1998,"内政":27,"新中国":29,"战争":34,"共公外交":22,"外交":44 ,"国际关系":33 ,"邓小平":32,"伊朗":33,"苏联":37,"英国":36,"和平":44,"中日关系":37}
		,{"year":1999,"内政":42,"新中国":43,"战争":53 ,"共公外交":40,"外交":32,"国际关系":32,"邓小平":55,"伊朗":54,"苏联":44,"英国":55,"和平":25,"中日关系":23}
		,{"year":2000,"内政":39,"新中国":25 ,"战争":47,"共公外交":50,"外交":26,"国际关系":12,"邓小平":23,"伊朗":25,"苏联":33,"英国":35,"和平":39,"中日关系":35}
		,{"year":2001,"内政":53,"新中国":47,"战争":26 ,"共公外交":34,"外交":29,"国际关系":23,"邓小平":45,"伊朗":24,"苏联":44,"英国":42,"和平":42,"中日关系":27}
		,{"year":2002,"内政":45,"新中国":27,"战争":49 ,"共公外交":42,"外交":35,"国际关系":56,"邓小平":36,"伊朗":35,"苏联":22,"英国":37,"和平":49,"中日关系":36}
		,{"year":2003,"内政":53,"新中国":36 ,"战争":48,"共公外交":26,"外交":20,"国际关系":35,"邓小平":32,"伊朗":38,"苏联":44,"英国":31,"和平":39,"中日关系":41}
		,{"year":2004,"内政":40,"新中国":45 ,"战争":28,"共公外交":29,"外交":26,"国际关系":36,"邓小平":26,"伊朗":41,"苏联":46,"英国":26,"和平":37,"中日关系":26}
		,{"year":2005,"内政":30,"新中国":42,"战争":39 ,"共公外交":29,"外交":26,"国际关系":36,"邓小平":41,"伊朗":42,"苏联":66,"英国":34,"和平":49,"中日关系":39}
		,{"year":2006,"内政":42,"新中国":38,"战争":47 ,"共公外交":27,"外交":30,"国际关系":31,"邓小平":24,"伊朗":34,"苏联":22,"英国":50,"和平":51,"中日关系":31}
		,{"year":2007,"内政":45,"新中国":31 ,"战争":51,"共公外交":23,"外交":23,"国际关系":42,"邓小平":35,"伊朗":37,"苏联":35,"英国":36,"和平":29,"中日关系":44}
		,{"year":2008,"内政":25,"新中国":36,"战争":42 ,"共公外交":29,"外交":26,"国际关系":37,"邓小平":56,"伊朗":26,"苏联":24,"英国":16,"和平":31,"中日关系":55}
		,{"year":2009,"内政":29,"新中国":53 ,"战争":39,"共公外交":30,"外交":35,"国际关系":23,"邓小平":22,"伊朗":34,"苏联":36,"英国":39,"和平":36,"中日关系":24}
    ]
  ,"doc":[
		{"title":"dddaa_在线观看1个视频_土豆网","content":"dddaa <font color=\"#FF0000\">娱乐</font>...dddaa豆单:dddaa订阅该豆单去豆单封面 播客: sorrysioio 订阅该播客 创建者: sorrysioio 豆花1级 创建于: 2009-07-14 频道: 娱乐 播放: 31 ...","info":"www.tudou.com/playlist/playindex.do?lid=6 ... 2010-8-7"}
		,{"title":"dddaa_在线观看1个视频_土豆网","content":"dddaa 娱乐...dddaa豆单:dddaa订阅该豆单去豆单封面 播客: sorrysioio 订阅该播客 创建者: sorrysioio 豆花1级 创建于: 2009-07-14 频道: 娱乐 播放: 31 ...","info":"www.tudou.com/playlist/playindex.do?lid=6 ... 2010-8-7"}
		,{"title":"dddaa_在线观看1个视频_土豆网","content":"dddaa 娱乐...dddaa豆单:dddaa订阅该豆单去豆单封面 播客: sorrysioio 订阅该播客 创建者: sorrysioio 豆花1级  创建于: 2009-07-14 频道: 娱乐 播放: 31 ...","info":"www.tudou.com/playlist/playindex.do?lid=6 ... 2010-8-7"}
		]
    }
    <% } else if ("tags".equals(flag)) {%>
      {"tag":["内政","新中国","战争","共公外交","外交" ,"国际关系" ,"邓小平","伊朗","苏联","英国","和平","中日关系"]}
    <% } %>