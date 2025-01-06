
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
文字色=0xFF032107
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
--退出动作者
function onKeyDown(key,event)
  if(key==4)then
    activity.finish()
    --下面代码的参数(1,2)就是和跳转进入代码相反(2,1)
    activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
  end
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
        text="动态壁纸专区",
        textSize="27sp",
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
        TextView,
        layout_gravity='center|left';--重力
        layout_marginLeft='30dp';--左距
        layout_marginRight='30dp';--左距
        layout_marginTop='10dp';--顶距
        text="名字\n作者",
        textSize="20sp",
        textStyle="bold",
        textColor=标题色;--文字颜色
        id="t1",
       },       

--横向滑动控件--
 {
  HorizontalScrollView,--横向滑动控件
  layout_width="fill",--布局宽度
  layout_height="300dp",--布局高度
  overScrollMode=View.OVER_SCROLL_NEVER,--隐藏圆弧阴影
  horizontalScrollBarEnabled=false,--隐藏横向滑条
  layout_marginTop="10dp",--顶距  
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
        layout_width='140dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="c1";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p1";
         },  
      },

      {
        MaterialCardView;--卡片控件        
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='530dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="hc1";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp1";
         },  


      },
    

        
 },
},

       {
        TextView,
        layout_gravity='center|left';--重力
        layout_marginLeft='30dp';--左距
        layout_marginRight='30dp';--左距
        layout_marginTop='10dp';--顶距
        text="名字\n作者",
        textSize="20sp",
        textStyle="bold",
        textColor=标题色;--文字颜色
        id="t2",
       },       
--横向滑动控件--
 {
  HorizontalScrollView,--横向滑动控件
  layout_width="fill",--布局宽度
  layout_height="300dp",--布局高度
  overScrollMode=View.OVER_SCROLL_NEVER,--隐藏圆弧阴影
  horizontalScrollBarEnabled=false,--隐藏横向滑条
  layout_marginTop="10dp",--顶距  
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
        layout_width='140dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="c2";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p2";
         },  
      },
      {
        MaterialCardView;--卡片控件        
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='530dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="hc2";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp2";
         },  
      },        
 },
},
{
        TextView,
        layout_gravity='center|left';--重力
        layout_marginLeft='30dp';--左距
        layout_marginRight='30dp';--左距
        layout_marginTop='10dp';--顶距
        text="名字\n作者",
        textSize="20sp",
        textStyle="bold",
        textColor=标题色;--文字颜色
        id="t3",
       },       
--横向滑动控件--
 {
  HorizontalScrollView,--横向滑动控件
  layout_width="fill",--布局宽度
  layout_height="300dp",--布局高度
  overScrollMode=View.OVER_SCROLL_NEVER,--隐藏圆弧阴影
  horizontalScrollBarEnabled=false,--隐藏横向滑条
  layout_marginTop="10dp",--顶距  
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
        layout_width='140dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="c3";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p3";
         },  
      },
      {
        MaterialCardView;--卡片控件        
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='530dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="hc3";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp3";
         },  
      },        
 },
},
       {
        TextView,
        layout_gravity='center|left';--重力
        layout_marginLeft='30dp';--左距
        layout_marginRight='30dp';--左距
        layout_marginTop='10dp';--顶距
        text="名字\n作者",
        textSize="20sp",
        textStyle="bold",
        textColor=标题色;--文字颜色
        id="t4",
       },       
--横向滑动控件--
 {
  HorizontalScrollView,--横向滑动控件
  layout_width="fill",--布局宽度
  layout_height="300dp",--布局高度
  overScrollMode=View.OVER_SCROLL_NEVER,--隐藏圆弧阴影
  horizontalScrollBarEnabled=false,--隐藏横向滑条
  layout_marginTop="10dp",--顶距  
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
        layout_width='140dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="c4";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p4";
         },  
      },
      {
        MaterialCardView;--卡片控件        
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='530dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="hc4";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp4";
         },  
      },        
 },
},
       {
        TextView,
        layout_gravity='center|left';--重力
        layout_marginLeft='30dp';--左距
        layout_marginRight='30dp';--左距
        layout_marginTop='10dp';--顶距
        text="名字\n作者",
        textSize="20sp",
        textStyle="bold",
        textColor=标题色;--文字颜色
        id="t5",
       },       
