
-- ****默认导入包****
require "import"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
-- ****不需要请删除****

import "androidx.appcompat.widget.LinearLayoutCompat"
import "com.google.android.material.appbar.AppBarLayout"
import "androidx.viewpager.widget.ViewPager"
import "androidx.cardview.widget.CardView"
import "com.google.android.material.imageview.ShapeableImageView"
import "android.widget.LinearLayout"
import "android.widget.TextView"
import "androidx.appcompat.widget.Toolbar"
import "android.content.res.ColorStateList"
import "android.widget.Toolbar"
import "android.view.View"
import "androidx.core.widget.NestedScrollView"
import "com.google.android.material.appbar.CollapsingToolbarLayout"
import "com.google.android.material.bottomnavigation.BottomNavigationView"
import "androidx.coordinatorlayout.widget.CoordinatorLayout"
import "android.view.WindowManager"


import "android.widget.Toolbar"
import "androidx.appcompat.widget.Toolbar"
import "androidx.core.widget.NestedScrollView"
import "com.bumptech.glide.Glide"
import "android.view.WindowManager"
import "com.google.android.material.card.MaterialCardView"
import "android.view.View"
import "com.androlua.Http"
import "com.google.android.material.bottomnavigation.BottomNavigationView"
import "androidx.viewpager.widget.ViewPager"
import "com.google.android.material.appbar.AppBarLayout"
import "android.widget.ImageView"
import "androidx.appcompat.widget.LinearLayoutCompat"
import "android.widget.LinearLayout"
import "android.content.res.ColorStateList"
import "androidx.coordinatorlayout.widget.CoordinatorLayout"
import "com.google.android.material.appbar.CollapsingToolbarLayout"
import "android.widget.TextView"

require"import"
material={"animation","appbar","badge","behavior","bottomappbar","bottomnavigation","bottomsheet","button","canvas","card","checkbox","chip","circularreveal","color","datepicker","dialog","divider","drawable","elevation","expandable","floatingactionbutton","imageview","internal","math","navigation","radiobutton","resources","ripple","shadow","shape","slider","snackbar","stateful","switchmaterial","tabs","textfield","textview","theme","timepicker","tooltip","transformation","transition",}
local path="com.google.android.material."
import (path.."*")
for _,v in pairs(material) do
  import(path..v..".*")
end

import "android.Manifest"
import "androidx.core.app.ActivityCompat"
ActivityCompat.requestPermissions(activity,
String{Manifest.permission.WRITE_EXTERNAL_STORAGE,Manifest.permission.READ_EXTERNAL_STORAGE}, 0);
--动态权限申请-勿删




theme=tonumber(activity.getSharedData("the"))




--获取系统颜色
local resources=activity.getResources()
function m3c(s)
  value = resources.getColor(android.R.color[s])
  return value
end



--
import "androidx.recyclerview.widget.RecyclerView"
import "android.widget.TextView"
import "android.widget.LinearLayout"
import "com.androlua.LuaRecyclerAdapter"
import "androidx.recyclerview.widget.LinearLayoutManager"
import "com.google.android.material.card.MaterialCardView"
import "androidx.recyclerview.widget.RecyclerView$Orientation"
import "androidx.viewpager2.widget.ViewPager2$Orientation"
import "android.graphics.drawable.GradientDrawable$Orientation"
import "androidx.core.widget.NestedScrollView"
import "android.view.WindowManager"
import "com.google.android.material.button.MaterialButton"
import "androidx.recyclerview.widget.*"
import "com.google.android.material.snackbar.Snackbar"
import "com.google.android.material.card.MaterialCardView"
import "com.google.android.material.appbar.AppBarLayout"
import "android.graphics.Color"


--颜色
背景色=0xFFF6F2EF
卡片文本=0xFF032107
标题色=0xFF706F6D
字体黑色=0xFF000000
字体白色=0xFFFFFFFF
浅色=0xFFFFE28B
深色=0xFFFFB86A
卡片底色=0xFFFFFFFF
大标题色=0xFF000000
透明=0x1FFFFFF
卡片文本=0xFF000000
按钮底色=0xFFFFB86A
按钮文本=0xFFFFFFFF
红色=0xFFFF0040

