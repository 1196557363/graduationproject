<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>谷粒商品首页</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/index/css/swiper-3.4.2.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/index/css/GL.css">
  <link href="../favicon/index/favicon.ico" rel="icon" type="image/x-icon" />
  <script src="${pageContext.request.contextPath }/resources/user/index/js/jquery-3.1.1.min.js" type="text/javascript" charset="utf-8"></script>
  <script src="${pageContext.request.contextPath }/resources/user/index/js/swiper-3.4.2.jquery.min.js" type="text/javascript" charset="utf-8"></script>
  <script src="${pageContext.request.contextPath }/resources/user/index/js/swiper-3.4.2.min.js"></script>

</head>

<body>

  <div class="top_find">
    <div class="top_find_son">
      <img src="" alt="">
      <div class="input_find">
        <input type="text" placeholder="卸妆水" />
        <span style="background: url(../staticimg/img_12.png) 0 -1px;"></span>
        <a href="#"><img src="${pageContext.request.contextPath }/resources/user/index/img/img_09.png" /></a>
      </div>
    </div>
  </div>
  <ul class="left_floor">
    <li class="left_floor_xiang">享品质</li>
    <li class="left_floor_fu">服饰美妆</li>     
    <li class="left_floor_jia">家电手机</li>
    <li class="left_floor_dian">电脑数码</li>
    <li class="left_floor_3C">3C运动</li>
    <li class="left_floor_ai">爱吃</li>
    <li class="left_floor_mu">母婴家居</li>
    <li class="left_floor_tu">图书汽车</li>
    <li class="left_floor_you">游戏金融</li>
    <li class="left_floor_lv">旅行健康</li>
    <li class="left_floor_hai">还没逛够</li>
    <li class="left_floor_ding">顶部</li>
  </ul>
  <header>
    <div class="head">
      <a href="#"><img src="${pageContext.request.contextPath }/resources/user/index/img/img_01.png" /></a>
      <p>X</p>
    </div>
    <!--头部-->
    <div class="header_head">
      <div class="header_head_box">
        <a href="#" class="img"><img src="${pageContext.request.contextPath }/resources/user/index/img/logo.jpg" /></a>
        <b class="header_head_p">
			<a href="#">
				<img src="${pageContext.request.contextPath }/resources/user/index/img/img_05.png" style="border-radius: 50%;"/>
				<!--<span class="glyphicon glyphicon-map-marker"></span>-->
				 北京</a>
			<div class="header_head_p_cs">
				<a href="#" style="background: #C81623;color: #fff;">北京</a>
				<a href="#">上海</a>
				<a href="#">天津</a>
				<a href="#">重庆</a>
				<a href="#">河北</a>
				<a href="#">山西</a>
				<a href="#">河南</a>
				<a href="#">辽宁</a>
				<a href="#">吉林</a>
				<a href="#">黑龙江</a>
				<a href="#">内蒙古</a>
				<a href="#">江苏</a>
				<a href="#">山东</a>
				<a href="#">安徽</a>
				<a href="#">浙江</a>
				<a href="#">福建</a>
				<a href="#">湖北</a>
				<a href="#">湖南</a>
				<a href="#">广东</a>
				<a href="#">广西</a>
				<a href="#">江西</a>
				<a href="#">四川</a>
				<a href="#">海南</a>
				<a href="#">贵州</a>
				<a href="#">云南</a>
				<a href="#">西藏</a>
				<a href="#">陕西</a>
				<a href="#">甘肃</a>
				<a href="#">青海</a>
				<a href="#">宁夏</a>
				<a href="#">新疆</a>
				<a href="#">港澳</a>
				<a href="#">台湾</a>
				<a href="#">钓鱼岛</a>
				<a href="#">海外</a>
			</div>
		</b>
		
        <ul>
        <c:if test="${not empty u_user.nick}">
        	<li>
            	<span style="color:black;font-size:12px;">欢迎您:</span>&nbsp;&nbsp;[&nbsp;&nbsp;<a style="font-weight:bold;font-size:16px;">${u_user.nick}</a>&nbsp;&nbsp;]
         	</li>
         	<li>
            	<a href="${pageContext.request.contextPath }/u_user/noLogin" onclick="">注销</a>
         	</li>
        </c:if>
        <c:if test="${empty u_user.nick}">
          <li>
            <a href="${pageContext.request.contextPath }/u_user/login">你好，请登录</a>
          </li>
          <li>
            <a href="${pageContext.request.contextPath }/u_user/register" class="li_2">免费注册</a>
          </li>
        </c:if>
          
        <span>|</span>
          <li>
            <a href="${pageContext.request.contextPath }/u_user/order">我的订单</a>
          </li>
        </ul>
      </div>
    </div>
    <!--搜索导航-->
    <div class="header_sous">
      <div class="header_form">
        <input id="searchText" type="text" placeholder="" />
        <span></span>
        <!--<button><i class="glyphicon"></i></button>-->
        <a href="#" ><img src="${pageContext.request.contextPath }/resources/user/index/img/img_09.png" onclick="search()" /></a>
      </div>
      <div class="header_ico">
        <div class="header_gw">
          <img src="${pageContext.request.contextPath }/resources/user/index/img/img_15.png" />
          <span><a href="${pageContext.request.contextPath }/u_user/order">我的购物车</a></span>
          <c:if test="${empty orderCount }">
	          <span>0</span>
          </c:if>
          <c:if test="${not empty orderCount }">
	         <span>${orderCount }</span>
          </c:if>
         </div>
         <c:if test="${empty orderCount }">
	         <div class="header_ko">
	          	<p>购物车中还没有商品，赶紧选购吧！</p>
	         </div>
         </c:if>
         
      </div>
      <div class="header_form_nav">
        <ul>
          <li>
            <a href="#" class="aaaaa">满999减300</a>
          </li>
          <li>
            <a href="#">金立S11</a>
          </li>
          <li>
            <a href="#">农用物资</a>
          </li>
          <li>
            <a href="#">保暖特惠</a>
          </li>
          <li>
            <a href="#">洗衣机节</a>
          </li>
          <li>
            <a href="#">七度空间卫生巾</a>
          </li>
          <li>
            <a href="#">自动波箱油</a>
          </li>
          <li>
            <a href="#">超市</a>
          </li>
        </ul>
      </div>
      <nav>
        <ul>
          <li>
            <a href="#">秒杀</a>
          </li>
          <li>
            <a href="#">优惠券</a>
          </li>
          <li>
            <a href="#">闪购</a>
          </li>
          <li>
            <a href="#">拍卖</a>
          </li>
        </ul>
        <div class="spacer">|</div>
        <ul>
          <li>
            <a href="#">服饰</a>
          </li>
          <li>
            <a href="#">超市</a>
          </li>
          <li>
            <a href="#">生鲜</a>
          </li>
          <li>
            <a href="#">全球购</a>
          </li>
        </ul>
        <div class="spacer">|</div>
        <ul>
          <li>
            <a href="#">金融</a> v
          </li>
        </ul>
      </nav>
      <div class="right">
        <a href="#"><img src="${pageContext.request.contextPath }/resources/user/index/img/img_21.png" /></a>
      </div>
    </div>
    <!--轮播主体内容-->
    <div class="header_main">
      <div class="header_banner">
        <div class="header_main_left" id="header_main_left">
          <ul>
			<!-- ajax动态生成  -->
          </ul>
        </div>
        <div class="header_main_center">
          <div class="swiper-container swiper1">
            <div class="swiper-wrapper">
              <div class="swiper-slide">
                <a href="#"><img src="${pageContext.request.contextPath }/resources/user/index/img/lunbo.png" /></a>
              </div>

              <div class="swiper-slide">
                <a href="#"><img src="${pageContext.request.contextPath }/resources/user/index/img/lunbo3.png" /></a>
              </div>

              <div class="swiper-slide">
                <a href="#"><img src="${pageContext.request.contextPath }/resources/user/index/img/lunbo6.png" /></a>
              </div>
              <div class="swiper-slide">
                <a href="#"><img src="${pageContext.request.contextPath }/resources/user/index/img/lunbo7.png" /></a>
              </div>
            </div>
            <div class="swiper-pagination"></div>
            <div class="swiper-button-next swiper-button-white"></div>
            <div class="swiper-button-prev swiper-button-white"></div>
          </div>
          <div class="header_main_center_b">
            <a href="#"><img src="${pageContext.request.contextPath }/resources/user/index/img/5a13bf0bNe1606e58.jpg" /></a>
            <a href="#"><img src="${pageContext.request.contextPath }/resources/user/index/img/5a154759N5385d5d6.jpg" /></a>
          </div>
        </div>
        <div class="header_main_right">
          <div class="header_main_right_user">
            <div class="user_info">
              <div class="user_info_tou">
                <a href="#"><img class="" src="${pageContext.request.contextPath }/resources/user/index/img/touxiang.png"></a>
              </div>
              <div class="user_info_show">
                <p class="">Hi, 欢迎来到!</p>
                <c:if test="${not empty u_user.nick }">
                	<span style="color:black;font-size:12px;">欢迎您:</span>&nbsp;&nbsp;&nbsp;<a href="#">${u_user.nick}</a>&nbsp;&nbsp;
                </c:if>
                <c:if test="${empty u_user.nick }">
	                <p>
	                  <a href="${pageContext.request.contextPath }/WEB-INF/views/user/login/login.jsp" class="">登录</a>
	                  <a href="${pageContext.request.contextPath }/WEB-INF/views/user/register/register.jsp" class="">注册</a>
	                </p>
                </c:if>
              </div>
            </div>
            <div class="user_info_hide">
              <a href="#">新人福利</a>
              <a href="#">PLUS会员</a>
            </div>
          </div>
          <div class="header_main_right_new">
            <div class="header_new">
              <div class="header_new_t">
                <p class="active">
                  <a href="#">促销</a>
                </p>
                <p>
                  <a href="#">公告</a>
                </p>
                <a href="#">更多</a>
              </div>
              <div class="header_new_connter">
                <div class="header_new_connter_1">
                  <ul>
                    <li>
                      <a href="#">全民纸巾大作战</a>
                    </li>
                    <li>
                      <a href="#">家具建材满999减300元</a>
                    </li>
                    <li>
                      <a href="#">黑科技冰箱，下单立减千元</a>
                    </li>
                    <li>
                      <a href="#">抢102减101神券！</a>
                    </li>
                  </ul>
                </div>
                <div class="header_new_connter_1" style="display: none;">
                  <ul>
                    <li>
                      <a href="#">关于召回普利司通（天津）轮胎有限公司2个规格乘用车轮胎的公告</a>
                    </li>
                    <li>
                      <a href="#">物流推出配送员统一外呼电话"95056”</a>
                    </li>
                    <li>
                      <a href="#">天府大件运营中心开仓公告</a>
                    </li>
                    <li>
                      <a href="#">大件物流“送装一体”服务全面升级！</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="header_main_right_ser">
            <div class="ser_box">
              <ul>
				<li class="ser_box_item"><a href="#"> 
					<img src="${pageContext.request.contextPath }/resources/user/index/img/huafei.png" />
						<span>话费</span>
				</a></li>
				<li class="ser_box_item"><a href="#"> 
					<img src="${pageContext.request.contextPath }/resources/user/index/img/jipiao.png" />
						<span>机票</span>
				</a></li>
				<li class="ser_box_item"><a href="#"> 
					<img src="${pageContext.request.contextPath }/resources/user/index/img/jiudian.png" />
						<span>酒店</span>
				</a></li>
				<li class="ser_box_item"><a href="#"> 
					<img src="${pageContext.request.contextPath }/resources/user/index/img/youxi.png" />
						<span>游戏</span>
				</a></li>
				<li class="ser_box_item1"><a href="#"> 
					<img src="${pageContext.request.contextPath }/resources/user/index/img/qiyegou.png" />
						<span>企业购</span>
				</a></li>
				<li class="ser_box_item1"><a href="#"> 
					<img src="${pageContext.request.contextPath }/resources/user/index/img/jiayouka.png" />
						<span>加油卡</span>
				</a></li>
				<li class="ser_box_item1"><a href="#"> 
					<img src="${pageContext.request.contextPath }/resources/user/index/img/dianyingpiao.png" />
						<span>电影票</span>
				</a></li>
				<li class="ser_box_item1"><a href="#"> 
					<img src="${pageContext.request.contextPath }/resources/user/index/img/huochepiao.png"
						style="height: 20px;" /> <span>火车票</span>
				</a></li>
				<li class="ser_box_item1"><a href="#"> 
					<img src="${pageContext.request.contextPath }/resources/user/index/img/zhongchou.png" />
						<span>众筹</span>
				</a></li>
				<li class="ser_box_item1"><a href="#"> 
					<img src="${pageContext.request.contextPath }/resources/user/index/img/licai.png"
						style="height: 22px;" /> <span>理财</span>
				</a></li>
				<li class="ser_box_item1"><a href="#"> 
					<img src="${pageContext.request.contextPath }/resources/user/index/img/lipinka.png"
						style="height: 14px;" /> <span>礼品卡</span>
				</a></li>
				<li class="ser_box_item1"><a href="#"> 
					<img src="${pageContext.request.contextPath }/resources/user/index/img/baitiao.png"
						style="height: 20px;" /> <span>白条</span>
				</a></li>
			</ul>
              <div class="ser_box_aaa">
                <div class="ser_box_aaa_one">
                  <div class="ser_box_aaa_nav">
                    <ol>
                      <li class="active">
                        <a href="#">话费</a>
                      </li>
                      <li>
                        <a href="#">机票</a>
                      </li>
                      <li>
                        <a href="#">酒店</a>
                      </li>
                      <li>
                        <a href="#">游戏</a>
                      </li>
                    </ol>
                    <div class="ser_ol">
                      <div class="ser_ol_li">
                        <ul>
                          <div class="guanbi">X</div>
                          <a class="active">话费充值</a>
                          <a>流量充值</a>
                          <a>套餐变更</a>
                          <div class="ser_ol_div">
                            <p>号码<input type="text" /></p>
                            <p style="margin: 10px 0;">面值
                              <select name="">
								<option value="">100元</option>
								<option value="">20元</option>
								<option value="">50元</option>
								<option value="">10元</option>
								<option value="">2元</option>
							  </select>
                              <span>￥98.0-￥100.0</span></p>
                          </div>
                          <button>快速充值</button>
                          <p class="p">抢99减50元话费</p>
                        </ul>

                      </div>
                      <div class="ser_ol_li">
                        <ul>
                          <div class="guanbi">X</div>
                          <a class="active">国际机票</a>
                          <a>国际/港澳</a>
                          <a>特惠活动</a>
                          <div class="ser_ol_div1">
                            <p>
                              <input type="radio" name="a" style="vertical-align:middle;" />单程
                              <input type="radio" name="a" style="vertical-align:middle;" />往返
                            </p>
                            <input type="text" placeholder="出发城市" />
                            <input type="text" placeholder="到达城市" />
                            <input type="text" placeholder="日期" />
                          </div>
                          <button>机票查询</button>
                          <span class="p">当季热门特惠机票</span>
                        </ul>
                      </div>
                      <div class="ser_ol_li">
                        <ul>
                          <div class="guanbi">X</div>
                          <a class="active" style="width: 50%;">国内港澳台</a>
                          <a style="width: 50%;">促销活动</a>
                          <div class="ser_ol_div1">
                            <input type="text" placeholder="出发城市" style="margin-top: 10px;" />
                            <input type="text" placeholder="到达城市" />
                            <input type="text" placeholder="日期" />
                            <input type="text" placeholder="酒店 商圈 地标" />
                          </div>
                          <button>酒店查询</button>
                          <span class="p">订酒店到</span>
                        </ul>
                      </div>
                      <div class="ser_ol_li">
                        <ul>
                          <div class="guanbi">X</div>
                          <a class="active">点卡</a>
                          <a>QQ</a>
                          <a>页游</a>
                          <div class="ser_ol_div1">
                            <input type="text" placeholder="游戏" style="margin-top: 15px;" />
                            <br />面值
                            <select name="" style="margin: 8px 0;">
								<option value="">面值</option>
								<option value="">面值</option>
								<option value="">面值</option>
							</select>
							<span style="color: #C81623;">￥0.00</span>
                            <p>
                              <input type="radio" name="a" style="width: 15px;vertical-align:middle;" />直充
                              <input type="radio" name="a" style="width: 15px;vertical-align:middle;" />卡密
                            </p>
                          </div>
                          <button>快速充值</button>
                          <span class="p">吃鸡就要快人一步</span>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="header_banner1">
        <a href="#" class="a">
  			<img src="${pageContext.request.contextPath }/resources/user/index/img/5a1e5ce2N034ce344.png" class="aa" />
  		</a>
        <div class="header_banner1_div">
          <p>X</p>
        </div>
      </div>
    </div>
  </header>

  <div class="section_second">
    <!-- 第一层 -->
    <div class="section_second_header">
      <p class="section_second_header_img"></p>
      <div class="section_second_header_left">
        <p></p>
        <span class="">秒杀</span>
        <span>总有你想不到的低价</span>
        <span>
        </span>
      </div>
      <div class="section_second_header_right">
        <p>当前场次</p>
        <span class="section_second_header_right_hours">00</span>
        <span class="section_second_header_right_mao">：</span>
        <span class="section_second_header_right_minutes">00</span>
        <span class="section_second_header_right_mao">：</span>
        <span class="section_second_header_right_second">00</span>
        <p>后结束</p>
      </div>
    </div>
    <div class="section_second_list">
      <div class="swiper-container swiper_section_second_list_left">
        <div class="swiper-wrapper">
          <div class="swiper-slide">
            <ul>
              <li>
                <img src="${pageContext.request.contextPath }/resources/user/index/img/section_second_list_img1.jpg" alt="">
                <p>花王 (Merries) 妙而舒 纸尿裤 大号 L54片 尿不湿（9-14千克） （日本官方直采） 花王 (Merries) 妙而舒 纸尿裤 大号 L54片 尿不湿（9-14千</p>
                <span>¥83.9</span><s>¥99.9</s>
              </li>
              <li>
                <img src="${pageContext.request.contextPath }/resources/user/index/img/section_second_list_img2.jpg" alt="">
                <p>华为mate9 4GB+32GB版 月光银 移动联通电信4G手机 双卡</p>
                <span>¥17.90</span><s>¥29.90</s>
              </li>
              <li>
                <img src="${pageContext.request.contextPath }/resources/user/index/img/section_second_list_img3.jpg" alt="">
                <p>超能 植翠低泡洗衣液（鲜艳亮丽）2kg/袋装（新老包装随机</p>
                <span>¥20.70</span><s>¥44.90</s>
              </li>
              <li>
                <img src="${pageContext.request.contextPath }/resources/user/index/img/section_second_list_img4.jpg" alt="">
                <p>长城（GreatWall）红酒 特选5年橡木桶解百纳干红葡萄酒 整</p>
                <span>¥399.00</span><s>¥599.00</s>
              </li>
              <li>
                <img src="${pageContext.request.contextPath }/resources/user/index/img/section_second_list_img5.jpg" alt="">
                <p>惠普(HP)暗影精灵2代Pro 15.6英寸游戏笔记本电脑(i5-7300H</p>
                <span>¥5999.00</span><s>¥6499.00</s>
              </li>
            </ul>
          </div>
          <div class="swiper-slide">
            <ul>
              <li>
                <img src="${pageContext.request.contextPath }/resources/user/index/img/section_second_list_img6.jpg" alt="">
                <p>Apple iMac 21.5英寸一体机（2017新款四核Core i5 处理器/8GB内存/1TB/RP555显卡/4K屏 MNDY2CH/A） Apple iMac 21.5英寸一体机（2017新款四核Core i5 处理</p>
                <span>¥9588.00</span><s>¥10288.00</s>
              </li>
              <li>
                <img src="${pageContext.request.contextPath }/resources/user/index/img/section_second_list_img7.jpg" alt="">
                <p>中柏（Jumper）EZpad 4S Pro 10.6英寸二合一平板电脑（X5 z</p>
                <span>¥848.00</span><s>¥899.00</s>
              </li>
              <li>
                <img src="${pageContext.request.contextPath }/resources/user/index/img/section_second_list_img8.jpg" alt="">
                <p>飞利浦（PHILIPS）电动牙刷HX6761/03亮白型成人充电式声波震动牙刷粉色 飞利浦（PHILIPS）电动牙刷HX6761/03亮白型成人充电式声波
                </p>
                <span>¥379.00</span><s>¥698.00</s>
              </li>
              <li>
                <img src="${pageContext.request.contextPath }/resources/user/index/img/section_second_list_img9.jpg" alt="">
                <p>美的(Midea) 258升 变频智能三门冰箱 一级能效 风冷无霜 中门</p>
                <span>¥3088.00</span><s>¥3299.00</s>
              </li>
              <li>
                <img src="${pageContext.request.contextPath }/resources/user/index/img/section_second_list_img10.jpg" alt="">
                <p>【第二件减50元】蒙羊 内蒙古羔羊羊肋排 2.4斤</p>
                <span>¥99.90</span><s>¥199.00</s>
              </li>
            </ul>
          </div>
        </div>
        <div class="swiper-button-prev second_list">
          <p></p>
        </div>
        <div class="swiper-button-next second_list">
          <p></p>
        </div>
      </div>
      <ul class="section_second_list_right">
        <li>
          <img src="${pageContext.request.contextPath }/resources/user/index/img/section_second_list_right_img.jpg" alt="">
        </li>
        <li>
          <img src="${pageContext.request.contextPath }/resources/user/index/img/section_second_list_right_img.png" alt="">
        </li>
        <div class="section_second_list_right_button">
          <p class="section_second_list_right_button_active"></p>
          <p></p>
        </div>
      </ul>
    </div>
 
 
  </div>


 
</body>
<script type="text/javascript">
  function search() {
      var keyword=$("#searchText").val();
      selectByName(keyword);
  }
	
</script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/user/index/js/text.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/user/index/js/header.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/user/index/js/secend.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/user/index/js/zz.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/user/index/js/index.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/user/index/js/left,top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/user/index/js/catalogLoader.js"></script>
<script type="text/javascript">
function selectByName(name) {
	
	$.ajax({
		url:'../goods/selectByName',
		type:'get',
		data:{cataName:name},
		dataType:'json',
		success:function(data) {
			window.location.href='${pageContext.request.contextPath }/u_user/list?name=' + name;
		}
	})
	
}
</script>
</html>