--横向滑动控件--
 {
  HorizontalScrollView,--横向滑动控件
  layout_width="fill",--布局宽度
  layout_height="300dp",--布局高度
  overScrollMode=View.OVER_SCROLL_NEVER,--隐藏圆弧阴影
  horizontalScrollBarEnabled=false,--隐藏横向滑条
  layout_marginTop="10dp",--顶距  
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
        layout_width='140dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="c5";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p5";
         },  
      },
      {
        MaterialCardView;--卡片控件        
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='530dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="hc5";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp5";
         },  
      },        
 },
},
       {
        TextView,
        layout_gravity='center|left';--重力
        layout_marginLeft='30dp';--左距
        layout_marginRight='30dp';--左距
        layout_marginTop='10dp';--顶距
        text="名字\n作者",
        textSize="20sp",
        textStyle="bold",
        textColor=标题色;--文字颜色
        id="t6",
       },       
--横向滑动控件--
 {
  HorizontalScrollView,--横向滑动控件
  layout_width="fill",--布局宽度
  layout_height="300dp",--布局高度
  overScrollMode=View.OVER_SCROLL_NEVER,--隐藏圆弧阴影
  horizontalScrollBarEnabled=false,--隐藏横向滑条
  layout_marginTop="10dp",--顶距  
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
        layout_width='140dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="c6";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p6";
         },  
      },
      {
        MaterialCardView;--卡片控件        
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='530dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="hc6";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp6";
         },  
      },        
 },
},
       {
        TextView,
        layout_gravity='center|left';--重力
        layout_marginLeft='30dp';--左距
        layout_marginRight='30dp';--左距
        layout_marginTop='10dp';--顶距
        text="名字\n作者",
        textSize="20sp",
        textStyle="bold",
        textColor=标题色;--文字颜色
        id="t7",
       },       
--横向滑动控件--
 {
  HorizontalScrollView,--横向滑动控件
  layout_width="fill",--布局宽度
  layout_height="300dp",--布局高度
  overScrollMode=View.OVER_SCROLL_NEVER,--隐藏圆弧阴影
  horizontalScrollBarEnabled=false,--隐藏横向滑条
  layout_marginTop="10dp",--顶距  
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
        layout_width='140dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="c7";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p7";
         },  
      },
      {
        MaterialCardView;--卡片控件        
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='530dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="hc7";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp7";
         },  
      },        
 },
},
       {
        TextView,
        layout_gravity='center|left';--重力
        layout_marginLeft='30dp';--左距
        layout_marginRight='30dp';--左距
        layout_marginTop='10dp';--顶距
        text="名字\n作者",
        textSize="20sp",
        textStyle="bold",
        textColor=标题色;--文字颜色
        id="t8",
       },       
--横向滑动控件--
 {
  HorizontalScrollView,--横向滑动控件
  layout_width="fill",--布局宽度
  layout_height="300dp",--布局高度
  overScrollMode=View.OVER_SCROLL_NEVER,--隐藏圆弧阴影
  horizontalScrollBarEnabled=false,--隐藏横向滑条
  layout_marginTop="10dp",--顶距  
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
        layout_width='140dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="c8";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p8";
         },  
      },
      {
        MaterialCardView;--卡片控件        
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='530dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="hc8";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp8";
         },  
      },        
 },
},
       {
        TextView,
        layout_gravity='center|left';--重力
        layout_marginLeft='30dp';--左距
        layout_marginRight='30dp';--左距
        layout_marginTop='10dp';--顶距
        text="名字\n作者",
        textSize="20sp",
        textStyle="bold",
        textColor=标题色;--文字颜色
        id="t9",
       },       