if theme == 1 then
 
 elseif theme == 2 then
 背景色=0xFFF5F5F5
 浅色=0xFFB3B3B3
 深色=0xFF000000
 按钮底色=0xFF000000
 按钮文本=0xFFFFFFFF
 elseif theme == 3 then
 背景色=0xFFF9E6E5
 浅色=0xFFFEB4B3
 深色=0xFFFEB4B3
 按钮底色=0xFFFEB4B3
 按钮文本=0xFFFFFFFF
 elseif theme == 4 then
 背景色=0xFFF3FFE8
 浅色=0xFF96C34E
 深色=0xFF96C34E
 按钮底色=0xFF96C34E
 按钮文本=0xFFFFFFFF
 elseif theme == 5 then
 背景色=0xff182048
 深色=0xFFBDC7E6
 浅色=0xFFD1DCFF
 大标题色=0xFFFFFFFF
 标题色=0xFFFFFFFF
 卡片底色=0xFF5C6391
 卡片文本=0xFFFFFFFF
 按钮底色=0xFFBDC7E6
 按钮文本=0xFFFFFFFF
 elseif theme == 6 then
 背景色=0xFFBF3545
 深色=0xFFE0C28F
 浅色=0xFFFFFFFF
 大标题色=0xFFFFE6B0
 标题色=0xFFC7B990
 卡片底色=0xFF9D1636
 卡片文本=0xFFFFE6B0
 按钮底色=0xFFE0C28F
 按钮文本=0xFFFFFFFF
 elseif theme == 7 then
 背景色=0xFF6A798E
 深色=0xFFC4CDD7
 浅色=0xFFEAF0FF
 大标题色=0xFFEAF0FF
 标题色=0xFFC0CAD3
 卡片底色=0xFFEAF0FF
 卡片文本=0xFF274466
 按钮底色=0xFFC4CDD7
 按钮文本=0xFFFFFFFF
 elseif theme == 8 then
 背景色=0xff000000
 深色=0xFFFFFFFF
 浅色=0xFF252525
 大标题色=0xFFFFFFFF
 标题色=0xFFFFFFFF
 卡片底色=0xFF252525
 卡片文本=0xFFFFFFFF 
 elseif theme == 9 then
 背景色=0xFFB6DBF6
 深色=0xFFFFFFFF
 浅色=0xFFFFFFFF
 大标题色=0xFFFFFFFF
 标题色=0xFFFFFFFF
 卡片底色=0xFFA2C5FF
 卡片文本=0xFFFFFFFF
 按钮底色=0xFF74A8FF
 按钮文本=0xFFFFFFFF
 elseif theme == 10 then--浅色跟随
 背景色=m3c("system_neutral1_10")
 大标题色=m3c("system_accent1_600")
 标题色=m3c("system_accent1_600")
 浅色=m3c("system_accent1_600")
 深色=m3c("system_accent1_600")
 卡片底色=m3c("system_accent2_50")
 卡片文本=m3c("system_accent1_600")
 按钮底色=m3c("system_accent1_200")
 按钮文本=m3c("system_neutral1_10")
 elseif theme == 11 then--深色跟随
 背景色=m3c("system_accent1_600")
 大标题色=m3c("system_neutral1_10")
 标题色=m3c("system_neutral1_10")
 浅色=m3c("system_neutral1_10")
 深色=m3c("system_neutral1_10")
 卡片底色=m3c("system_accent1_200")
 卡片文本=m3c("system_accent1_600")
 按钮底色=m3c("system_accent1_800")
 按钮文本=m3c("system_neutral1_10")
end
 if Build.VERSION.SDK_INT <31 then
 else
 md浅背景=m3c("system_neutral1_10")
 md浅大标题色=m3c("system_accent1_600")
 md浅标题色=m3c("system_accent1_600")
 
 md深背景色=m3c("system_accent1_600")
 md深大标题色=m3c("system_neutral1_10")
 md深标题色=m3c("system_neutral1_10")
 end


import "android.graphics.Color"
--状态栏和导航栏沉浸式
if Build.VERSION.SDK_INT >= 21 then
  window = activity.getWindow()
  window.clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
  window.getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN
  | View.SYSTEM_UI_FLAG_LAYOUT_STABLE |View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR);
  window.addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
  window.setStatusBarColor(Color.TRANSPARENT);
  window.addFlags(WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS);
 else
  window.addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
  window.addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION);
end


activity.setSharedData("pages","3")

--r
if activity.getPackageName()=="net.fusion64j" then
  R=luajava.bindClass "net.fusion64j.R"
 else
  R=luajava.bindClass "net.fusion64j.core.R"
end

--函数
function checked(vv,num)--底栏项目选中事件
  vv.getMenu().getItem(num).setChecked(true)
end
--退出动画
function onKeyDown(key,event)
  if(key==4)then
    activity.finish()
    --下面代码的参数(1,2)就是和跳转进入代码相反(2,1)
    activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
  end
end



--导入包
import({"com.google.android.material.shape.RelativeCornerSize","com.google.android.material.shape.ShapeAppearanceModel","android.view.animation.DecelerateInterpolator","android.view.animation.Animation","android.animation.ArgbEvaluator","android.graphics.Color","android.animation.ObjectAnimator","android.animation.LayoutTransition","android.os.*","android.widget.*","android.view.*","android.content.res.ColorStateList","androidx.coordinatorlayout.widget.CoordinatorLayout","androidx.core.widget.NestedScrollView","com.google.android.material.appbar.AppBarLayout","com.google.android.material.appbar.CollapsingToolbarLayout","androidx.appcompat.widget.Toolbar","com.google.android.material.card.MaterialCardView","com.google.android.material.chip.*","android.graphics.Color"})

--函数
function dp2px(dpValue)
  local scale = activity.getResources().getDisplayMetrics().scaledDensity
  return dpValue * scale + 0.5
end

function 颜色渐变(id,color,...)
  time=200
  str="cardBackgroundColor"
  if ...==nil then
   elseif type(...)=="string" then
    str=...
   elseif type(...)=="number" then
    time=...
  end
  ObjectAnimator.ofInt(id,str,color)
  .setInterpolator(DecelerateInterpolator())--动画插值器
  .setDuration(time)--动画时间
  .setRepeatCount(0.5)--动画循环
  .setRepeatMode(Animation.REVERSE)--循环模式
  .setEvaluator(ArgbEvaluator())
  .start()--动画开始
end

