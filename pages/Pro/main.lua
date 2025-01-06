
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
--退出动画
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
        text="捐赠打赏",
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
        layout_margin='8dp';--边距
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='120dp';--高度
        CardBackgroundColor=卡片底色;--颜色
        radius='25dp';--圆角
        layout_margin='20dp';--边距
        layout_marginTop="0dp",--顶距
        id="p1";
        {
          TextView;--文本控件
          layout_width='fill';--文本宽度
          layout_height='fill';--文本高度
          gravity='left';--重力属性
          textColor=卡片文本;--文字颜色
          text='感谢名单';--显示的文字
          textSize='25sp';--文字大小
          layout_marginLeft='20dp';--左距
          layout_marginTop='20dp';--顶距
          id="t1";
        };            
        {
          TextView;--文本控件
          layout_width='fill';--文本宽度
          layout_height='fill';--文本高度
          gravity='left';--重力属性
          textColor=标题色;--文字颜色
          text='请量力而行，不要勉强自己~\n一旦付款，不支持退还';--显示的文字
          textSize='15sp';--文字大小
          layout_marginLeft='20dp';--左距
          layout_marginTop='60dp';--顶距
          id="t11";
        };            
        {
          MaterialCardView;--卡片控件
          layout_margin='30dp';--边距
          layout_gravity='bottom|right';--重力
          elevation='0dp';--阴影
          layout_width='100dp';--宽度
          layout_height='40dp';--高度
          radius='25dp';--圆角
          layout_marginLeft='20dp';--左距
          layout_marginRight='-30dp';--右距           
          CardBackgroundColor=按钮底色,    
          elevation='0dp';--阴影
          id="kq",
          {
           TextView,
           layout_gravity='center|left';--重力           
           layout_marginLeft='20dp';--左距
           text="进入",
           textSize="16sp",
           textStyle="bold",
           textColor=按钮文本;--文字颜色
           id="t2",
          },
         },  
      };
              

     {
        MaterialCardView;--卡片控件
        layout_margin='5dp';--边距
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度       
        layout_height="fill";
        CardBackgroundColor=卡片底色;--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距        
        layout_marginRight="20dp",--顶距       
        elevation='0dp';--阴影
        id="";
       {
        TextView,
        layout_gravity='left';--重力
        layout_marginLeft='20dp';--左距
        layout_marginTop='20dp';--顶距
        text="捐赠后，将...",
        textSize="20sp",
        textStyle="bold",
        textColor=卡片文本;--文字颜色
        id="Ti1",
       },       
       {
        TextView,
        layout_gravity='left';--重力
        layout_marginTop='5dp';--左距
        layout_marginLeft='20dp';--左距
        layout_marginRight='20dp';--左距
        text="\n\n-让千凪吃上臭豆腐\n-让千凪吃上绝顶的螺蛳粉\n-让千凪吃上麦当劳的13.9\n-让千凪更好摸鱼\n-让千凪更好地卷钱跑路\n-让千凪把你登记进捐赠名单内\n",
        textSize="20sp",
        textStyle="bold",
        textColor=标题色;--文字颜色
        id="txt1",
       },          

     },

       
       {
        MaterialCardView;--卡片控件
        layout_margin='5dp';--边距
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='500dp';--高度
        radius='20dp';--圆角
        layout_marginLeft='20dp';--左距
        layout_marginRight='20dp';--右距
        layout_marginTop="10dp",--顶距   
        CardBackgroundColor="#FFFFFFFF",    
        elevation='0dp';--阴影
        id="c1";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/w.jpg",
          id="p1";
         },  
       },

      {
        MaterialCardView;--卡片控件
        layout_margin='5dp';--边距
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='500dp';--高度
        radius='20dp';--圆角
        layout_marginLeft='20dp';--左距
        layout_marginRight='20dp';--右距
        layout_marginTop="10dp",--顶距   
        CardBackgroundColor="#FFFFFFFF",    
        elevation='0dp';--阴影
        id="c2";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/z.jpg",
          id="p2";
         }, 
         {
            MaterialCardView;--卡片控件
            layout_margin='0dp';--边距
            layout_gravity='bottom|center';--重力
            elevation='0dp';--阴影
            layout_width='120dp';--宽度
            layout_height='40dp';--高度
            CardBackgroundColor=0xFFFFFFFF;--颜色
            radius='30dp';--圆角
            layout_marginBottom='20dp';--边距    
            layout_marginRight='0dp';--边距               
            elevation='0dp';--阴影   
            id="c0";
            {
              TextView;--文本控件
              layout_width='fill';--文本宽度
              layout_height='fill';--文本高度
              gravity='center';--重力属性
              layout_marginBottom="0dp",--底距
              textColor=0xFF000000;--文字颜色
              text='快捷跳转→';--显示的文字
              textSize='20sp';--文字                 
            };
           }; 
       },    



      {
        MaterialCardView;--卡片控件
        layout_margin='5dp';--边距
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='600dp';--高度
        radius='20dp';--圆角
        layout_marginLeft='20dp';--左距
        layout_marginRight='20dp';--右距
        layout_marginTop="10dp",--顶距   
        CardBackgroundColor="#FFFFFFFF",    
        elevation='0dp';--阴影
        id="c2";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/q.png",
          id="p3";
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
        radius='25dp';--圆角
        layout_marginLeft='0dp';--左距
        layout_marginRight='0dp';--右距
        layout_marginTop="0dp",--顶距   
        CardBackgroundColor=背景色,    
        elevation='0dp';--阴影   
       },        

  },
 },

      