--横向滑动控件--
 {
  HorizontalScrollView,--横向滑动控件
  layout_width="fill",--布局宽度
  layout_height="300dp",--布局高度
  overScrollMode=View.OVER_SCROLL_NEVER,--隐藏圆弧阴影
  horizontalScrollBarEnabled=false,--隐藏横向滑条
  layout_marginTop="10dp",--顶距  
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
        layout_width='140dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="c9";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p9";
         },  
      },
      {
        MaterialCardView;--卡片控件        
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='530dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="hc9";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp9";
         },  
      },        
 },
},
       {
        TextView,
        layout_gravity='center|left';--重力
        layout_marginLeft='30dp';--左距
        layout_marginRight='30dp';--左距
        layout_marginTop='10dp';--顶距
        text="名字\n作者",
        textSize="20sp",
        textStyle="bold",
        textColor=标题色;--文字颜色
        id="t10",
       },       
--横向滑动控件--
 {
  HorizontalScrollView,--横向滑动控件
  layout_width="fill",--布局宽度
  layout_height="300dp",--布局高度
  overScrollMode=View.OVER_SCROLL_NEVER,--隐藏圆弧阴影
  horizontalScrollBarEnabled=false,--隐藏横向滑条
  layout_marginTop="10dp",--顶距  
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
        layout_width='140dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="c10";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p10";
         },  
      },
      {
        MaterialCardView;--卡片控件        
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='530dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="hc10";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp10";
         },  
      },        
 },
},
       {
        TextView,
        layout_gravity='center|left';--重力
        layout_marginLeft='30dp';--左距
        layout_marginRight='30dp';--左距
        layout_marginTop='10dp';--顶距
        text="名字\n作者",
        textSize="20sp",
        textStyle="bold",
        textColor=标题色;--文字颜色
        id="t11",
       },       
--横向滑动控件--
 {
  HorizontalScrollView,--横向滑动控件
  layout_width="fill",--布局宽度
  layout_height="300dp",--布局高度
  overScrollMode=View.OVER_SCROLL_NEVER,--隐藏圆弧阴影
  horizontalScrollBarEnabled=false,--隐藏横向滑条
  layout_marginTop="10dp",--顶距  
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
        layout_width='140dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="c11";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p11";
         },  
      },
      {
        MaterialCardView;--卡片控件        
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='530dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="hc11";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp11";
         },  
      },        
 },
},
       {
        TextView,
        layout_gravity='center|left';--重力
        layout_marginLeft='30dp';--左距
        layout_marginRight='30dp';--左距
        layout_marginTop='10dp';--顶距
        text="名字\n作者",
        textSize="20sp",
        textStyle="bold",
        textColor=标题色;--文字颜色
        id="t12",
       },       
--横向滑动控件--
 {
  HorizontalScrollView,--横向滑动控件
  layout_width="fill",--布局宽度
  layout_height="300dp",--布局高度
  overScrollMode=View.OVER_SCROLL_NEVER,--隐藏圆弧阴影
  horizontalScrollBarEnabled=false,--隐藏横向滑条
  layout_marginTop="10dp",--顶距  
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
        layout_width='140dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="c12";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p12";
         },  
      },
      {
        MaterialCardView;--卡片控件        
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='530dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="hc12";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp12";
         },  
      },        
 },
},
       {
        TextView,
        layout_gravity='center|left';--重力
        layout_marginLeft='30dp';--左距
        layout_marginRight='30dp';--左距
        layout_marginTop='10dp';--顶距
        text="名字\n作者",
        textSize="20sp",
        textStyle="bold",
        textColor=标题色;--文字颜色
        id="t13",
       },       
--横向滑动控件--
 {
  HorizontalScrollView,--横向滑动控件
  layout_width="fill",--布局宽度
  layout_height="300dp",--布局高度
  overScrollMode=View.OVER_SCROLL_NEVER,--隐藏圆弧阴影
  horizontalScrollBarEnabled=false,--隐藏横向滑条
  layout_marginTop="10dp",--顶距  
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
        layout_width='140dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="c13";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p13";
         },  
      },
      {
        MaterialCardView;--卡片控件        
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='530dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="hc13";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp13";
         },  
      },        
 },
},
       {
        TextView,
        layout_gravity='center|left';--重力
        layout_marginLeft='30dp';--左距
        layout_marginRight='30dp';--左距
        layout_marginTop='10dp';--顶距
        text="名字\n作者",
        textSize="20sp",
        textStyle="bold",
        textColor=标题色;--文字颜色
        id="t14",
       },       