--页布局(这里写在一起是为了方便展示
one={ 
  LinearLayout,
  orientation=LinearLayout.VERTICAL,
  layout_width="match",
  layout_height="match",
  layout_width='fill';--布局宽度
  layout_height='fill';--布局高度 
  {
    NestedScrollView,--纵向滑动控件
    layout_width="fill",--布局宽度
    layout_height="fill",--布局高度
    overScrollMode=View.OVER_SCROLL_NEVER,--显示圆弧阴影
    verticalScrollBarEnabled=false,--显示纵向滑条
    id="shu",
    {
      LinearLayout,--线性布局
      orientation="vertical",--布局方向
      layout_width="fill",--布局宽度
      layout_height="fill",--布局高度
       {
          MaterialCardView;--卡片控件
          layout_margin='5dp';--边距
          layout_gravity='center|left';--重力
          elevation='0dp';--阴影
          layout_width='fill';--宽度
          layout_height='80dp';--高度
          CardBackgroundColor=背景色;--颜色
          radius='40dp';--圆角
          layout_marginLeft='0dp';--左距
          layout_marginRight='0dp';--右距
          layout_marginTop="60dp",--顶距       
          elevation='0dp';--阴影    
         {
          TextView,
          layout_gravity='center|left';--重力
          layout_marginLeft='30dp';--左距
          text="程序设置",
          textSize="28sp",
          textStyle="bold",
          textColor=大标题色;--文字颜色
          id="Ti0",
         },       
         {
          MaterialCardView;--卡片控件
          layout_margin='5dp';--边距
          layout_gravity='center|right';--重力
          elevation='0dp';--阴影
          layout_width='30dp';--宽度
          layout_height='30dp';--高度
          CardBackgroundColor=背景色;--颜色
          radius='50dp';--圆角
          layout_marginLeft='180dp';--左距
          layout_marginRight='40dp';--右距
          layout_marginTop="5dp",--顶距       
          elevation='0dp';--阴影
          id="";
          {
           ImageView,
           scaleType="centerCrop",
           layout_width="fill",
           layout_height="fill",
           layout_marginTop="0dp",--顶距
           layout_margin='0%w';--边距
           src="ic_public_cancel.png",
           ColorFilter=大标题色;--图片着色  
           id="back";
          },             
         },     
        },
         {
          MaterialCardView;--卡片控件
          layout_margin='5dp';--边距
          layout_gravity='center|left';--重力
          elevation='0dp';--阴影
          layout_width='fill';--宽度
          layout_height='30dp';--高度
          CardBackgroundColor=背景色;--颜色
          radius='40dp';--圆角
          layout_marginLeft='0dp';--左距
          layout_marginRight='0dp';--右距
          layout_marginTop="0dp",--顶距       
          elevation='0dp';--阴影 
          {
           TextView;--文本控件
           layout_width='fill';--文本宽度
           layout_height='fill';--文本高度
           gravity='left';--重力属性          
           layout_marginLeft='25dp';--边距 
           layout_marginTop='0dp';--边距 
           textColor=标题色;--文字颜色
           text='外观';--显示的文字
           textSize='20sp';--文字      
           id="lrl";
          };       
         },
         {
        MaterialCardView;--卡片控件
        layout_margin='0dp';--边距
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='wrap';--高度
        CardBackgroundColor=卡片底色;--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--边距
        layout_marginRight='20dp';--边距
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
         {LinearLayout,
          Orientation=1,
          layout_width="fill",
          layout_height="fill",
          layout_marginLeft="0dp",
          layout_marginRight="0dp",
          layout_gravity="center",
          {
           TextView;--文本控件
           layout_width='fill';--文本宽度
           layout_height='fill';--文本高度
           gravity='left';--重力属性          
           layout_marginLeft='20dp';--边距 
           layout_marginTop='20dp';--边距 
           textColor=卡片文本;--文字颜色
           text='主题';--显示的文字
           textSize='17sp';--文字      
           id="lrl";
          };       
  
--横向滑动控件--
 {
  HorizontalScrollView,--横向滑动控件
  layout_width="fill",--布局宽度
  layout_height="150dp",--布局高度
  overScrollMode=View.OVER_SCROLL_NEVER,--隐藏圆弧阴影
  horizontalScrollBarEnabled=false,--隐藏横向滑条
  layout_marginTop="20dp",--顶距  
  layout_marginBottom="0dp",--底距  
  {
    LinearLayout,--线性布局
    orientation="horizontal",--布局方向
    layout_width="fill",--布局宽度
    layout_height="fill",--布局高度
    gravity="left|center",--重力居左｜置中     
      {
        MaterialCardView;--卡片控件                      
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='130dp';--宽度
        layout_height='150dp';--高度
        CardBackgroundColor='0xFFF6F2EF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影        
        id="theme1";   
         {
          TextView,
          layout_gravity='left';--重力        
          layout_marginLeft='15dp';--边距 
          layout_marginTop='15dp';--边距      
          text="原生",
          textSize="25sp",
          textStyle="bold",
          textColor="0xFF000000";--文字颜色          
         },       
         {
          TextView,
          layout_gravity='left';--重力        
          layout_marginLeft='15dp';--边距 
          layout_marginRight='15dp';--边距 
          layout_marginTop='47dp';--边距      
          text="美化的尽头，是最初的模样",
          textSize="15sp",
          textStyle="bold",
          textColor="0xFF706F6D";--文字颜色         
         },       
       },
       {
        MaterialCardView;--卡片控件                      
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='130dp';--宽度
        layout_height='150dp';--高度
        CardBackgroundColor='0xFFF5F5F5';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影        
        id="theme2";   
         {
          TextView,
          layout_gravity='left';--重力        
          layout_marginLeft='15dp';--边距 
          layout_marginTop='15dp';--边距      
          text="黑白",
          textSize="25sp",
          textStyle="bold",
          textColor="0xFF000000";--文字颜色          
         },       
         {
          TextView,
          layout_gravity='left';--重力        
          layout_marginLeft='15dp';--边距 
          layout_marginRight='15dp';--边距 
          layout_marginTop='47dp';--边距      
          text="简约而不失高雅",
          textSize="15sp",
          textStyle="bold",
          textColor="0xFF706F6D";--文字颜色         
         },       
       },
       {
        MaterialCardView;--卡片控件                      
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='130dp';--宽度
        layout_height='150dp';--高度
        CardBackgroundColor='0xFFF9E6E5';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影        
        id="theme3";   
         {
          TextView,
          layout_gravity='left';--重力        
          layout_marginLeft='15dp';--边距 
          layout_marginTop='15dp';--边距      
          text="樱粉",
          textSize="25sp",
          textStyle="bold",
          textColor="0xFF000000";--文字颜色          
         },       
         {
          TextView,
          layout_gravity='left';--重力        
          layout_marginLeft='15dp';--边距 
          layout_marginRight='15dp';--边距 
          layout_marginTop='47dp';--边距      
          text="毛怪桑，故乡的...",
          textSize="15sp",
          textStyle="bold",
          textColor="0xFF706F6D";--文字颜色         
         },       
       },
       {
        MaterialCardView;--卡片控件                      
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='130dp';--宽度
        layout_height='150dp';--高度
        CardBackgroundColor='0xFFF3FFE8';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影        
        id="theme4";   
         {
          TextView,
          layout_gravity='left';--重力        
          layout_marginLeft='15dp';--边距 
          layout_marginTop='15dp';--边距      
          text="抹茶",
          textSize="25sp",
          textStyle="bold",
          textColor="0xFF000000";--文字颜色          
         },       
         {
          TextView,
          layout_gravity='left';--重力        
          layout_marginLeft='15dp';--边距 
          layout_marginRight='15dp';--边距 
          layout_marginTop='47dp';--边距      
          text="好喝，好吃，更好看",
          textSize="15sp",
          textStyle="bold",
          textColor="0xFF706F6D";--文字颜色         
         },       
       },
       {
        MaterialCardView;--卡片控件                      
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='130dp';--宽度
        layout_height='150dp';--高度
        CardBackgroundColor='0xff182048';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影        
        id="theme5";   
         {
          TextView,
          layout_gravity='left';--重力        
          layout_marginLeft='15dp';--边距 
          layout_marginTop='15dp';--边距      
          text="银狼",
          textSize="25sp",
          textStyle="bold",
          textColor="0xFFFFFFFF";--文字颜色          
         },       
         {
          TextView,
          layout_gravity='left';--重力        
          layout_marginLeft='15dp';--边距 
          layout_marginRight='15dp';--边距 
          layout_marginTop='47dp';--边距      
          text="宇宙第一天才骇客少女",
          textSize="15sp",
          textStyle="bold",
          textColor="0xFFFFFFFF";--文字颜色         
         },       
       },
       {
        MaterialCardView;--卡片控件                      
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='130dp';--宽度
        layout_height='150dp';--高度
        CardBackgroundColor='0xFFBF3545';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影        
        id="theme6";   
         {
          TextView,
          layout_gravity='left';--重力        
          layout_marginLeft='15dp';--边距 
          layout_marginTop='15dp';--边距      
          text="新年",
          textSize="25sp",
          textStyle="bold",
          textColor="0xFFFFE6B0";--文字颜色 
          id="ny",         
         },       
         {
          TextView,
          layout_gravity='left';--重力        
          layout_marginLeft='15dp';--边距 
          layout_marginRight='15dp';--边距 
          layout_marginTop='47dp';--边距      
          text="每年看都不一样",
          textSize="15sp",
          textStyle="bold",
          textColor="0xFFC7B990";--文字颜色         
         },       
       },
       {
        MaterialCardView;--卡片控件                      
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='130dp';--宽度
        layout_height='150dp';--高度
        CardBackgroundColor='0xFF6A798E';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影        
        id="theme7";   
         {
          TextView,
          layout_gravity='left';--重力        
          layout_marginLeft='15dp';--边距 
          layout_marginTop='15dp';--边距      
          text="次生银翼",
          textSize="25sp",
          textStyle="bold",
          textColor="0xFFEAF0FF";--文字颜色          
         },       
         {
          TextView,
          layout_gravity='left';--重力        
          layout_marginLeft='15dp';--边距 
          layout_marginRight='15dp';--边距 
          layout_marginTop='47dp';--边距      
          text="喝，长大了！",
          textSize="15sp",
          textStyle="bold",
          textColor="0xFFC0CAD3";--文字颜色         
         },       
       },
       {
        MaterialCardView;--卡片控件                      
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='130dp';--宽度
        layout_height='150dp';--高度
        CardBackgroundColor='0xff000000';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影        
        id="theme8";   
         {
          TextView,
          layout_gravity='left';--重力        
          layout_marginLeft='15dp';--边距 
          layout_marginTop='15dp';--边距      
          text="黑",
          textSize="25sp",
          textStyle="bold",
          textColor="0xFFFFFFFF";--文字颜色          
         },       
         {
          TextView,
          layout_gravity='left';--重力        
          layout_marginLeft='15dp';--边距 
          layout_marginRight='15dp';--边距 
          layout_marginTop='47dp';--边距      
          text="AMOLED屏省电小助手",
          textSize="15sp",
          textStyle="bold",
          textColor="0xFFFFFFFF";--文字颜色         
         },       
       },
       {
        MaterialCardView;--卡片控件                      
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='130dp';--宽度
        layout_height='150dp';--高度
        CardBackgroundColor='0xFFB6DBF6';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影        
        id="theme9";   
         {
          TextView,
          layout_gravity='left';--重力        
          layout_marginLeft='15dp';--边距 
          layout_marginTop='15dp';--边距      
          text="真理",
          textSize="25sp",
          textStyle="bold",
          textColor="0xFFFFFFFF";--文字颜色          
         },       
         {
          TextView,
          layout_gravity='left';--重力        
          layout_marginLeft='15dp';--边距 
          layout_marginRight='15dp';--边距 
          layout_marginTop='47dp';--边距      
          text="不负世界之名！",
          textSize="15sp",
          textStyle="bold",
          textColor="0xFFFFFFFF";--文字颜色         
         },       
       },
       {
        MaterialCardView;--卡片控件                      
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='130dp';--宽度
        layout_height='150dp';--高度
        CardBackgroundColor=md浅背景;--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影        
        id="theme10";   
         {
          TextView,
          layout_gravity='left';--重力        
          layout_marginLeft='15dp';--边距 
          layout_marginTop='15dp';--边距      
          text="壁纸色",
          textSize="25sp",
          textStyle="bold",
          textColor=md浅大标题色;--文字颜色          
         },       
         {
          TextView,
          layout_gravity='left';--重力        
          layout_marginLeft='15dp';--边距 
          layout_marginRight='15dp';--边距 
          layout_marginTop='47dp';--边距      
          text="浅色系，随着壁纸主色调的变化自动变化",
          textSize="15sp",
          textStyle="bold",
          textColor=md浅标题色;--文字颜色         
         },       
       },
       {
        MaterialCardView;--卡片控件                      
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='130dp';--宽度
        layout_height='150dp';--高度
        CardBackgroundColor=md深背景色;--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影        
        id="theme11";   
         {
          TextView,
          layout_gravity='left';--重力        
          layout_marginLeft='15dp';--边距 
          layout_marginTop='15dp';--边距      
          text="壁纸色",
          textSize="25sp",
          textStyle="bold",
          textColor=md深大标题色;--文字颜色          
         },       
         {
          TextView,
          layout_gravity='left';--重力        
          layout_marginLeft='15dp';--边距 
          layout_marginRight='15dp';--边距 
          layout_marginTop='47dp';--边距      
          text="深色系，随着壁纸主色调的变化自动变化",
          textSize="15sp",
          textStyle="bold",
          textColor=md深标题色;--文字颜色         
         },       
       },  

      
      {
        MaterialCardView;--卡片控件        
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='10dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#1FFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影       
      },
        
 },
},   

        {
         MaterialCardView;--卡片控件        
         layout_gravity='center|top';--重力        
         layout_width='fill';--宽度
         layout_height='35dp';--高度
         CardBackgroundColor=卡片底色;--颜色           
         layout_marginTop="25dp",--顶距 
         layout_marginBottom="20dp",--顶距                    
         elevation='0dp';--阴影
         {
          TextView;--文本控件
          layout_width='fill';--文本宽度
          layout_height='fill';--文本高度
          gravity='center|left';--重力属性          
          layout_marginLeft='20dp';--边距 
          textColor=卡片文本;--文字颜色
          text='弹窗居中';--显示的文字
          textSize='20sp';--文字               
         };
         {MaterialCardView,
          rippleColor=ColorStateList.valueOf(0),
          layout_marginRight="20dp",
          Elevation=0,
          layout_gravity='center|right';--重力
          strokeColor=按钮底色,
          layout_width="52dp",
          elevation=0,
          id="switchcard3",
          layout_height="32dp",
          CardBackgroundColor=卡片底色,
          strokeWidth="2dp",
          shapeAppearanceModel=ShapeAppearanceModel.builder()
          .setAllCornerSizes(RelativeCornerSize(0.5))
          .build(),
          {LinearLayout,
            orientation=0,
            layout_width=-1,
            layout_height=-1,
            layoutTransition=LayoutTransition()
            .enableTransitionType(LayoutTransition.CHANGING)
            .setDuration(LayoutTransition.CHANGE_APPEARING,200)
            .setDuration(LayoutTransition.CHANGE_DISAPPEARING,200),
            {View,
              id="间隔3",
              layout_width="21dp",
              Visibility=8,
            },
            {MaterialCardView,
              Elevation=0,
              X=dp2px(0),
              layout_gravity="center",
              layout_width="32dp",
              elevation=0,
              id="球框架3",
              layout_height="32dp",
              CardBackgroundColor=0x00000000,
              shapeAppearanceModel=ShapeAppearanceModel.builder()
              .setAllCornerSizes(RelativeCornerSize(0.5))
              .build(),
              {MaterialCardView,
                layout_gravity="center",
                Elevation=0,
                layout_gravity="center",
                layout_width="wrap",
                elevation=0,
                id="球3",
                layout_height="wrap",
                CardBackgroundColor=按钮底色,
                layoutTransition=LayoutTransition()
                .enableTransitionType(LayoutTransition.CHANGING)
                .setDuration(LayoutTransition.CHANGE_APPEARING,50)
                .setDuration(LayoutTransition.CHANGE_DISAPPEARING,100),
                shapeAppearanceModel=ShapeAppearanceModel.builder()
                .setAllCornerSizes(RelativeCornerSize(0.5))
                .build(),
                {View,
                  layout_width="16dp",
                  layout_height="16dp",
                },
                {View,
                  id="大球3",
                  layout_width="24dp",
                  layout_height="24dp",
                  visibility=8,
                },
                {View,
                  id="超大球3",
                  layout_width="29dp",
                  layout_height="29dp",
                  visibility=8,
                },
              },
            },
          },
         },
       
        },

      
      
      
      
         },
       };  
         
         
         
         
         
         {
          MaterialCardView;--卡片控件
          layout_margin='5dp';--边距
          layout_gravity='center|left';--重力
          elevation='0dp';--阴影
          layout_width='fill';--宽度
          layout_height='30dp';--高度
          CardBackgroundColor=背景色;--颜色
          radius='40dp';--圆角
          layout_marginLeft='0dp';--左距
          layout_marginRight='0dp';--右距
          layout_marginTop="20dp",--顶距       
          elevation='0dp';--阴影 
          {
           TextView;--文本控件
           layout_width='fill';--文本宽度
           layout_height='fill';--文本高度
           gravity='left';--重力属性          
           layout_marginLeft='25dp';--边距 
           layout_marginTop='0dp';--边距 
           textColor=标题色;--文字颜色
           text='功能';--显示的文字
           textSize='20sp';--文字      
           id="lrl";
          };       
         },
        {
        MaterialCardView;--卡片控件
        layout_margin='5dp';--边距
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='wrap';--高度
        CardBackgroundColor=卡片底色;--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--边距
        layout_marginRight='20dp';--边距
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        {LinearLayout,
          Orientation=1,
          layout_width="fill",
          layout_height="fill",        
          layout_gravity="center",
       {
        MaterialCardView;--卡片控件        
        layout_gravity='center|top';--重力        
        layout_width='fill';--宽度
        layout_height='35dp';--高度
        CardBackgroundColor=卡片底色;--颜色           
        layout_marginTop="20dp",--顶距       
        elevation='0dp';--阴影
        {
          TextView;--文本控件
          layout_width='fill';--文本宽度
          layout_height='fill';--文本高度
          gravity='center|left';--重力属性          
          layout_marginLeft='20dp';--边距
          textColor=卡片文本;--文字颜色
          text='禁用更新获取';--显示的文字
          textSize='20sp';--文字               
        };
        {MaterialCardView,
          rippleColor=ColorStateList.valueOf(0),
          layout_marginRight="20dp",
          Elevation=0,
          layout_gravity='center|right';--重力
          strokeColor=按钮底色,
          layout_width="52dp",
          elevation=0,
          id="switchcard1",
          layout_height="32dp",
          CardBackgroundColor=卡片底色,
          strokeWidth="2dp",
          shapeAppearanceModel=ShapeAppearanceModel.builder()
          .setAllCornerSizes(RelativeCornerSize(0.5))
          .build(),
          {LinearLayout,
            orientation=0,
            layout_width=-1,
            layout_height=-1,
            layoutTransition=LayoutTransition()
            .enableTransitionType(LayoutTransition.CHANGING)
            .setDuration(LayoutTransition.CHANGE_APPEARING,200)
            .setDuration(LayoutTransition.CHANGE_DISAPPEARING,200),
            {View,
              id="间隔",
              layout_width="21dp",
              Visibility=8,
            },
            {MaterialCardView,
              Elevation=0,
              X=dp2px(0),
              layout_gravity="center",
              layout_width="32dp",
              elevation=0,
              id="球框架",
              layout_height="32dp",
              CardBackgroundColor=0x00000000,
              shapeAppearanceModel=ShapeAppearanceModel.builder()
              .setAllCornerSizes(RelativeCornerSize(0.5))
              .build(),
              {MaterialCardView,
                layout_gravity="center",
                Elevation=0,
                layout_gravity="center",
                layout_width="wrap",
                elevation=0,
                id="球",
                layout_height="wrap",
                CardBackgroundColor=按钮底色,
                layoutTransition=LayoutTransition()
                .enableTransitionType(LayoutTransition.CHANGING)
                .setDuration(LayoutTransition.CHANGE_APPEARING,50)
                .setDuration(LayoutTransition.CHANGE_DISAPPEARING,100),
                shapeAppearanceModel=ShapeAppearanceModel.builder()
                .setAllCornerSizes(RelativeCornerSize(0.5))
                .build(),
                {View,
                  layout_width="16dp",
                  layout_height="16dp",
                },
                {View,
                  id="大球",
                  layout_width="24dp",
                  layout_height="24dp",
                  visibility=8,
                },
                {View,
                  id="超大球",
                  layout_width="29dp",
                  layout_height="29dp",
                  visibility=8,
                },
              },
            },
          },
        },
       
       },
       {
        MaterialCardView;--卡片控件        
        layout_gravity='center|top';--重力        
        layout_width='fill';--宽度
        layout_height='35dp';--高度
        CardBackgroundColor=卡片底色;--颜色           
        layout_marginTop="25dp",--顶距 
        layout_marginBottom="20dp",--顶距        
        elevation='0dp';--阴影
        {
          TextView;--文本控件
          layout_width='fill';--文本宽度
          layout_height='fill';--文本高度
          gravity='center|left';--重力属性          
          layout_marginLeft='20dp';--边距 
          textColor=卡片文本;--文字颜色
          text='外部下载';--显示的文字
          textSize='20sp';--文字               
        };
        {MaterialCardView,
          rippleColor=ColorStateList.valueOf(0),
          layout_marginRight="20dp",
          Elevation=0,
          layout_gravity='center|right';--重力
          strokeColor=按钮底色,
          layout_width="52dp",
          elevation=0,
          id="switchcard2",
          layout_height="32dp",
          CardBackgroundColor=卡片底色,
          strokeWidth="2dp",
          shapeAppearanceModel=ShapeAppearanceModel.builder()
          .setAllCornerSizes(RelativeCornerSize(0.5))
          .build(),
          {LinearLayout,
            orientation=0,
            layout_width=-1,
            layout_height=-1,
            layoutTransition=LayoutTransition()
            .enableTransitionType(LayoutTransition.CHANGING)
            .setDuration(LayoutTransition.CHANGE_APPEARING,200)
            .setDuration(LayoutTransition.CHANGE_DISAPPEARING,200),
            {View,
              id="间隔2",
              layout_width="21dp",
              Visibility=8,
            },
            {MaterialCardView,
              Elevation=0,
              X=dp2px(0),
              layout_gravity="center",
              layout_width="32dp",
              elevation=0,
              id="球框架2",
              layout_height="32dp",
              CardBackgroundColor=0x00000000,
              shapeAppearanceModel=ShapeAppearanceModel.builder()
              .setAllCornerSizes(RelativeCornerSize(0.5))
              .build(),
              {MaterialCardView,
                layout_gravity="center",
                Elevation=0,
                layout_gravity="center",
                layout_width="wrap",
                elevation=0,
                id="球2",
                layout_height="wrap",
                CardBackgroundColor=按钮底色,
                layoutTransition=LayoutTransition()
                .enableTransitionType(LayoutTransition.CHANGING)
                .setDuration(LayoutTransition.CHANGE_APPEARING,50)
                .setDuration(LayoutTransition.CHANGE_DISAPPEARING,100),
                shapeAppearanceModel=ShapeAppearanceModel.builder()
                .setAllCornerSizes(RelativeCornerSize(0.5))
                .build(),
                {View,
                  layout_width="16dp",
                  layout_height="16dp",
                },
                {View,
                  id="大球2",
                  layout_width="24dp",
                  layout_height="24dp",
                  visibility=8,
                },
                {View,
                  id="超大球2",
                  layout_width="29dp",
                  layout_height="29dp",
                  visibility=8,
                },
              },
            },
          },
        },
       
       },
   
      
      
      
      
      
       },
       },
 ---------空卡---------------------------   
       {
        MaterialCardView;--卡片控件
        layout_margin='5dp';--边距
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='60dp';--高度
        radius='20dp';--圆角
        layout_marginLeft='0dp';--左距
        layout_marginRight='0dp';--右距
        layout_marginTop="0dp",--顶距   
        CardBackgroundColor=背景色,    
        elevation='0dp';--阴影   
       },        

    },
 },     



}


local function getLocalDrawable(path)
  return BitmapDrawable(LuaBitmap.getLocalBitmap(activity.loader.getImagePath(path)))
end


框架=loadlayout{
  CoordinatorLayout,
  layout_width=-1,
  layout_height=-1,

  {
    NestedScrollView,
    layout_width="fill",
    layout_height="fill",
    layout_behavior="appbar_scrolling_view_behavior",
    fillViewport="true",
    backgroundColor=背景色,
    {
      LinearLayoutCompat,
      layout_width="fill",
      layout_height="fill",
      orientation="vertical",
      {
        ViewPager,
        layout_width="fill",
        layout_height="fill",
        id="pager",
        pages={
          one,       
        },
      },
    },
  },


}
activity.contentView=框架

--窗口
window = activity.getWindow()
window.setStatusBarColor(背景色)
window.setNavigationBarColor(背景色)
window.getDecorView().setSystemUiVisibility( View.SYSTEM_UI_FLAG_LAYOUT_STABLE|View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR);
window.clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);



