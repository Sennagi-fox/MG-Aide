
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
        id="t16",
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
        id="c16";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p16";
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
        id="hc16";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp16";
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
        id="t17",
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
        id="c17";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p17";
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
        id="hc17";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp17";
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
        id="t18",
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
        id="c18";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p18";
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
        id="hc18";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp18";
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
        id="t19",
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
        id="c19";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p19";
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
        id="hc19";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp19";
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
        id="t20",
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
        id="c20";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p20";
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
        id="hc20";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp20";
         },  
      },        
 },
},
       {
        TextView,
        layout_gravity='center|left';--重力
        layout_marginLeft='30dp';--左距
        layout_marginRight='30dp';--左距
        layout_marginTop='20dp';--顶距
        text="名字\n作者",
        textSize="20sp",
        textStyle="bold",
        textColor=标题色;--文字颜色
        id="t21",
       },       
--横向滑动控件--
 {
  HorizontalScrollView,--横向滑动控件
  layout_width="fill",--布局宽度
  layout_height="300dp",--布局高度
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
        layout_width='140dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="c21";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p21";
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
        id="hc21";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp21";
         },  
      },        
 },
},
       {
        TextView,
        layout_gravity='center|left';--重力
        layout_marginLeft='30dp';--左距
        layout_marginRight='30dp';--左距
        layout_marginTop='20dp';--顶距
        text="名字\n作者",
        textSize="20sp",
        textStyle="bold",
        textColor=标题色;--文字颜色
        id="t22",
       },       
--横向滑动控件--
 {
  HorizontalScrollView,--横向滑动控件
  layout_width="fill",--布局宽度
  layout_height="300dp",--布局高度
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
        layout_width='140dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="c22";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p22";
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
        id="hc22";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp22";
         },  
      },        
 },
},
       {
        TextView,
        layout_gravity='center|left';--重力
        layout_marginLeft='30dp';--左距
        layout_marginRight='30dp';--左距
        layout_marginTop='20dp';--顶距
        text="名字\n作者",
        textSize="20sp",
        textStyle="bold",
        textColor=标题色;--文字颜色
        id="t23",
       },       
--横向滑动控件--
 {
  HorizontalScrollView,--横向滑动控件
  layout_width="fill",--布局宽度
  layout_height="300dp",--布局高度
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
        layout_width='140dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="c23";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p23";
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
        id="hc23";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp23";
         },  
      },        
 },
},
       {
        TextView,
        layout_gravity='center|left';--重力
        layout_marginLeft='30dp';--左距
        layout_marginRight='30dp';--左距
        layout_marginTop='20dp';--顶距
        text="名字\n作者",
        textSize="20sp",
        textStyle="bold",
        textColor=标题色;--文字颜色
        id="t24",
       },       
--横向滑动控件--
 {
  HorizontalScrollView,--横向滑动控件
  layout_width="fill",--布局宽度
  layout_height="300dp",--布局高度
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
        layout_width='140dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="c24";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p24";
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
        id="hc24";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp24";
         },  
      },        
 },
},
       {
        TextView,
        layout_gravity='center|left';--重力
        layout_marginLeft='30dp';--左距
        layout_marginRight='30dp';--左距
        layout_marginTop='20dp';--顶距
        text="名字\n作者",
        textSize="20sp",
        textStyle="bold",
        textColor=标题色;--文字颜色
        id="t25",
       },       
--横向滑动控件--
 {
  HorizontalScrollView,--横向滑动控件
  layout_width="fill",--布局宽度
  layout_height="300dp",--布局高度
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
        layout_width='140dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="c25";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p25";
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
        id="hc25";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp25";
         },  
      },        
 },
},
       {
        TextView,
        layout_gravity='center|left';--重力
        layout_marginLeft='30dp';--左距
        layout_marginRight='30dp';--左距
        layout_marginTop='20dp';--顶距
        text="名字\n作者",
        textSize="20sp",
        textStyle="bold",
        textColor=标题色;--文字颜色
        id="t26",
       },       
--横向滑动控件--
 {
  HorizontalScrollView,--横向滑动控件
  layout_width="fill",--布局宽度
  layout_height="300dp",--布局高度
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
        layout_width='140dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="c26";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p26";
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
        id="hc26";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp26";
         },  
      },        
 },
},
       {
        TextView,
        layout_gravity='center|left';--重力
        layout_marginLeft='30dp';--左距
        layout_marginRight='30dp';--左距
        layout_marginTop='20dp';--顶距
        text="名字\n作者",
        textSize="20sp",
        textStyle="bold",
        textColor=标题色;--文字颜色
        id="t27",
       },       