--横向滑动控件--
{
  LinearLayout,--线性布局
  orientation="horizontal",--布局方向
  layout_width="fill",--布局宽度
  layout_height="fill",--布局高度
  gravity="left|center",--重力居左｜置中
  id="heng",
 {
   HorizontalScrollView,--横向滑动控件
   layout_width="fill",--布局宽度
   layout_height="fill",--布局高度
   overScrollMode=View.OVER_SCROLL_NEVER,--隐藏圆弧阴影
   horizontalScrollBarEnabled=false,--隐藏横向滑条
   layout_marginTop="40dp",--顶距  
   layout_marginBottom="65dp",--底距  
   {
    LinearLayout,--线性布局
    orientation="horizontal",--布局方向
    layout_width="fill",--布局宽度
    layout_height="fill",--布局高度
    gravity="center",--置中  
     {
     NestedScrollView,--纵向滑动控件
     layout_width="fill",--布局宽度
     layout_height="fill",--布局高度
     overScrollMode=View.OVER_SCROLL_NEVER,--显示圆弧阴影
     verticalScrollBarEnabled=false,--显示纵向滑条
     {
      LinearLayout,--线性布局
      orientation="vertical",--布局方向
      layout_width="600dp",--布局宽度
      layout_height="fill",--布局高度
      gravity='center';--重力
      layout_gravity='center';--重力
      id="",        
       {
        MaterialCardView;--卡片控件
        layout_margin='0dp';--边距
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='300dp';--宽度
        layout_height='500dp';--高度
        CardBackgroundColor=背景色;--颜色
        radius='40dp';--圆角
        layout_marginLeft='0dp';--左距
        layout_marginRight='0dp';--右距
        layout_marginTop="30dp",--顶距       
        elevation='0dp';--阴影    
         {
          ShapeableImageView,
          layout_gravity='center';--重力
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="600dp",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/wx.png", 
          id="zf1",         
         }, 
         {
          ShapeableImageView,
          layout_gravity='center';--重力
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="600dp",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/zfb.png", 
          id="zf2",         
         }, 
         {
          ShapeableImageView,
          layout_gravity='center';--重力
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="600dp",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/qq.png", 
          id="zf3",         
         }, 
       
        },
     },
    },
   
    {
     NestedScrollView,--纵向滑动控件
     layout_width="fill",--布局宽度
     layout_height="fill",--布局高度
     overScrollMode=View.OVER_SCROLL_NEVER,--显示圆弧阴影
     verticalScrollBarEnabled=false,--显示纵向滑条
     {
      LinearLayout,--线性布局
      orientation="vertical",--布局方向
      layout_width="500dp",--布局宽度
      layout_height="fill",--布局高度
      gravity='center';--重力
      layout_gravity='center';--重力
      id="",        

       {
        MaterialCardView;--卡片控件
        layout_margin='0dp';--边距
        layout_gravity='center|left';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='80dp';--高度
        CardBackgroundColor=背景色;--颜色
        radius='40dp';--圆角
        layout_marginLeft='0dp';--左距
        layout_marginRight='0dp';--右距
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影    
       {
        TextView,
        layout_gravity='center|left';--重力
        layout_marginLeft='50dp';--左距
        text="捐赠打赏",
        textSize="28sp",
        textStyle="bold",
        textColor=大标题色;--文字颜色
        id="Ti2",
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
        layout_marginRight='50dp';--右距
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
          id="hback";
         },       
      
       },     
      },
      {
        MaterialCardView;--卡片控件
        layout_margin='8dp';--边距
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='120dp';--高度
        CardBackgroundColor=卡片底色;--颜色
        radius='25dp';--圆角
        layout_marginLeft='50dp';--边距
        layout_marginRight='50dp';--边距
        layout_marginTop="0dp",--顶距
        id="p1";
        {
          TextView;--文本控件
          layout_width='fill';--文本宽度
          layout_height='fill';--文本高度
          gravity='left';--重力属性
          textColor=卡片文本;--文字颜色
          text='捐赠名单';--显示的文字
          textSize='25sp';--文字大小
          layout_marginLeft='20dp';--左距
          layout_marginTop='20dp';--顶距
          id="ht1";
        };            
        {
          TextView;--文本控件
          layout_width='fill';--文本宽度
          layout_height='fill';--文本高度
          gravity='left';--重力属性
          textColor=标题色;--文字颜色
          text='请量力而行，不要勉强自己~\n一旦付款，不支持退还';--显示的文字
          textSize='15sp';--文字大小
          layout_marginLeft='20dp';--左距
          layout_marginTop='60dp';--顶距
          id="t11";
        };            
        {
          MaterialCardView;--卡片控件
          layout_margin='30dp';--边距
          layout_gravity='bottom|right';--重力
          elevation='0dp';--阴影
          layout_width='100dp';--宽度
          layout_height='40dp';--高度
          radius='25dp';--圆角
          layout_marginLeft='20dp';--左距
          layout_marginRight='-30dp';--右距           
          CardBackgroundColor="#FFFFB86B",    
          elevation='0dp';--阴影
          id="hkq",
          {
           TextView,
           layout_gravity='center|left';--重力           
           layout_marginLeft='20dp';--左距
           text="进入",
           textSize="16sp",
           textStyle="bold",
           textColor="#FFFFFFFF";--文字颜色
           id="t2",
          },
         },  
      };
     {
        MaterialCardView;--卡片控件
        layout_margin='5dp';--边距
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度       
        layout_height="fill";
        CardBackgroundColor=卡片底色;--颜色
        radius='25dp';--圆角
        layout_marginLeft='50dp';--左距        
        layout_marginRight="50dp",--顶距       
        elevation='0dp';--阴影
        id="";
       {
        TextView,
        layout_gravity='left';--重力
        layout_marginLeft='20dp';--左距
        layout_marginTop='20dp';--顶距
        text="捐赠后，将...",
        textSize="20sp",
        textStyle="bold",
        textColor=卡片文本;--文字颜色
        id="Ti1",
       },       
       {
        TextView,
        layout_gravity='left';--重力
        layout_marginTop='5dp';--左距
        layout_marginLeft='20dp';--左距
        layout_marginRight='20dp';--左距
        text="\n\n-让千凪吃上臭豆腐\n-让千凪吃上绝顶的螺蛳粉\n-让千凪吃上麦当劳的13.9\n-让千凪更好摸鱼\n-让千凪更好地卷钱跑路\n-让千凪把你登记进捐赠名单内\n",
        textSize="20sp",
        textStyle="bold",
        textColor=标题色;--文字颜色
        id="txt1",
       },          

     },
     
       {
        MaterialCardView;--卡片控件
        layout_margin='5dp';--边距
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='100dp';--高度
        radius='20dp';--圆角
        layout_marginLeft='50dp';--左距
        layout_marginRight='50dp';--右距
        layout_marginTop="10dp",--顶距   
        CardBackgroundColor=卡片底色,    
        elevation='0dp';--阴影
        id="hc3";
-----------------------仨小快捷卡片---------------      
       {
        MaterialCardView;--卡片控件
        layout_margin='5dp';--边距
        layout_gravity='center|left';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='80dp';--高度
        CardBackgroundColor=透明;--颜色
        radius='20dp';--圆角
        layout_marginLeft='0dp';--左距
        layout_marginRight='0dp';--右距
        layout_marginTop="10dp",--顶距       
        elevation='0dp';--阴影        
        {
        MaterialCardView;--卡片控件
        layout_margin='5dp';--边距
        layout_gravity='center|left';--重力
        elevation='0dp';--阴影
        layout_width='60dp';--宽度
        layout_height='60dp';--高度
        CardBackgroundColor=卡片底色;--颜色
        radius='17dp';--圆角
        layout_marginLeft='20dp';--左距
        layout_marginRight='20dp';--右距
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        id="v1";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/vp1.png",
          id="vp1";
         },  
       },
       {
        MaterialCardView;--卡片控件
        layout_margin='5dp';--边距
        layout_gravity='center|left';--重力
        elevation='0dp';--阴影
        layout_width='60dp';--宽度
        layout_height='60dp';--高度
        CardBackgroundColor=卡片底色;--颜色
        radius='17dp';--圆角
        layout_marginLeft='100dp';--左距
        layout_marginRight='20dp';--右距
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        id="v2";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/vp2.png",
          id="vp2";
         },  
       },
       {
        MaterialCardView;--卡片控件
        layout_margin='5dp';--边距
        layout_gravity='center|left';--重力
        elevation='0dp';--阴影
        layout_width='60dp';--宽度
        layout_height='60dp';--高度
        CardBackgroundColor=卡片底色;--颜色
        radius='17dp';--圆角
        layout_marginLeft='180dp';--左距
        layout_marginRight='20dp';--右距
        layout_marginTop="0dp",--顶距       
        elevation='0dp';--阴影
        id="v3";
         {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='0%w';--边距
          src="pic/vp3.png",
          id="vp3";
         },  
       },

     
      },       

       },
     

     },
    }, 

  
  
  
  
   },





 },
}
        



     
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