function theme1.onClick()
    activity.setSharedData("the","1")
    activity.newActivity("nse")
    activity.overridePendingTransition(android.R.anim.fade_in,android.R.anim.fade_out)
    activity.finish()
end

function theme2.onClick()
    activity.setSharedData("the","2")
    activity.newActivity("nse")
    activity.overridePendingTransition(android.R.anim.fade_in,android.R.anim.fade_out)
    activity.finish()
end

function theme3.onClick()
    activity.setSharedData("the","3")
    activity.newActivity("nse")
    activity.overridePendingTransition(android.R.anim.fade_in,android.R.anim.fade_out)
    activity.finish()
end

function theme4.onClick()
    activity.setSharedData("the","4")
    activity.newActivity("nse")
    activity.overridePendingTransition(android.R.anim.fade_in,android.R.anim.fade_out)
    activity.finish()
end

function theme5.onClick()
    activity.setSharedData("the","5")
    activity.newActivity("nse")
    activity.overridePendingTransition(android.R.anim.fade_in,android.R.anim.fade_out)
    activity.finish()
end

function theme6.onClick()
    activity.setSharedData("the","6")
    activity.newActivity("nse")
    activity.overridePendingTransition(android.R.anim.fade_in,android.R.anim.fade_out)
    activity.finish()