--横向滑动控件--
 {
  HorizontalScrollView,--横向滑动控件
  layout_width="fill",--布局宽度
  layout_height="300dp",--布局高度
  overScrollMode=View.OVER_SCROLL_NEVER,--隐藏圆弧阴影
  horizontalScrollBarEnabled=false,--隐藏横向滑条
  layout_marginTop="10dp",--顶距  
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
        layout_width='140dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="c14";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p14";
         },  
      },
      {
        MaterialCardView;--卡片控件        
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='530dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="hc14";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp14";
         },  
      },        
 },
},
       {
        TextView,
        layout_gravity='center|left';--重力
        layout_marginLeft='30dp';--左距
        layout_marginRight='30dp';--左距
        layout_marginTop='10dp';--顶距
        text="名字\n作者",
        textSize="20sp",
        textStyle="bold",
        textColor=标题色;--文字颜色
        id="t15",
       },       
--横向滑动控件--
 {
  HorizontalScrollView,--横向滑动控件
  layout_width="fill",--布局宽度
  layout_height="300dp",--布局高度
  overScrollMode=View.OVER_SCROLL_NEVER,--隐藏圆弧阴影
  horizontalScrollBarEnabled=false,--隐藏横向滑条
  layout_marginTop="10dp",--顶距  
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
        layout_width='140dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="c15";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p15";
         },  
      },
      {
        MaterialCardView;--卡片控件        
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='530dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="hc15";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp15";
         },  
      },        
 },
},


       {
        TextView,
        layout_gravity='center|left';--重力
        layout_marginLeft='30dp';--左距
        layout_marginRight='30dp';--左距
        layout_marginTop='100dp';--顶距
        text="页数",
        textSize="20sp",
        textStyle="bold",
        textColor=标题色;--文字颜色
        id="x16",
       },       