--横向滑动控件--
 {
  HorizontalScrollView,--横向滑动控件
  layout_width="fill",--布局宽度
  layout_height="300dp",--布局高度
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
        layout_width='140dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="c27";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p27";
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
        id="hc27";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp27";
         },  
      },        
 },
},
       {
        TextView,
        layout_gravity='center|left';--重力
        layout_marginLeft='30dp';--左距
        layout_marginRight='30dp';--左距
        layout_marginTop='20dp';--顶距
        text="名字\n作者",
        textSize="20sp",
        textStyle="bold",
        textColor=标题色;--文字颜色
        id="t28",
       },       
--横向滑动控件--
 {
  HorizontalScrollView,--横向滑动控件
  layout_width="fill",--布局宽度
  layout_height="300dp",--布局高度
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
        layout_width='140dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="c28";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p28";
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
        id="hc28";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp28";
         },  
      },        
 },
},
       {
        TextView,
        layout_gravity='center|left';--重力
        layout_marginLeft='30dp';--左距
        layout_marginRight='30dp';--左距
        layout_marginTop='20dp';--顶距
        text="名字\n作者",
        textSize="20sp",
        textStyle="bold",
        textColor=标题色;--文字颜色
        id="t29",
       },       
--横向滑动控件--
 {
  HorizontalScrollView,--横向滑动控件
  layout_width="fill",--布局宽度
  layout_height="300dp",--布局高度
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
        layout_width='140dp';--宽度
        layout_height='300dp';--高度
        CardBackgroundColor='#FFFFFFFF';--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        strokeWidth="5dp", --边框宽度
        strokeColor="#FFFFFFFF", --边框颜色
        id="c29";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p29";
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
        id="hc29";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp29";
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
        id="t30",
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
        id="c30";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="p30";
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
        id="hc30";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/m.jpg",
          id="hp30";
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
        CardBackgroundColor=卡片文本;--颜色
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
         textColor=卡片底色;--文字颜色
         id="tpa2",
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
        id="page3";

        {
         TextView,
         layout_gravity='center';--重力              
         text="3",
         textSize="30sp",
         textStyle="bold",
         textColor=卡片文本;--文字颜色
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
Http.get("https://cdn.lightxi.com/cloudreve/uploads/2023/03/04/qfPfFJYb_%E5%8A%A8%E6%80%81%E5%A3%81%E7%BA%B8.txt",nil,nil,nil,function(code,content)

    s16=content:match("【竖屏16】(.-)【竖屏16】")
    h16=content:match("【横屏16】(.-)【横屏16】")
    s17=content:match("【竖屏17】(.-)【竖屏17】")
    h17=content:match("【横屏17】(.-)【横屏17】")
    s18=content:match("【竖屏18】(.-)【竖屏18】")
    h18=content:match("【横屏18】(.-)【横屏18】")
    s19=content:match("【竖屏19】(.-)【竖屏19】")
    h19=content:match("【横屏19】(.-)【横屏19】")
    s20=content:match("【竖屏20】(.-)【竖屏20】")
    h20=content:match("【横屏20】(.-)【横屏20】")
    s21=content:match("【竖屏21】(.-)【竖屏21】")
    h21=content:match("【横屏21】(.-)【横屏21】")   
    s22=content:match("【竖屏22】(.-)【竖屏22】")
    h22=content:match("【横屏22】(.-)【横屏22】")
    s23=content:match("【竖屏23】(.-)【竖屏23】")
    h23=content:match("【横屏23】(.-)【横屏23】")
    s24=content:match("【竖屏24】(.-)【竖屏24】")
    h24=content:match("【横屏24】(.-)【横屏24】")
    s25=content:match("【竖屏25】(.-)【竖屏25】")
    h25=content:match("【横屏25】(.-)【横屏25】")
    s26=content:match("【竖屏26】(.-)【竖屏26】")
    h26=content:match("【横屏26】(.-)【横屏26】")
    s27=content:match("【竖屏27】(.-)【竖屏27】")
    h27=content:match("【横屏27】(.-)【横屏27】")
    s28=content:match("【竖屏28】(.-)【竖屏28】")
    h28=content:match("【横屏28】(.-)【横屏28】")
    s29=content:match("【竖屏29】(.-)【竖屏29】")
    h29=content:match("【横屏29】(.-)【横屏29】")
    s30=content:match("【竖屏30】(.-)【竖屏30】")
    h30=content:match("【横屏30】(.-)【横屏30】")
    
    
    
    tz16=content:match("【作者16】(.-)【作者16】")
    t16.setText(tz16)
    tz17=content:match("【作者17】(.-)【作者17】")
    t17.setText(tz17)
    tz18=content:match("【作者18】(.-)【作者18】")
    t18.setText(tz18)
    tz19=content:match("【作者19】(.-)【作者19】")
    t19.setText(tz19)
    tz20=content:match("【作者20】(.-)【作者20】")
    t20.setText(tz20)    
    tz21=content:match("【作者21】(.-)【作者21】")
    t21.setText(tz21)
    tz22=content:match("【作者22】(.-)【作者22】")
    t22.setText(tz22)
    tz23=content:match("【作者23】(.-)【作者23】")
    t23.setText(tz23)
    tz24=content:match("【作者24】(.-)【作者24】")
    t24.setText(tz24)
    tz25=content:match("【作者25】(.-)【作者25】")
    t25.setText(tz25)
    tz26=content:match("【作者26】(.-)【作者26】")
    t26.setText(tz26)
    tz27=content:match("【作者27】(.-)【作者27】")
    t27.setText(tz27)
    tz28=content:match("【作者28】(.-)【作者28】")
    t28.setText(tz28)
    tz29=content:match("【作者29】(.-)【作者29】")
    t29.setText(tz29)
    tz30=content:match("【作者30】(.-)【作者30】")
    t30.setText(tz30)    
    
  
--p
    
    图16=content:match("【预览16】(.-)【预览16】")
    import "com.bumptech.glide.Glide"
    local url=图16;
    Glide.with(activity).load(url).into(p16)       
    h图16=content:match("【预横16】(.-)【预横16】")
    import "com.bumptech.glide.Glide"
    local url=h图16;
    Glide.with(activity).load(url).into(hp16)
    图17=content:match("【预览17】(.-)【预览17】")
    import "com.bumptech.glide.Glide"
    local url=图17;
    Glide.with(activity).load(url).into(p17)       
    h图17=content:match("【预横17】(.-)【预横17】")
    import "com.bumptech.glide.Glide"
    local url=h图17;
    Glide.with(activity).load(url).into(hp17)
    图18=content:match("【预览18】(.-)【预览18】")
    import "com.bumptech.glide.Glide"
    local url=图18;
    Glide.with(activity).load(url).into(p18)       
    h图18=content:match("【预横18】(.-)【预横18】")
    import "com.bumptech.glide.Glide"
    local url=h图18;
    Glide.with(activity).load(url).into(hp18)

    图19=content:match("【预览19】(.-)【预览19】")
    import "com.bumptech.glide.Glide"
    local url=图19;
    Glide.with(activity).load(url).into(p19)       
    h图19=content:match("【预横19】(.-)【预横19】")
    import "com.bumptech.glide.Glide"
    local url=h图19;
    Glide.with(activity).load(url).into(hp19)
    
    图20=content:match("【预览20】(.-)【预览20】")
    import "com.bumptech.glide.Glide"
    local url=图20;
    Glide.with(activity).load(url).into(p20)       
    h图20=content:match("【预横20】(.-)【预横20】")
    import "com.bumptech.glide.Glide"
    local url=h图20;
    Glide.with(activity).load(url).into(hp20)  
    图21=content:match("【预览21】(.-)【预览21】")
    import "com.bumptech.glide.Glide"
    local url=图21;
    Glide.with(activity).load(url).into(p21)       
    h图21=content:match("【预横21】(.-)【预横21】")
    import "com.bumptech.glide.Glide"
    local url=h图21;
    Glide.with(activity).load(url).into(hp21)
    图22=content:match("【预览22】(.-)【预览22】")
    import "com.bumptech.glide.Glide"
    local url=图22;
    Glide.with(activity).load(url).into(p22)       
    h图22=content:match("【预横22】(.-)【预横22】")
    import "com.bumptech.glide.Glide"
    local url=h图22;
    
    Glide.with(activity).load(url).into(hp22)
    图23=content:match("【预览23】(.-)【预览23】")
    import "com.bumptech.glide.Glide"
    local url=图23;
    Glide.with(activity).load(url).into(p23)       
    h图23=content:match("【预横23】(.-)【预横23】")
    import "com.bumptech.glide.Glide"
    local url=h图23;
    Glide.with(activity).load(url).into(hp23)
    图24=content:match("【预览24】(.-)【预览24】")
    import "com.bumptech.glide.Glide"
    local url=图24;
    Glide.with(activity).load(url).into(p24)       
    h图24=content:match("【预横24】(.-)【预横24】")
    import "com.bumptech.glide.Glide"
    local url=h图24;
    Glide.with(activity).load(url).into(hp24)
    图25=content:match("【预览25】(.-)【预览25】")
    import "com.bumptech.glide.Glide"
    local url=图25;
    Glide.with(activity).load(url).into(p25)       
    h图25=content:match("【预横25】(.-)【预横25】")
    import "com.bumptech.glide.Glide"
    local url=h图25;
    Glide.with(activity).load(url).into(hp25)
    图26=content:match("【预览26】(.-)【预览26】")
    import "com.bumptech.glide.Glide"
    local url=图26;
    Glide.with(activity).load(url).into(p26)       
    h图26=content:match("【预横26】(.-)【预横26】")
    import "com.bumptech.glide.Glide"
    local url=h图26;
    Glide.with(activity).load(url).into(hp26)
    图27=content:match("【预览27】(.-)【预览27】")
    import "com.bumptech.glide.Glide"
    local url=图27;
    Glide.with(activity).load(url).into(p27)       
    h图27=content:match("【预横27】(.-)【预横27】")
    import "com.bumptech.glide.Glide"
    local url=h图27;
    Glide.with(activity).load(url).into(hp27)
    图28=content:match("【预览28】(.-)【预览28】")
    import "com.bumptech.glide.Glide"
    local url=图28;
    Glide.with(activity).load(url).into(p28)       
    h图28=content:match("【预横28】(.-)【预横28】")
    import "com.bumptech.glide.Glide"
    local url=h图28;
    Glide.with(activity).load(url).into(hp28)
    图29=content:match("【预览29】(.-)【预览29】")
    import "com.bumptech.glide.Glide"
    local url=图29;
    Glide.with(activity).load(url).into(p29)       
    h图29=content:match("【预横29】(.-)【预横29】")
    import "com.bumptech.glide.Glide"
    local url=h图29;
    Glide.with(activity).load(url).into(hp29) 
    图30=content:match("【预览30】(.-)【预览30】")
    import "com.bumptech.glide.Glide"
    local url=图30;
    Glide.with(activity).load(url).into(p30)       
    h图30=content:match("【预横30】(.-)【预横30】")
    import "com.bumptech.glide.Glide"
    local url=h图30;
    Glide.with(activity).load(url).into(hp30) 
    
    
    

if tz16 == "0" then
else
function c16.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s16,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s16
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc16.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h16,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h16
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end

end

if tz17 == "0" then
else
function c17.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s17,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s17
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc17.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h17,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h17
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end

end

if tz18 == "0" then
else
function c18.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s18,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s18
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc18.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h18,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h18
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end

end

if tz19 == "0" then
else
function c19.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s19,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s19
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc19.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h19,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h19
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end

end

if tz20 == "0" then
else
function c20.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s20,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s20
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc20.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h20,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h20
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end

end

if tz21 == "0" then
else
function c21.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s21,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s21
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc21.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h21,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h21
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end

end

if tz22 == "0" then
else
function c22.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s22,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s22
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc22.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h22,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h22
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end

end

if tz23 == "0" then
else
function c23.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s23,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s23
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc23.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h23,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h23
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end

end

if tz24 == "0" then
else
function c24.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s24,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s24
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc24.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h24,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h24
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end

end

if tz25 == "0" then
else
function c25.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s25,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s25
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc25.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h25,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h25
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end

end

if tz26 == "0" then
else
function c26.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s26,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s26
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc26.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h26,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h26
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end

end

if tz27 == "0" then
else
function c27.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s27,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s27
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc27.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h27,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h27
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end

end

if tz28 == "0" then
else
function c28.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s28,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s28
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc28.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h28,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h28
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end

end

if tz29 == "0" then
else
function c29.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s29,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s29
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc29.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h29,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h29
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end

end

if tz30 == "0" then
else
function c30.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(s30,"MG Aide","竖屏.zip") 
  elseif wxp == 2 then   
  url=s30
  viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
  activity.startActivity(viewIntent)
  else 
  print("请进入程序设置选择下载方式")
  end
end
function hc30.onClick()  
  if wxp == 1 then 
  print("已建立任务") 
  系统下载(h30,"MG Aide","横屏.zip") 
  elseif wxp == 2 then   
  url=h30
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

function page3.onClick()  
  activity.newActivity("dtrd")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
  activity.finish()
end

function page4.onClick()  
  activity.newActivity("dtfoth")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
  activity.finish()
end