end

function theme7.onClick()
    activity.setSharedData("the","7")
    activity.newActivity("nse")
    activity.overridePendingTransition(android.R.anim.fade_in,android.R.anim.fade_out)
    activity.finish()
end

function theme8.onClick()
    activity.setSharedData("the","8")
    activity.newActivity("nse")
    activity.overridePendingTransition(android.R.anim.fade_in,android.R.anim.fade_out)
    activity.finish()
end

function theme9.onClick()
    activity.setSharedData("the","9")
    activity.newActivity("nse")
    activity.overridePendingTransition(android.R.anim.fade_in,android.R.anim.fade_out)
    activity.finish()
end


function theme10.onClick()
  if Build.VERSION.SDK_INT <31 then
  print("很抱歉，您的安卓系统版本低于12")
  else
   activity.setSharedData("the","10")
   activity.newActivity("nse")
   activity.overridePendingTransition(android.R.anim.fade_in,android.R.anim.fade_out)
   activity.finish()
  end
end
function theme11.onClick()
  if Build.VERSION.SDK_INT <31 then
  print("很抱歉，您的安卓系统版本低于12")
  else
   activity.setSharedData("the","11")
   activity.newActivity("nse")
   activity.overridePendingTransition(android.R.anim.fade_in,android.R.anim.fade_out)
   activity.finish()
  end