--横向滑动控件--
 {
  HorizontalScrollView,--横向滑动控件
  layout_width="fill",--布局宽度
  layout_height="100dp",--布局高度
  overScrollMode=View.OVER_SCROLL_NEVER,--隐藏圆弧阴影
  horizontalScrollBarEnabled=false,--隐藏横向滑条
  layout_marginTop="20dp",--顶距  
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
        layout_width='70dp';--宽度
        layout_height='70dp';--高度
        CardBackgroundColor=卡片底色;--颜色
        radius='15dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="page1";

        {
         TextView,
         layout_gravity='center';--重力              
         text="1",
         textSize="30sp",
         textStyle="bold",
         textColor=卡片文本;--文字颜色
         id="tpa1",
        },       
   

      },

      {
        MaterialCardView;--卡片控件        
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='70dp';--宽度
        layout_height='70dp';--高度
        CardBackgroundColor=卡片底色;--颜色
        radius='15dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="page2";

       {
         TextView,
         layout_gravity='center';--重力              
         text="2",
         textSize="30sp",
         textStyle="bold",
         textColor=卡片文本;--文字颜色
         id="tpa2",
        },       


      },
      {
        MaterialCardView;--卡片控件        
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='70dp';--宽度
        layout_height='70dp';--高度
        CardBackgroundColor=卡片文本;--颜色
        radius='15dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="page3";

       {
         TextView,
         layout_gravity='center';--重力              
         text="3",
         textSize="30sp",
         textStyle="bold",
         textColor=卡片底色;--文字颜色
         id="tpa3",
        },       


      },   
      {
        MaterialCardView;--卡片控件        
        layout_gravity='left';--重力
        elevation='0dp';--阴影
        layout_width='70dp';--宽度
        layout_height='70dp';--高度
        CardBackgroundColor=卡片底色;--颜色
        radius='15dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="page4";

       {
         TextView,
         layout_gravity='center';--重力              
         text="4",
         textSize="30sp",
         textStyle="bold",
         textColor=卡片文本;--文字颜色
         id="tpa4",
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
        id="x5";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="",
          id="";
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


function back.onClick()  
  activity.finish()
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
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


function 复制文本(a)
  if(Context==nil)then
    import "android.content.Context"
  end
  activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(a)
end
function 文本内容(id,内容)
  id.setText(内容)
end

require "import"
import "android.net.Uri"
import "android.content.Context"
import "android.app.DownloadManager"
function 系统下载(直链,目录,名称)
  import "android.content.Context"
  import "android.net.Uri"
  downloadManager = activity.getSystemService(Context.DOWNLOAD_SERVICE)
  request = DownloadManager.Request(Uri.parse(直链))
  request.setAllowedNetworkTypes(DownloadManager.Request.NETWORK_MOBILE|DownloadManager.Request.NETWORK_WIFI)
  request.setDestinationInExternalPublicDir(目录,名称)
  downloadManager.enqueue(request)
end

import "android.content.Intent"
import "android.net.Uri"
wxp=tonumber(activity.getSharedData("wx"))

--云控
import "com.androlua.Http"
Http.get("https://cdn.lightxi.com/cloudreve/uploads/2023/03/04/qgdKk0nP_%E5%8A%A8%E6%80%81%E5%A3%81%E7%BA%B82.txt",nil,nil,nil,function(code,content)
    s1=content:match("【竖屏1】(.-)【竖屏1】")
    h1=content:match("【横屏1】(.-)【横屏1】")
    s2=content:match("【竖屏2】(.-)【竖屏2】")
    h2=content:match("【横屏2】(.-)【横屏2】")
    s3=content:match("【竖屏3】(.-)【竖屏3】")
    h3=content:match("【横屏3】(.-)【横屏3】")
    s4=content:match("【竖屏4】(.-)【竖屏4】")
    h4=content:match("【横屏4】(.-)【横屏4】")
    s5=content:match("【竖屏5】(.-)【竖屏5】")
    h5=content:match("【横屏5】(.-)【横屏5】")
    
    s6=content:match("【竖屏6】(.-)【竖屏6】")
    h6=content:match("【横屏6】(.-)【横屏6】")
    s7=content:match("【竖屏7】(.-)【竖屏7】")
    h7=content:match("【横屏7】(.-)【横屏7】")
    s8=content:match("【竖屏8】(.-)【竖屏8】")
    h8=content:match("【横屏8】(.-)【横屏8】")
    s9=content:match("【竖屏9】(.-)【竖屏9】")
    h9=content:match("【横屏9】(.-)【横屏9】")
    s10=content:match("【竖屏10】(.-)【竖屏10】")
    h10=content:match("【横屏10】(.-)【横屏10】")
    s11=content:match("【竖屏11】(.-)【竖屏11】")
    h11=content:match("【横屏11】(.-)【横屏11】")
    s12=content:match("【竖屏12】(.-)【竖屏12】")
    h12=content:match("【横屏12】(.-)【横屏12】")
    s13=content:match("【竖屏13】(.-)【竖屏13】")
    h13=content:match("【横屏13】(.-)【横屏13】")
    s14=content:match("【竖屏14】(.-)【竖屏14】")
    h14=content:match("【横屏14】(.-)【横屏14】")
    s15=content:match("【竖屏15】(.-)【竖屏15】")
    h15=content:match("【横屏15】(.-)【横屏15】")
    
    
    tz1=content:match("【作者1】(.-)【作者1】")
    t1.setText(tz1)
    tz2=content:match("【作者2】(.-)【作者2】")
    t2.setText(tz2)
    tz3=content:match("【作者3】(.-)【作者3】")
    t3.setText(tz3)
    tz4=content:match("【作者4】(.-)【作者4】")
    t4.setText(tz4)
    tz5=content:match("【作者5】(.-)【作者5】")
    t5.setText(tz5)
    tz6=content:match("【作者6】(.-)【作者6】")
    t6.setText(tz6)
    tz7=content:match("【作者7】(.-)【作者7】")
    t7.setText(tz7)
    tz8=content:match("【作者8】(.-)【作者8】")
    t8.setText(tz8)
    tz9=content:match("【作者9】(.-)【作者9】")
    t9.setText(tz9)
    tz10=content:match("【作者10】(.-)【作者10】")
    t10.setText(tz10)
    tz11=content:match("【作者11】(.-)【作者11】")
    t11.setText(tz11)
    tz12=content:match("【作者12】(.-)【作者12】")
    t12.setText(tz12)
    tz13=content:match("【作者13】(.-)【作者13】")
    t13.setText(tz13)
    tz14=content:match("【作者14】(.-)【作者14】")
    t14.setText(tz14)
    tz15=content:match("【作者15】(.-)【作者15】")
    t15.setText(tz15)
    
 
  
--p
    图1=content:match("【预览1】(.-)【预览1】")
    import "com.bumptech.glide.Glide"
    local url=图1;
    Glide.with(activity).load(url).into(p1)       
    h图1=content:match("【预横1】(.-)【预横1】")
    import "com.bumptech.glide.Glide"
    local url=h图1;
    Glide.with(activity).load(url).into(hp1)
    图2=content:match("【预览2】(.-)【预览2】")
    import "com.bumptech.glide.Glide"
    local url=图2;
    Glide.with(activity).load(url).into(p2)       
    h图2=content:match("【预横2】(.-)【预横2】")
    import "com.bumptech.glide.Glide"
    local url=h图2;
    Glide.with(activity).load(url).into(hp2)
    图3=content:match("【预览3】(.-)【预览3】")
    import "com.bumptech.glide.Glide"
    local url=图3;
    Glide.with(activity).load(url).into(p3)       
    h图3=content:match("【预横3】(.-)【预横3】")
    import "com.bumptech.glide.Glide"
    local url=h图3;
    Glide.with(activity).load(url).into(hp3)
    图4=content:match("【预览4】(.-)【预览4】")
    import "com.bumptech.glide.Glide"
    local url=图4;
    Glide.with(activity).load(url).into(p4)       
    h图4=content:match("【预横4】(.-)【预横4】")
    import "com.bumptech.glide.Glide"
    local url=h图4;
    Glide.with(activity).load(url).into(hp4)
    图5=content:match("【预览5】(.-)【预览5】")
    import "com.bumptech.glide.Glide"
    local url=图5;
    Glide.with(activity).load(url).into(p5)       
    h图5=content:match("【预横5】(.-)【预横5】")
    import "com.bumptech.glide.Glide"
    local url=h图5;
    Glide.with(activity).load(url).into(hp5)
    图6=content:match("【预览6】(.-)【预览6】")
    import "com.bumptech.glide.Glide"
    local url=图6;
    Glide.with(activity).load(url).into(p6)       
    h图6=content:match("【预横6】(.-)【预横6】")
    import "com.bumptech.glide.Glide"
    local url=h图6;
    Glide.with(activity).load(url).into(hp6)
    图7=content:match("【预览7】(.-)【预览7】")
    import "com.bumptech.glide.Glide"
    local url=图7;
    Glide.with(activity).load(url).into(p7)       
    h图7=content:match("【预横7】(.-)【预横7】")
    import "com.bumptech.glide.Glide"
    local url=h图7;
    Glide.with(activity).load(url).into(hp7)
    图8=content:match("【预览8】(.-)【预览8】")
    import "com.bumptech.glide.Glide"
    local url=图8;
    Glide.with(activity).load(url).into(p8)       
    h图8=content:match("【预横8】(.-)【预横8】")
    import "com.bumptech.glide.Glide"
    local url=h图8;
    Glide.with(activity).load(url).into(hp8)
    图9=content:match("【预览9】(.-)【预览9】")
    import "com.bumptech.glide.Glide"
    local url=图9;
    Glide.with(activity).load(url).into(p9)       
    h图9=content:match("【预横9】(.-)【预横9】")
    import "com.bumptech.glide.Glide"
    local url=h图9;
    Glide.with(activity).load(url).into(hp9)
    图10=content:match("【预览10】(.-)【预览10】")
    import "com.bumptech.glide.Glide"
    local url=图10;
    Glide.with(activity).load(url).into(p10)       
    h图10=content:match("【预横10】(.-)【预横10】")
    import "com.bumptech.glide.Glide"
    local url=h图10;
    Glide.with(activity).load(url).into(hp10)
    图11=content:match("【预览11】(.-)【预览11】")
    import "com.bumptech.glide.Glide"
    local url=图11;
    Glide.with(activity).load(url).into(p11)       
    h图11=content:match("【预横11】(.-)【预横11】")
    import "com.bumptech.glide.Glide"
    local url=h图11;
    Glide.with(activity).load(url).into(hp11)
    图12=content:match("【预览12】(.-)【预览12】")
    import "com.bumptech.glide.Glide"
    local url=图12;
    Glide.with(activity).load(url).into(p12)       
    h图12=content:match("【预横12】(.-)【预横12】")
    import "com.bumptech.glide.Glide"
    local url=h图12;
    Glide.with(activity).load(url).into(hp12)
    图13=content:match("【预览13】(.-)【预览13】")
    import "com.bumptech.glide.Glide"
    local url=图13;
    Glide.with(activity).load(url).into(p13)       
    h图13=content:match("【预横13】(.-)【预横13】")
    import "com.bumptech.glide.Glide"
    local url=h图13;
    Glide.with(activity).load(url).into(hp13)
    图14=content:match("【预览14】(.-)【预览14】")
    import "com.bumptech.glide.Glide"
    local url=图14;
    Glide.with(activity).load(url).into(p14)       
    h图14=content:match("【预横14】(.-)【预横14】")
    import "com.bumptech.glide.Glide"
    local url=h图14;
    Glide.with(activity).load(url).into(hp14)
    图15=content:match("【预览15】(.-)【预览15】")
    import "com.bumptech.glide.Glide"
    local url=图15;
    Glide.with(activity).load(url).into(p15)       
    h图15=content:match("【预横15】(.-)【预横15】")
    import "com.bumptech.glide.Glide"
    local url=h图15;
    Glide.with(activity).load(url).into(hp15)
    

      
   
if tz1 == "0" then
else
function c1.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s1,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s1
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc1.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h1,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h1
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end

end

if tz2 == "0" then
else
function c2.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s2,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s2
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc2.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h2,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h2
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end

end

if tz3 == "0" then
else
function c3.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s3,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s3
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc3.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h2,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h3
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end

end

if tz4 == "0" then
else
function c4.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s4,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s4
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc4.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h4,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h4
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end

end

if tz5 == "0" then
else
function c5.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s5,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s5
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc5.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h5,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h5
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end

end

if tz6 == "0" then
else
function c6.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s6,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s6
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc6.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h6,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h6
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end

end

if tz7 == "0" then
else
function c7.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s7,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s7
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc7.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h7,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h7
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end

end

if tz8 == "0" then
else
function c8.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s8,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s8
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc8.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h8,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h8
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end

end

if tz9 == "0" then
else
function c9.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s9,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s9
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc9.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h9,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h9
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end

end

if tz10 == "0" then
else
function c10.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s10,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s10
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc10.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h10,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h10
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end

end

if tz11 == "0" then
else
function c11.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s11,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s11
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc11.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h11,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h11
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end

end

if tz12 == "0" then
else
function c12.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s12,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s12
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc12.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h12,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h12
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end

end

if tz13 == "0" then
else
function c13.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s13,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s13
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc13.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h13,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h13
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end

end

if tz14 == "0" then
else
function c14.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s14,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s14
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc14.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h14,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h14
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end

end

if tz15 == "0" then
else
function c15.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s15,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s15
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc15.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h15,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h15
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end

end



end)--云控的



function page1.onClick()  
  activity.newActivity("dtbz")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
  activity.finish()
end

function page2.onClick()  
  activity.newActivity("dtse")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
  activity.finish()
end

function page4.onClick()  
  activity.newActivity("dtfoth")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
  activity.finish()
end