--退出动画
function onKeyDown(key,event)
  if(key==4)then
    activity.finish()
    --下面代码的参数(1,2)就是和跳转进入代码相反(2,1)
    activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
  end
end

function back.onClick()  
  activity.finish()
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end

function hback.onClick()  
  activity.finish()
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end
--设置字体加粗
t1.getPaint().setFakeBoldText(true)
ht1.getPaint().setFakeBoldText(true)

import "android.content.Intent"
import "android.net.Uri"
function c0.onClick() 
  url="alipayqr://platformapi/startapp?saId=10000007&qrcode=https://qr.alipay.com/fkx17940y9zs6yx9nxbzoee"
  activity.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)))
end

function kq.onClick() 
  activity.newActivity("jz")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end
function hkq.onClick() 
  activity.newActivity("jz")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end

zf2.setVisibility(View.GONE)
zf3.setVisibility(View.GONE)
function v1.onClick() 
  zf1.setVisibility(View.VISIBLE)
  zf2.setVisibility(View.GONE)
  zf3.setVisibility(View.GONE)
end
function v2.onClick() 
  zf1.setVisibility(View.GONE)
  zf2.setVisibility(View.VISIBLE)
  zf3.setVisibility(View.GONE)
end
function v3.onClick() 
  zf1.setVisibility(View.GONE)
  zf2.setVisibility(View.GONE)
  zf3.setVisibility(View.VISIBLE)
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

--更新横屏状态
function isHorizontal()
  if activity.width>activity.height
    --横屏显示
   shu.setVisibility(View.GONE)
   heng.setVisibility(View.VISIBLE)
   
   else
    --竖屏显示
   shu.setVisibility(View.VISIBLE)
   heng.setVisibility(View.GONE)

  end
end
isHorizontal()

--横屏监听
currentOrientation=activity.resources.configuration.orientation
oldOrientation=currentOrientation
luajava.override(OrientationListener,{
  onOrientationChanged=function(_,orientation)
    currentOrientation=activity.resources.configuration.orientation
    if currentOrientation~=oldOrientation
      isHorizontal()
    end
    oldOrientation=currentOrientation
  end}).enable()