end


----按钮
tgx=tonumber(activity.getSharedData("gx"))
if tgx == 1 then 
  球.cardBackgroundColor=按钮底色
    颜色渐变(球,{卡片底色,按钮底色,按钮底色})
    颜色渐变(switchcard1,{按钮底色,按钮底色,按钮底色},"strokeColor")
    颜色渐变(switchcard1,{按钮底色,按钮底色,卡片底色})
    开关=false
    间隔.visibility=View.GONE
    大球.visibility=View.GONE
 elseif tgx == 2 then 
    间隔.visibility=View.VISIBLE
    颜色渐变(球,{按钮底色,按钮底色,卡片底色})
    颜色渐变(switchcard1,{按钮底色,按钮底色,按钮底色},"strokeColor")--边框
    颜色渐变(switchcard1,{卡片底色,卡片底色,按钮底色}) --背景   
    开关=true
    大球.visibility=View.VISIBLE
end
switchcard1.onClick=function()
  if 开关 then--关闭
    activity.setSharedData("gx","1")
    球.cardBackgroundColor=按钮底色
    颜色渐变(球,{卡片底色,按钮底色,按钮底色})
    颜色渐变(switchcard1,{按钮底色,按钮底色,按钮底色},"strokeColor")
    颜色渐变(switchcard1,{按钮底色,按钮底色,卡片底色})
    开关=false
    间隔.visibility=View.GONE
    大球.visibility=View.GONE    
   else--开启    
    activity.setSharedData("gx","2")  
    间隔.visibility=View.VISIBLE
    颜色渐变(球,{按钮底色,按钮底色,卡片底色})
    颜色渐变(switchcard1,{按钮底色,按钮底色,按钮底色},"strokeColor")--边框
    颜色渐变(switchcard1,{卡片底色,卡片底色,按钮底色}) --背景   
    开关=true
    大球.visibility=View.VISIBLE
  end
end

wxp=tonumber(activity.getSharedData("wx"))
if wxp == 1 then 
  球2.cardBackgroundColor=按钮底色
    颜色渐变(球2,{卡片底色,按钮底色,按钮底色})
    颜色渐变(switchcard2,{按钮底色,按钮底色,按钮底色},"strokeColor")
    颜色渐变(switchcard2,{按钮底色,按钮底色,卡片底色})
    开关2=false
    间隔2.visibility=View.GONE
    大球2.visibility=View.GONE
 elseif wxp == 2 then 
    间隔2.visibility=View.VISIBLE
    颜色渐变(球2,{按钮底色,按钮底色,卡片底色})
    颜色渐变(switchcard2,{按钮底色,按钮底色,按钮底色},"strokeColor")--边框
    颜色渐变(switchcard2,{卡片底色,卡片底色,按钮底色}) --背景   
    开关2=true
    大球2.visibility=View.VISIBLE
end
switchcard2.onClick=function()
  if 开关2 then--关闭
    activity.setSharedData("wx","1")
    球2.cardBackgroundColor=按钮底色
    颜色渐变(球2,{卡片底色,按钮底色,按钮底色})
    颜色渐变(switchcard2,{按钮底色,按钮底色,按钮底色},"strokeColor")
    颜色渐变(switchcard2,{按钮底色,按钮底色,卡片底色})
    开关2=false
    间隔2.visibility=View.GONE
    大球2.visibility=View.GONE    
   else--开启    
    activity.setSharedData("wx","2")  
    间隔2.visibility=View.VISIBLE
    颜色渐变(球2,{按钮底色,按钮底色,卡片底色})
    颜色渐变(switchcard2,{按钮底色,按钮底色,按钮底色},"strokeColor")--边框
    颜色渐变(switchcard2,{卡片底色,卡片底色,按钮底色}) --背景   
    开关2=true
    大球2.visibility=View.VISIBLE
  end
end
ttc=tonumber(activity.getSharedData("tc"))
if ttc == 1 then 
  球3.cardBackgroundColor=按钮底色
    颜色渐变(球3,{卡片底色,按钮底色,按钮底色})
    颜色渐变(switchcard3,{按钮底色,按钮底色,按钮底色},"strokeColor")
    颜色渐变(switchcard3,{按钮底色,按钮底色,卡片底色})
    开关3=false
    间隔3.visibility=View.GONE
    大球3.visibility=View.GONE
 elseif ttc == 2 then 
    间隔3.visibility=View.VISIBLE
    颜色渐变(球3,{按钮底色,按钮底色,卡片底色})
    颜色渐变(switchcard3,{按钮底色,按钮底色,按钮底色},"strokeColor")--边框
    颜色渐变(switchcard3,{卡片底色,卡片底色,按钮底色}) --背景   
    开关3=true
    大球3.visibility=View.VISIBLE
end
switchcard3.onClick=function()
  if 开关3 then--关闭
    activity.setSharedData("tc","1")
    球3.cardBackgroundColor=按钮底色
    颜色渐变(球3,{卡片底色,按钮底色,按钮底色})
    颜色渐变(switchcard3,{按钮底色,按钮底色,按钮底色},"strokeColor")
    颜色渐变(switchcard3,{按钮底色,按钮底色,卡片底色})
    开关3=false
    间隔3.visibility=View.GONE
    大球3.visibility=View.GONE    
   else--开启    
    activity.setSharedData("tc","2")  
    间隔3.visibility=View.VISIBLE
    颜色渐变(球3,{按钮底色,按钮底色,卡片底色})
    颜色渐变(switchcard3,{按钮底色,按钮底色,按钮底色},"strokeColor")--边框
    颜色渐变(switchcard3,{卡片底色,卡片底色,按钮底色}) --背景   
    开关3=true
    大球3.visibility=View.VISIBLE
  end
end


function onKeyDown(code)
  if code==4 then
    activity.newActivity("A")  
    activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
    activity.finish()
    return true
  end
end

function back.onClick()  
  activity.newActivity("A")  
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
  activity.finish()
end


--主题相关补充
import "android.graphics.Color"
if theme == 1 then
 
 elseif theme == 2 then
 
 elseif theme == 3 then
 
 elseif theme == 4 then
 
 elseif theme == 5 then
 this.getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_VISIBLE)
 elseif theme == 6 then
 this.getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_VISIBLE)
 elseif theme == 7 then
 this.getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_VISIBLE)
 elseif theme == 8 then
 this.getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_VISIBLE) 
 elseif theme == 9 then 
 this.getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_VISIBLE)
 elseif theme == 10 then 
 
 elseif theme == 11 then 
 this.getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_VISIBLE)

end


