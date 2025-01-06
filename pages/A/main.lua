
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
import "android.Manifest"
import "androidx.core.app.ActivityCompat"
ActivityCompat.requestPermissions(activity,
String{Manifest.permission.WRITE_EXTERNAL_STORAGE,Manifest.permission.READ_EXTERNAL_STORAGE}, 0);
import "java.io.*"
File("/sdcard/MG Aide").mkdir()
require "import"
--导入
import {
  "com.google.android.material.button.MaterialButton",
  "com.google.android.material.card.MaterialCardView",
  "android.view.animation.AnimationUtils",
  "android.animation.*",
  "android.graphics.drawable.ColorDrawable",
  "android.content.res.ColorStateList",
  "androidx.coordinatorlayout.widget.CoordinatorLayout",
  "com.google.android.material.dialog.MaterialAlertDialogBuilder",
  "androidx.appcompat.widget.*",
  "android.widget.*",
  "android.net.Uri",
  "androidx.appcompat.widget.Toolbar",
  "androidx.core.widget.NestedScrollView",
  "com.google.android.material.appbar.AppBarLayout",
  "androidx.viewpager.widget.ViewPager",
  "com.google.android.material.appbar.CollapsingToolbarLayout",
  "android.view.WindowManager",
  "android.content.Intent",
  "android.view.*",
  "com.google.android.material.bottomnavigation.BottomNavigationView",
  "androidx.coordinatorlayout.widget.CoordinatorLayout",
  "com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton",
  "com.google.android.material.bottomnavigation.BottomNavigationView",
  "android.graphics.drawable.BitmapDrawable",
}


theme=tonumber(activity.getSharedData("the"))

import "android.content.Intent"
import "android.net.Uri"
wxp=tonumber(activity.getSharedData("wx"))

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

function 浏览器打开(链接)
  import "android.content.Intent"
  import "android.net.Uri"
  viewIntent = Intent("android.intent.action.VIEW",Uri.parse(链接))
  activity.startActivity(viewIntent)
end

require"import"
import "android.os.Build"


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
    id="shu1";

    {
      LinearLayout,--线性布局
      orientation="vertical",--布局方向
      layout_width="fill",--布局宽度
      layout_height="fill",--布局高度
      id="page1",

      ---------------https://mgzspc.mysxl.cn/----*--------
      {
        MaterialCardView;--卡片控件
        layout_margin='5dp';--边距
        layout_gravity='center|left';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='60dp';--高度
        CardBackgroundColor=透明;--颜色
        radius='40dp';--圆角
        layout_marginLeft='0dp';--左距
        layout_marginRight='0dp';--右距
        layout_marginTop="5dp",--顶距      
        elevation='0dp';--阴影   
        {
          TextView,
          layout_gravity='center|left';--重力
          layout_marginLeft='30dp';--左距
          text="MG Aide",
          textSize="35sp",
          textStyle="bold",
          textColor=大标题色;--文字颜色
          id="Title1",
        },

        {
          MaterialCardView;--卡片控件
          layout_margin='0dp';--边距
          layout_gravity='center|right';--重力
          elevation='0dp';--阴影
          layout_width='50dp';--宽度
          layout_height='50dp';--高度
          radius='50dp';--圆角       
          layout_marginRight='30dp';--右距         
          CardBackgroundColor=卡片底色,
          id="lien1";
          {
            ImageView,
            layout_gravity='center';--重力
            layout_margin='-5dp';--边距
            scaleType="centerCrop",
            layout_width="26dp",
            layout_height="26dp",
            src="pic/ne.png",
            ColorFilter=按钮底色;--图片着色
            id="p0";
          },
        },
        {
          MaterialCardView;--卡片控件
          layout_margin='0dp';--边距
          layout_gravity='center|right';--重力
          elevation='0dp';--阴影
          layout_width='100dp';--宽度
          layout_height='40dp';--高度
          radius='50dp';--圆角       
          layout_marginRight='30dp';--右距     
          strokeWidth="3dp", --边框宽度
          strokeColor=卡片底色, --边框颜色   
          CardBackgroundColor=按钮底色,
          id="lien2";
          {
            ImageView,
            layout_gravity='center';--重力
            layout_margin='-5dp';--边距
            layout_marginRight='0dp';--边距
            scaleType="centerCrop",
            layout_width="fill",
            layout_height="fill",
            src="",
            id="slip";
          },
          {
            MaterialCardView;--卡片控件       
            layout_gravity='center';--重力
            elevation='0dp';--阴影
            layout_width='fill';--宽度
            layout_height='fill';--高度               
            CardBackgroundColor="#11000000",
          },
          {
            TextView,
            layout_gravity='center';--重力
            layout_marginLeft='0dp';--左距
            text="直播中",
            textSize="15sp",
            textStyle="bold",
            textColor=按钮文本;--文字颜色
            id="Title1",
          },
        },

      },







      {
        MaterialCardView;--卡片控件
        layout_margin='0dp';--边距
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='550dp';--高度
        radius='35dp';--圆角
        layout_marginLeft='20dp';--左距
        layout_marginRight='20dp';--右距
        layout_marginTop="10dp",--顶距          
        CardBackgroundColor=卡片底色,
        elevation='0dp';--阴影
        id="c0";
        {
          ImageView,
          scaleType="centerCrop",
          layout_width="fill",
          layout_height="fill",
          layout_marginTop="0dp",--顶距
          layout_margin='-5%w';--边距
          src="pic/hzj.jpg",
          id="pc";
        },
        {
          MaterialCardView;--卡片控件       
          layout_gravity='center';--重力
          elevation='0dp';--阴影
          layout_width='fill';--宽度
          layout_height='fill';--高度               
          CardBackgroundColor="#49050505",
        },
        {
          TextView,
          layout_gravity='top|center';--重力
          layout_marginLeft='0dp';--边距
          layout_marginTop="20dp",--顶距  
          text="获取中...",
          textSize="28sp",
          textStyle="bold",
          textColor=字体白色;--文字颜色    
          id="Sti",
        },
        {
          TextView,
          layout_gravity='top|center';--重力
          layout_marginLeft='0dp';--边距
          layout_marginTop="60dp",--顶距  
          text="...",
          textSize="13sp",
          textStyle="bold",
          textColor="#FFF1F1F1";--文字颜色
          id="Sau",
        },
        {
          MaterialCardView;--卡片控件
          layout_margin='0dp';--边距
          layout_gravity='center|top';--重力
          elevation='0dp';--阴影
          layout_width='250dp';--宽度
          layout_height='250dp';--高度
          radius='9000dp';--圆角
          layout_marginLeft='30dp';--左距
          layout_marginRight='30dp';--右距
          layout_marginTop="120dp",--顶距  
          CardBackgroundColor="#86FFFFFF",
          elevation='30dp';--阴影   
          {
            MaterialCardView;--卡片控件
            layout_margin='20dp';--边距
            layout_gravity='center|top';--重力
            elevation='0dp';--阴影
            layout_width='fill';--宽度
            layout_height='fill';--高度
            radius='9000dp';--圆角          
            CardBackgroundColor=深色,
            elevation='0dp';--阴影          
            {
              CardView;--卡片控件
              layout_gravity='center';--重力
              layout_margin='20dp';--边距
              elevation='0dp';--阴影
              layout_width='260dp';--宽度
              layout_height='260dp';--高度
              CardBackgroundColor=透明色;--颜色
              radius='25dp';--圆角
              id="play",
              {
                ImageView,
                scaleType="centerCrop",
                layout_width="fill",
                layout_height="fill",
                layout_marginTop="0dp",--顶距
                layout_margin='0%w';--边距
                src="pic/hzj.jpg",
                id="pic";
              },

              {
                ImageView,
                scaleType="centerCrop",
                layout_width="fill",
                layout_height="fill",
                layout_marginTop="0dp",--顶距
                layout_margin='0%w';--边距
                src="pic/hzj.jpg",
                id="picse";
              },
              {
                MaterialCardView;--卡片控件       
                layout_gravity='center';--重力
                elevation='0dp';--阴影
                layout_width='fill';--宽度
                layout_height='fill';--高度               
                CardBackgroundColor="#11000000",
              },

            },
          },
        },
        {
          MaterialCardView;--卡片控件                     
          layout_gravity='bottom|center';--重力
          elevation='0dp';--阴影
          layout_width='60dp';--宽度
          layout_height='60dp';--布局高
          CardBackgroundColor="#86FFFFFF";--颜色
          radius='50dp';--圆角
          layout_marginLeft='0dp';--左距       
          layout_marginBottom="45dp",--顶距      
          elevation='0dp';--阴影       
          id="bp";
          {
            ImageView,
            layout_gravity="center",
            layout_width="50dp",
            layout_height="50dp",
            layout_marginBottom="0dp",--顶距 
            padding="10dp",
            ColorFilter="#60C6C6C6",
            id="buttonimg",
            src="ic_public_play.png",
          },
        },
        {
          MaterialCardView;--卡片控件                     
          layout_gravity='bottom|left';--重力
          elevation='0dp';--阴影
          layout_width='40dp';--宽度
          layout_height='40dp';--布局高
          CardBackgroundColor="#86FFFFFF";--颜色
          radius='50dp';--圆角
          layout_marginLeft='70dp';--左距       
          layout_marginBottom="50dp",--顶距      
          elevation='0dp';--阴影       
          id="domus";
          {
            ImageView,
            layout_margin='-5dp';--边距
            layout_gravity='center';--重力 
            scaleType="centerCrop",
            layout_width="20dp",
            layout_height="20dp",
            src="ic_public_download.png",
            ColorFilter="#60C6C6C6";--图片着色
            id="domusi",
          },
        },
        {
          MaterialCardView;--卡片控件                     
          layout_gravity='bottom|right';--重力
          elevation='0dp';--阴影
          layout_width='40dp';--宽度
          layout_height='40dp';--布局高
          CardBackgroundColor="#86FFFFFF";--颜色
          radius='50dp';--圆角
          layout_marginRight='70dp';--左距       
          layout_marginBottom="50dp",--顶距      
          elevation='0dp';--阴影       
          id="mus";
          {
            ImageView,
            layout_margin='-5dp';--边距
            layout_gravity='center';--重力 
            scaleType="centerCrop",
            layout_width="20dp",
            layout_height="20dp",
            src="ic_public_view_list.png",
            ColorFilter="#60C6C6C6";--图片着色
            id="domusi",
          },
        },

        {
          ImageView,
          layout_marginTop="120dp",--顶距 
          layout_marginLeft="20dp",--顶距 
          scaleType="centerCrop",
          layout_width="100dp",
          layout_height="100dp",
          src="pic/ns.png",
          elevation='160dp';--阴影  
          id="";
        },
        {
          MaterialCardView;--卡片控件                     
          layout_gravity='center|bottom';--重力
          elevation='0dp';--阴影
          layout_width='150dp';--宽度
          layout_height='60dp';--布局高
          CardBackgroundColor="#60C6C6C6";--颜色
          radius='10dp';--圆角
          layout_marginLeft='0dp';--左距       
          layout_marginBottom="-35dp",--顶距      
          elevation='20dp';--阴影       
          id="vid";
          {
            TextView,
            layout_gravity='center';--重力
            layout_marginLeft='0dp';--边距
            layout_marginBottom="15dp",--顶距  
            text="VIDEO LINK",
            textSize="12sp",
            textStyle="bold",
            textColor="#60181818";--文字颜色                  
          },
        },
        {
          MaterialCardView;--卡片控件       
          layout_gravity='center';--重力
          elevation='0dp';--阴影
          layout_width='fill';--宽度
          layout_height='fill';--高度               
          CardBackgroundColor="#11000000",
        },
      },
      ---------------------------------------------------------   

      {
        MaterialCardView;--卡片控件
        layout_marginTop='20dp';--边距
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='5dp';--高度
        CardBackgroundColor=卡片底色;--颜色
        radius='40dp';--圆角
        layout_marginLeft='25dp';--左距
        layout_marginRight='25dp';--右距          
        elevation='0dp';--阴影       
      },

      {
        MaterialCardView;--卡片控件
        layout_margin='5dp';--边距
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='110dp';--高度
        CardBackgroundColor=卡片底色;--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距
        layout_marginRight='20dp';--右距
        layout_marginTop="20dp",--顶距      
        elevation='0dp';--阴影
        id="c3";
        {
          ImageView,
          scaleType="centerCrop",
          layout_gravity='bottom|right';--重力
          layout_width="200dp",
          layout_height="200dp",
          layout_marginBottom="-82dp",--顶距
          layout_marginRight='-30dp';--边距
          src="pic/tr.png",
          id="p3";
        },
        {
          TextView,
          layout_gravity='center|left';--重力
          layout_marginLeft='40dp';--边距
          text="同人",
          textSize="23sp",
          textStyle="bold",
          textColor=卡片文本;--文字颜色
        }
      },
      {
        MaterialCardView;--卡片控件
        layout_margin='5dp';--边距
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='110dp';--高度
        CardBackgroundColor=卡片底色;--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距
        layout_marginRight='20dp';--右距
        layout_marginTop="20dp",--顶距      
        elevation='0dp';--阴影
        id="c4";
        {
          ImageView,
          scaleType="centerCrop",
          layout_gravity='bottom|right';--重力
          layout_width="120dp",
          layout_height="120dp",
          layout_marginBottom="-20dp",--顶距
          layout_marginRight='-10dp';--边距
          src="pic/wfl.png",
          id="p4";
        },
        {
          TextView,
          layout_gravity='center|left';--重力
          layout_marginLeft='40dp';--边距
          text="资源市场",
          textSize="23sp",
          textStyle="bold",
          textColor=卡片文本;--文字颜色
        }
      },

      {
        MaterialCardView;--卡片控件
        layout_margin='5dp';--边距
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='110dp';--高度
        CardBackgroundColor=卡片底色;--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距
        layout_marginRight='20dp';--右距
        layout_marginTop="20dp",--顶距      
        elevation='0dp';--阴影
        id="c5";
        {
          ImageView,
          scaleType="centerCrop",
          layout_gravity='bottom|right';--重力
          layout_width="180dp",
          layout_height="180dp",
          layout_marginBottom="-20dp",--顶距
          layout_marginRight='-10dp';--边距
          src="pic/group.png",
          id="p5";
        },
        {
          TextView,
          layout_gravity='center|left';--重力
          layout_marginLeft='40dp';--边距
          text="群聊广场",
          textSize="23sp",
          textStyle="bold",
          textColor=卡片文本;--文字颜色
        }
      },
      {
        MaterialCardView;--卡片控件
        layout_margin='5dp';--边距
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='110dp';--高度
        CardBackgroundColor=卡片底色;--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距
        layout_marginRight='20dp';--右距
        layout_marginTop="20dp",--顶距      
        elevation='0dp';--阴影
        id="c6";
        {
          ImageView,
          scaleType="centerCrop",
          layout_gravity='bottom|right';--重力
          layout_width="180dp",
          layout_height="180dp",
          layout_marginBottom="-50dp",--顶距
          layout_marginRight='-20dp';--边距
          src="pic/club.png",
          id="p6";
        },
        {
          TextView,
          layout_gravity='center|left';--重力
          layout_marginLeft='40dp';--边距
          text="毛怪\n俱乐部",
          textSize="23sp",
          textStyle="bold",
          textColor=卡片文本;--文字颜色
        }
      },
      {
        MaterialCardView;--卡片控件
        layout_margin='5dp';--边距
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='110dp';--高度
        CardBackgroundColor=卡片底色;--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距
        layout_marginRight='20dp';--右距
        layout_marginTop="20dp",--顶距      
        elevation='0dp';--阴影
        id="c7";
        {
          ImageView,
          scaleType="centerCrop",
          layout_gravity='bottom|right';--重力
          layout_width="180dp",
          layout_height="180dp",
          layout_marginBottom="-50dp",--顶距
          layout_marginRight='-20dp';--边距
          src="pic/hanser.png",
          id="p7";
        },
        {
          TextView,
          layout_gravity='center|left';--重力
          layout_marginLeft='40dp';--边距
          text="了解\nHanser",
          textSize="23sp",
          textStyle="bold",
          textColor=卡片文本;--文字颜色
        }
      },

      {
        MaterialCardView;--卡片控件
        layout_margin='5dp';--边距
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='110dp';--高度
        CardBackgroundColor=卡片底色;--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距
        layout_marginRight='20dp';--右距
        layout_marginTop="20dp",--顶距      
        elevation='0dp';--阴影
        id="c9";
        {
          ImageView,
          scaleType="centerCrop",
          layout_gravity='center|right';--重力
          layout_width="150dp",
          layout_height="90dp",
          layout_marginBottom="0dp",--顶距
          layout_marginRight='-10dp';--边距
          src="pic/xmm.png",
          id="p9";
        },
        {
          TextView,
          layout_gravity='center|left';--重力
          layout_marginLeft='40dp';--边距
          text="厦门",
          textSize="23sp",
          textStyle="bold",
          textColor=卡片文本;--文字颜色
        }
      },

      {
        MaterialCardView;--卡片控件
        layout_margin='5dp';--边距
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='110dp';--高度
        CardBackgroundColor=卡片底色;--颜色
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距
        layout_marginRight='20dp';--右距
        layout_marginTop="20dp",--顶距      
        elevation='0dp';--阴影
        id="c8";
        {
          ImageView,
          scaleType="centerCrop",
          layout_gravity='center|right';--重力
          layout_width="180dp",
          layout_height="80dp",
          layout_marginBottom="0dp",--顶距
          layout_marginRight='-35dp';--边距
          src="pic/scdm.png",
          id="p8";
        },
        {
          TextView,
          layout_gravity='center|left';--重力
          layout_marginLeft='40dp';--边距
          text="手持弹幕",
          textSize="23sp",
          textStyle="bold",
          textColor=卡片文本;--文字颜色
        }
      },


      ---------空卡---------------------------  
      {
        MaterialCardView;--卡片控件
        layout_margin='5dp';--边距
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='100dp';--高度
        radius='25dp';--圆角
        layout_marginLeft='0dp';--左距
        layout_marginRight='0dp';--右距
        layout_marginTop="0dp",--顶距  
        CardBackgroundColor=透明,
        elevation='0dp';--阴影  
      },
      {
        LinearLayout;--线性控件
        orientation='vertical';--布局方向
        layout_width='0dp';--布局宽度
        layout_height='0dp';--布局高度
        background='#ffeeeeee';--布局背景
        {
          LuaWebView;--浏览器控件
          layout_width='fill';--浏览器宽度
          layout_height='fill';--浏览器高度
          id='webView';--控件ID
        };

      };

    },
  },




  --横向滑动控件--------横向横向横向-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  {
    LinearLayout,--线性布局
    orientation="horizontal",--布局方向
    layout_width="fill",--布局宽度
    layout_height="fill",--布局高度
    gravity="left|center",--重力居左｜置中
    id="heng1",
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
        gravity="left|center",--重力居左｜置中   

        {
          MaterialCardView;--卡片控件                     
          layout_gravity='center';--重力
          elevation='0dp';--阴影
          layout_width='400dp';--宽度
          layout_height='fill';--高度
          CardBackgroundColor=卡片底色;--颜色
          radius='35dp';--圆角
          layout_marginLeft='20dp';--左距     
          layout_marginRight='0dp';--左距       
          layout_marginTop="0dp",--顶距
          layout_marginBottom="0dp",--顶距            
          elevation='0dp';--阴影            
          id="hlien1";
          {
            ImageView,
            scaleType="centerCrop",
            layout_gravity='center';--重力
            layout_width="fill",
            layout_height="fill",
            id="hlipbg",
          },
          {
            MaterialCardView;--卡片控件       
            layout_gravity='center';--重力
            elevation='0dp';--阴影
            layout_width='fill';--宽度
            layout_height='fill';--高度               
            CardBackgroundColor="#63050505",
          },
          {
            TextView,
            layout_gravity='center|top';--重力
            gravity='center';--重力
            layout_marginTop='40dp';--ding距
            layout_marginLeft='0dp';--ding距
            text="正在直播",
            textSize="30sp",
            textStyle="bold",
            textColor=字体白色;--文字颜色                
          },
          {
            MaterialCardView;--卡片控件                     
            layout_gravity='center|top';--重力
            elevation='0dp';--阴影
            layout_width='fill';--宽度
            layout_height='180dp';--高度
            CardBackgroundColor=卡片底色;--颜色
            radius='25dp';--圆角
            layout_marginLeft='40dp';--左距     
            layout_marginRight='40dp';--左距       
            layout_marginTop="100dp",--顶距
            layout_marginBottom="0dp",--顶距            
            elevation='0dp';--阴影               
            {
              ImageView,
              scaleType="centerCrop",
              layout_gravity='center';--重力
              layout_width="fill",
              layout_height="fill",
              id="hlip",
            },
          },
          {
            TextView,
            layout_gravity='left|top';--重力
            gravity='center';--重力
            layout_marginTop='300dp';--顶距
            layout_marginLeft='40dp';--左距
            layout_marginRight='40dp';--右距
            text="标题",
            textSize="30sp",
            textStyle="bold",
            textColor=字体白色;--文字颜色
            id="hliveti",
          },
          {
            MaterialCardView;--卡片控件                     
            layout_gravity='center|bottom';--重力
            layout_marginBottom='30dp';--ding距
            layout_marginLeft='30dp';--左距
            layout_marginRight='30dp';--右距
            elevation='0dp';--阴影
            layout_width='fill';--宽度
            layout_height='60dp';--高度
            CardBackgroundColor=字体白色;--颜色
            radius='20dp';--圆角                      
            elevation='0dp';--阴影         
            id="dn",
            {
              TextView,
              layout_gravity='center';
              text="快速进入直播间",
              textSize="20sp",
              textStyle="bold",
              textColor=字体黑色;--文字颜色
              id="hud",
            },
          },
        },
        {
          MaterialCardView;--卡片控件                     
          layout_gravity='center';--重力
          elevation='0dp';--阴影
          layout_width='100dp';--宽度
          layout_height='fill';--高度
          CardBackgroundColor=卡片底色;--颜色
          radius='25dp';--圆角
          layout_marginLeft='20dp';--左距     
          layout_marginRight='0dp';--左距       
          layout_marginTop="0dp",--顶距
          layout_marginBottom="0dp",--顶距            
          elevation='0dp';--阴影       
          strokeColor=卡片底色, --边框颜色
          strokeWidth="5dp", --边框宽度
          id="hlien2";


          {
            TextView,
            layout_gravity='center';--重力
            gravity='center';--重力
            layout_marginTop='50dp';--ding距
            layout_marginLeft='0dp';--ding距
            text="未直播\n去冒个泡?",
            textSize="13sp",
            textStyle="bold",
            textColor=大标题色;--文字颜色
            id="hcud",
          },
          {
            ImageView,
            scaleType="centerCrop",
            layout_gravity='center';--重力
            layout_width="46dp",
            layout_height="46dp",
            src="pic/ne.png",
            ColorFilter=按钮底色;--图片着色
          },
          {
            ImageView,
            scaleType="centerCrop",
            layout_gravity='center|bottom';--重力
            layout_marginBottom='-32dp';--ding距
            layout_width="100dp",
            layout_height="100dp",
            src="pic/men.png",
          },
        },



        {
          MaterialCardView;--卡片控件
          layout_margin='0dp';--边距
          layout_gravity='center';--重力
          elevation='0dp';--阴影
          layout_width='650dp';--宽度
          layout_height='fill';--高度
          radius='35dp';--圆角
          layout_marginLeft='20dp';--左距
          layout_marginRight='0dp';--右距
          layout_marginTop="0dp",--顶距  
          CardBackgroundColor=卡片底色,
          elevation='0dp';--阴影
          id="hc0";
          {
            ImageView,
            scaleType="centerCrop",
            layout_width="fill",
            layout_height="fill",
            layout_marginTop="0dp",--顶距
            layout_margin='-5%w';--边距
            src="pic/hzj.jpg",
            id="hpc";
          },
          {
            MaterialCardView;--卡片控件       
            layout_gravity='center';--重力
            elevation='0dp';--阴影
            layout_width='fill';--宽度
            layout_height='fill';--高度               
            CardBackgroundColor="#63050505",
          },
          {
            MaterialCardView;--卡片控件
            layout_margin='30dp';--边距
            layout_gravity='left|top';--重力
            elevation='0dp';--阴影
            layout_width='280dp';--宽度
            layout_height='280dp';--高度
            radius='25dp';--圆角
            layout_marginLeft='30dp';--左距
            layout_marginRight='30dp';--右距
            layout_marginTop="30dp",--顶距         
            CardBackgroundColor=字体黑色,
            elevation='0dp';--阴影   
            {
              MaterialCardView;--卡片控件
              layout_margin='0dp';--边距
              layout_gravity='center|top';--重力
              elevation='0dp';--阴影
              layout_width='fill';--宽度
              layout_height='fill';--高度
              radius='0dp';--圆角          
              CardBackgroundColor=深色,
              elevation='20dp';--阴影          

              {
                ImageView,
                scaleType="centerCrop",
                layout_width="fill",
                layout_height="fill",
                layout_marginTop="0dp",--顶距
                layout_margin='0%w';--边距
                src="pic/hzj.jpg",
                id="hpic";
              },

              {
                ImageView,
                scaleType="centerCrop",
                layout_width="fill",
                layout_height="fill",
                layout_marginTop="0dp",--顶距
                layout_margin='0%w';--边距
                src="pic/hzj.jpg",
                id="hpicse";
              },
              {
                MaterialCardView;--卡片控件                     
                layout_gravity='center|bottom';--重力
                elevation='0dp';--阴影
                layout_width='60dp';--宽度
                layout_height='60dp';--布局高
                CardBackgroundColor="#C8FFFFFF";--颜色
                radius='10dp';--圆角
                layout_marginLeft='0dp';--左距       
                layout_marginBottom="-35dp",--顶距      
                elevation='20dp';--阴影       
                id="hvid";
                {
                  TextView,
                  layout_gravity='center';--重力
                  layout_marginLeft='0dp';--边距
                  layout_marginBottom="15dp",--顶距  
                  text="Video",
                  textSize="12sp",
                  textStyle="bold",
                  textColor="#60181818";--文字颜色                  
                },
              },
              {
                MaterialCardView;--卡片控件       
                layout_gravity='center';--重力
                elevation='0dp';--阴影
                layout_width='fill';--宽度
                layout_height='fill';--高度               
                CardBackgroundColor="#11000000",
              },


            },
          },
          {
            TextView,
            layout_gravity='left';--重力
            layout_marginLeft='30dp';--边距
            layout_marginTop="330dp",--顶距  
            text="获取中...",
            textSize="28sp",
            textStyle="bold",
            textColor=字体白色;--文字颜色    
            id="hSti",
          },
          {
            TextView,
            layout_gravity='left';--重力
            layout_marginLeft='30dp';--边距
            layout_marginTop="370dp",--顶距  
            text="...",
            textSize="17sp",
            textStyle="bold",
            textColor="#FFF1F1F1";--文字颜色
            id="hSau",
          },
          {
            MaterialCardView;--卡片控件                     
            layout_gravity='left|bottom';--重力
            elevation='0dp';--阴影
            layout_width='50dp';--宽度
            layout_height='50dp';--布局高
            CardBackgroundColor="#86FFFFFF";--颜色
            radius='50dp';--圆角
            layout_marginLeft='50dp';--左距       
            layout_marginBottom="60dp",--顶距      
            elevation='0dp';--阴影        
            id="hdomus";
            {
              ImageView,
              layout_margin='-5dp';--边距
              layout_gravity='center';--重力 
              scaleType="centerCrop",
              layout_width="20dp",
              layout_height="20dp",
              src="ic_public_download.png",
              ColorFilter="#60C6C6C6";--图片着色
              id="hdomusi",
            },
          },
          {
            MaterialCardView;--卡片控件                     
            layout_gravity='left|bottom';--重力
            elevation='0dp';--阴影
            layout_width='70dp';--宽度
            layout_height='70dp';--布局高
            CardBackgroundColor="#86FFFFFF";--颜色
            radius='50dp';--圆角
            layout_marginLeft='140dp';--左距       
            layout_marginBottom="50dp",--顶距      
            elevation='0dp';--阴影       
            id="hplay";
            {
              ImageView,
              layout_gravity="center",
              layout_width="50dp",
              layout_height="50dp",
              layout_marginBottom="0dp",--顶距 
              padding="10dp",
              ColorFilter="#60C6C6C6",
              id="hbuttonimg",
              src="ic_public_play.png",
            },
          },
          {
            MaterialCardView;--卡片控件                     
            layout_gravity='bottom|left';--重力
            elevation='0dp';--阴影
            layout_width='50dp';--宽度
            layout_height='50dp';--布局高
            CardBackgroundColor="#86FFFFFF";--颜色
            radius='50dp';--圆角
            layout_marginLeft='250dp';--左距       
            layout_marginBottom="60dp",--顶距      
            elevation='0dp';--阴影       
            id="hmus";
            {
              ImageView,
              layout_margin='-5dp';--边距
              layout_gravity='center';--重力 
              scaleType="centerCrop",
              layout_width="20dp",
              layout_height="20dp",
              src="ic_public_view_list.png",
              ColorFilter="#60C6C6C6";--图片着色         
            },
          },
          {
            MaterialCardView;--卡片控件                     
            layout_gravity='right';--重力
            elevation='0dp';--阴影
            layout_width='280dp';--宽度
            layout_height='fill';--高度
            CardBackgroundColor=透明;--颜色
            radius='0dp';--圆角
            layout_marginRight='30dp';--左距       
            layout_marginTop="30dp",--顶距   
            layout_marginBottom="30dp",--顶距        
            elevation='0dp';--阴影       
            strokeColor="#FFFFFFFF", --边框颜色
            id="";
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
                gravity='left';--重力
                layout_gravity='left';--重力
                id="",
                {
                  TextView,
                  gravity='left';--重力
                  layout_gravity='center|left';--重力
                  layout_marginTop='0dp';--顶距
                  layout_margin='0dp';--边距
                  text="获取中...",
                  textSize="19sp",
                  textStyle="bold",
                  textColor=字体白色;--文字颜色
                  id="hlrc",
                },
              },
            },
          },
        },


        ------------------- 

        {
          MaterialCardView;--卡片控件
          layout_margin='20dp';--边距
          layout_gravity='center';--重力
          elevation='0dp';--阴影
          layout_width='5dp';--宽度
          layout_height='fill';--高度
          CardBackgroundColor=卡片底色;--颜色
          radius='40dp';--圆角
          layout_marginLeft='20dp';--左距
          layout_marginRight='0dp';--右距          
          elevation='0dp';--阴影       
        },


        {
          MaterialCardView;--卡片控件
          layout_gravity='center';--重力
          elevation='0dp';--阴影
          layout_width='350dp';--宽度
          layout_height='fill';--高度
          CardBackgroundColor=透明;--颜色
          radius='25dp';--圆角
          layout_marginLeft='20dp';--边距
          layout_marginRight='20dp';--边距
          layout_marginTop="0dp",--顶距      
          elevation='0dp';--阴影
          ----------------------功能卡片-----------------    

          --纵向滑动控件--
          {
            NestedScrollView,--横向滑动控件
            layout_gravity='center|left';--重力
            layout_width="350dp",--布局宽度
            layout_height="fill",--布局高
            overScrollMode=View.OVER_SCROLL_NEVER,--隐藏圆弧阴影
            horizontalScrollBarEnabled=false,--隐藏横向滑条
            layout_marginTop="0dp",--顶距 
            {
              LinearLayout,--线性布局
              orientation="vertical",--布局方向
              layout_width="fill",--布局宽度
              layout_height="fill",--布局高度
              gravity="left|center",--重力居左｜置中
              {
                MaterialCardView;--卡片控件
                layout_margin='0dp';--边距
                layout_gravity='center';--重力
                elevation='0dp';--阴影
                layout_width='fill';--宽度
                layout_height='120dp';--高度
                CardBackgroundColor=卡片底色;--颜色
                radius='25dp';--圆角
                layout_marginLeft='0dp';--左距
                layout_marginRight='0dp';--右距
                layout_marginTop="0dp",--顶距      
                elevation='0dp';--阴影
                id="hc3";
                {
                  ImageView,
                  scaleType="centerCrop",
                  layout_gravity='bottom|right';--重力
                  layout_width="130dp",
                  layout_height="130dp",
                  layout_marginBottom="-20dp",--顶距
                  layout_marginRight='-10dp';--边距
                  src="pic/htr.png",
                  id="p3";
                },
                {
                  ImageView,
                  scaleType="centerCrop",
                  layout_gravity='bottom|right';--重力
                  layout_width="200dp",
                  layout_height="200dp",
                  layout_marginBottom="-82dp",--顶距
                  layout_marginRight='-30dp';--边距
                  src="pic/tr.png",
                  id="p3";
                },
                {
                  TextView,
                  layout_gravity='center|left';--重力
                  layout_marginLeft='40dp';--边距
                  text="同人",
                  textSize="23sp",
                  textStyle="bold",
                  textColor=卡片文本;--文字颜色
                }
              },
              {
                MaterialCardView;--卡片控件
                layout_margin='0dp';--边距
                layout_gravity='center';--重力
                elevation='0dp';--阴影
                layout_width='fill';--宽度
                layout_height='120dp';--高度
                CardBackgroundColor=卡片底色;--颜色
                radius='25dp';--圆角
                layout_marginLeft='0dp';--左距
                layout_marginRight='0dp';--右距
                layout_marginTop="20dp",--顶距      
                elevation='0dp';--阴影
                id="hc4";
                {
                  ImageView,
                  scaleType="centerCrop",
                  layout_gravity='bottom|right';--重力
                  layout_width="130dp",
                  layout_height="130dp",
                  layout_marginBottom="-20dp",--顶距
                  layout_marginRight='-10dp';--边距
                  src="pic/wfl.png",
                  id="p4";
                },
                {
                  TextView,
                  layout_gravity='center|left';--重力
                  layout_marginLeft='40dp';--边距
                  text="资源市场",
                  textSize="23sp",
                  textStyle="bold",
                  textColor=卡片文本;--文字颜色
                }
              },

              {
                MaterialCardView;--卡片控件
                layout_margin='0dp';--边距
                layout_gravity='center';--重力
                elevation='0dp';--阴影
                layout_width='fill';--宽度
                layout_height='120dp';--高度
                CardBackgroundColor=卡片底色;--颜色
                radius='25dp';--圆角
                layout_marginLeft='0dp';--左距
                layout_marginRight='0dp';--右距
                layout_marginTop="20dp",--顶距      
                elevation='0dp';--阴影
                id="hc5";
                {
                  ImageView,
                  scaleType="centerCrop",
                  layout_gravity='bottom|right';--重力
                  layout_width="180dp",
                  layout_height="180dp",
                  layout_marginBottom="-20dp",--顶距
                  layout_marginRight='-10dp';--边距
                  src="pic/group.png",
                  id="p5";
                },
                {
                  TextView,
                  layout_gravity='center|left';--重力
                  layout_marginLeft='40dp';--边距
                  text="群聊广场",
                  textSize="23sp",
                  textStyle="bold",
                  textColor=卡片文本;--文字颜色
                }
              },
              {
                MaterialCardView;--卡片控件
                layout_margin='0dp';--边距
                layout_gravity='center';--重力
                elevation='0dp';--阴影
                layout_width='fill';--宽度
                layout_height='120dp';--高度
                CardBackgroundColor=卡片底色;--颜色
                radius='25dp';--圆角
                layout_marginLeft='0dp';--左距
                layout_marginRight='0dp';--右距
                layout_marginTop="20dp",--顶距      
                elevation='0dp';--阴影
                id="hc6";
                {
                  ImageView,
                  scaleType="centerCrop",
                  layout_gravity='bottom|right';--重力
                  layout_width="180dp",
                  layout_height="180dp",
                  layout_marginBottom="-50dp",--顶距
                  layout_marginRight='-20dp';--边距
                  src="pic/club.png",
                  id="p6";
                },
                {
                  TextView,
                  layout_gravity='center|left';--重力
                  layout_marginLeft='40dp';--边距
                  text="毛怪\n俱乐部",
                  textSize="23sp",
                  textStyle="bold",
                  textColor=卡片文本;--文字颜色
                }
              },
              {
                MaterialCardView;--卡片控件
                layout_margin='0dp';--边距
                layout_gravity='center';--重力
                elevation='0dp';--阴影
                layout_width='fill';--宽度
                layout_height='120dp';--高度
                CardBackgroundColor=卡片底色;--颜色
                radius='25dp';--圆角
                layout_marginLeft='0dp';--左距
                layout_marginRight='0dp';--右距
                layout_marginTop="20dp",--顶距      
                elevation='0dp';--阴影
                id="hc7";
                {
                  ImageView,
                  scaleType="centerCrop",
                  layout_gravity='bottom|right';--重力
                  layout_width="180dp",
                  layout_height="180dp",
                  layout_marginBottom="-50dp",--顶距
                  layout_marginRight='-20dp';--边距
                  src="pic/hanser.png",
                  id="p7";
                },
                {
                  TextView,
                  layout_gravity='center|left';--重力
                  layout_marginLeft='40dp';--边距
                  text="了解\nHanser",
                  textSize="23sp",
                  textStyle="bold",
                  textColor=卡片文本;--文字颜色
                }
              },

              {
                MaterialCardView;--卡片控件
                layout_margin='0dp';--边距
                layout_gravity='center';--重力
                elevation='0dp';--阴影
                layout_width='fill';--宽度
                layout_height='120dp';--高度
                CardBackgroundColor=卡片底色;--颜色
                radius='25dp';--圆角
                layout_marginLeft='0dp';--左距
                layout_marginRight='0dp';--右距
                layout_marginTop="20dp",--顶距      
                elevation='0dp';--阴影
                id="hc9";
                {
                  ImageView,
                  scaleType="centerCrop",
                  layout_gravity='center|right';--重力
                  layout_width="150dp",
                  layout_height="90dp",
                  layout_marginBottom="0dp",--顶距
                  layout_marginRight='-10dp';--边距
                  src="pic/xmm.png",
                  id="hp9";
                },
                {
                  TextView,
                  layout_gravity='center|left';--重力
                  layout_marginLeft='40dp';--边距
                  text="厦门",
                  textSize="23sp",
                  textStyle="bold",
                  textColor=卡片文本;--文字颜色
                }
              },


              {
                MaterialCardView;--卡片控件
                layout_margin='0dp';--边距
                layout_gravity='center';--重力
                elevation='0dp';--阴影
                layout_width='fill';--宽度
                layout_height='120dp';--高度
                CardBackgroundColor=卡片底色;--颜色
                radius='25dp';--圆角
                layout_marginLeft='0dp';--左距
                layout_marginRight='0dp';--右距
                layout_marginTop="20dp",--顶距      
                elevation='0dp';--阴影
                id="hc8";
                {
                  ImageView,
                  scaleType="centerCrop",
                  layout_gravity='center|right';--重力
                  layout_width="180dp",
                  layout_height="80dp",
                  layout_marginBottom="0dp",--顶距
                  layout_marginRight='-10dp';--边距
                  src="pic/scdm.png",
                  id="p8";
                },
                {
                  TextView,
                  layout_gravity='center|left';--重力
                  layout_marginLeft='40dp';--边距
                  text="手持弹幕",
                  textSize="23sp",
                  textStyle="bold",
                  textColor=卡片文本;--文字颜色
                }
              },



            },
          },



        },



      },

    },
  },
}


number=0



two={
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
    id="shu2",
    {
      LinearLayout,--线性布局
      orientation="vertical",--布局方向
      layout_width="fill",--布局宽度
      layout_height="fill",--布局高度
      id="page4",
      {
        MaterialCardView;--卡片控件       
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='200dp';--高度
        radius='25dp';--圆角
        layout_marginLeft='20dp';--左距
        layout_marginRight='20dp';--右距
        layout_marginTop="10dp",--顶距  
        strokeWidth="5dp", --边框宽度
        strokeColor=卡片底色, --边框颜色
        CardBackgroundColor=浅色,
        elevation='0dp';--阴影
        id="c41";
        {
          ImageView,
          scaleType="centerCrop",
          layout_margin='-4dp';--边距     
          src="pic/udb.png",
          id="c41i",
        },
        {
          ImageView,
          scaleType="centerCrop",
          layout_margin='-4dp';--边距     
          src="pic/udbsw2.jpg",
          id="c41isw",
        },
        {
          MaterialCardView;--卡片控件
          layout_margin='5dp';--边距
          layout_gravity='bottom|left';--重力
          elevation='0dp';--阴影
          layout_width='130dp';--宽度
          layout_height='280dp';--高度
          radius='20dp';--圆角
          layout_marginLeft='35dp';--左距       
          layout_marginBottom="-150dp",--顶距
          strokeWidth="5dp", --边框宽度
          strokeColor=卡片底色, --边框颜色
          CardBackgroundColor=浅色,
          elevation='0dp';--阴影
          id="c41";
          {
            ImageView,
            scaleType="centerCrop",
            layout_width="fill",
            layout_height="fill",
            layout_margin='5dp';--边距
            src="pic/ppih.png",
            id="p41";
          },
        },
        {
          TextView,
          layout_gravity='center|top';--重力
          layout_margin='20dp';--边距
          text="版本",
          textSize="20sp",
          textStyle="bold",
          textColor="#FFFFFFFF";--文字颜色
          id="t41",
        },

        {
          MaterialCardView;--卡片控件
          layout_marginBottom='70dp';--边距
          layout_gravity='bottom|right';--重力
          elevation='0dp';--阴影
          layout_width='120dp';--宽度
          layout_height='40dp';--高度
          radius='13dp';--圆角
          layout_marginLeft='0dp';--左距
          layout_marginRight='35dp';--右距          
          CardBackgroundColor=卡片底色,
          elevation='0dp';--阴影
          id="Dl",
          {
            TextView,
            layout_gravity='center';--重力          
            layout_marginLeft='0dp';--左距
            text="已最新",
            textSize="16sp",
            textStyle="bold",
            textColor=卡片文本;--文字颜色
            id="ud",
          },
        },
        {
          MaterialCardView;--卡片控件
          layout_marginBottom='15dp';--边距
          layout_gravity='bottom|right';--重力
          elevation='0dp';--阴影
          layout_width='120dp';--宽度
          layout_height='40dp';--高度
          radius='13dp';--圆角
          layout_marginLeft='0dp';--左距
          layout_marginRight='35dp';--右距          
          CardBackgroundColor=卡片底色,
          elevation='0dp';--阴影
          id="D0",
          {
            TextView,
            layout_gravity='center';--重力          
            layout_marginLeft='0dp';--左距
            text="更新日志",
            textSize="16sp",
            textStyle="bold",
            textColor=卡片文本;--文字颜色
            id="",
          },
        },
      },
      -----------------------------

      {
        MaterialCardView;--卡片控件
        layout_marginTop='20dp';--边距
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='5dp';--高度
        CardBackgroundColor=卡片底色;--颜色
        radius='40dp';--圆角
        layout_marginLeft='25dp';--左距
        layout_marginRight='25dp';--右距          
        elevation='0dp';--阴影       
      },

      -------------------------------
      {
        MaterialCardView;--卡片控件       
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='60dp';--高度
        radius='20dp';--圆角
        layout_marginLeft='20dp';--左距
        layout_marginRight='20dp';--右距
        layout_marginTop="20dp",--顶距  
        CardBackgroundColor=卡片底色;--颜色 
        elevation='0dp';--阴影
        id="c44";
        {
          ImageView,
          layout_marginLeft='20dp';--边距
          layout_gravity='center|left';--重力 
          scaleType="centerCrop",
          layout_width="20dp",
          layout_height="20dp",
          src="ic_gallery_photoedit_more.png",
          ColorFilter=卡片文本;--图片着色
        },
        {
          TextView,
          layout_gravity='center|left';--重力
          layout_marginLeft='60dp';--左距
          text="程序生态",
          textSize="17sp",
          textStyle="bold",
          textColor=卡片文本;--文字颜色      
        }
      },

      {
        MaterialCardView;--卡片控件       
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='60dp';--高度
        radius='20dp';--圆角
        layout_marginLeft='20dp';--左距
        layout_marginRight='20dp';--右距
        layout_marginTop="10dp",--顶距  
        CardBackgroundColor=卡片底色;--颜色 
        elevation='0dp';--阴影
        id="c45";
        {
          ImageView,
          layout_marginLeft='20dp';--边距
          layout_gravity='center|left';--重力 
          scaleType="centerCrop",
          layout_width="20dp",
          layout_height="20dp",
          src="ic_public_help.png",
          ColorFilter=卡片文本;--图片着色
        },
        {
          TextView,
          layout_gravity='center|left';--重力
          layout_marginLeft='60dp';--左距
          text="使用帮助",
          textSize="17sp",
          textStyle="bold",
          textColor=卡片文本;--文字颜色      
        }
      },
      {
        MaterialCardView;--卡片控件       
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='60dp';--高度
        radius='20dp';--圆角
        layout_marginLeft='20dp';--左距
        layout_marginRight='20dp';--右距
        layout_marginTop="10dp",--顶距  
        CardBackgroundColor=卡片底色;--颜色 
        elevation='0dp';--阴影
        id="c46";
        {
          ImageView,
          layout_marginLeft='20dp';--边距
          layout_gravity='center|left';--重力 
          scaleType="centerCrop",
          layout_width="20dp",
          layout_height="20dp",
          src="ic_public_settings.png",
          ColorFilter=卡片文本;--图片着色
        },
        {
          TextView,
          layout_gravity='center|left';--重力
          layout_marginLeft='60dp';--左距
          text="程序设置",
          textSize="17sp",
          textStyle="bold",
          textColor=卡片文本;--文字颜色      
        }
      },
      {
        MaterialCardView;--卡片控件       
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='60dp';--高度
        radius='20dp';--圆角
        layout_marginLeft='20dp';--左距
        layout_marginRight='20dp';--右距
        layout_marginTop="10dp",--顶距  
        CardBackgroundColor=卡片底色;--颜色 
        elevation='0dp';--阴影
        id="c47";
        {
          ImageView,
          layout_marginLeft='20dp';--边距
          layout_gravity='center|left';--重力 
          scaleType="centerCrop",
          layout_width="20dp",
          layout_height="20dp",
          src="ic_public_detail.png",
          ColorFilter=卡片文本;--图片着色
        },
        {
          TextView,
          layout_gravity='center|left';--重力
          layout_marginLeft='60dp';--左距
          text="关于程序",
          textSize="17sp",
          textStyle="bold",
          textColor=卡片文本;--文字颜色      
        }
      },
      {
        MaterialCardView;--卡片控件       
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='60dp';--高度
        radius='20dp';--圆角
        layout_marginLeft='20dp';--左距
        layout_marginRight='20dp';--右距
        layout_marginTop="10dp",--顶距  
        CardBackgroundColor="#FFFFBC0D";--颜色 
        elevation='0dp';--阴影
        id="c48";
        {
          ImageView,
          layout_marginLeft='20dp';--边距
          layout_gravity='center|left';--重力 
          scaleType="centerCrop",
          layout_width="20dp",
          layout_height="20dp",
          src="ic_public_thumbsup.png",
          ColorFilter=字体白色;--图片着色
        },
        {
          TextView,
          layout_gravity='center|left';--重力
          layout_marginLeft='60dp';--左距
          text="支持我们",
          textSize="17sp",
          textStyle="bold",
          textColor=字体白色;--文字颜色      
        }
      },



      {
        TextView,
        gravity='center';--重力
        layout_gravity='center';--重力
        layout_marginTop='30dp';--顶距
        layout_margin='30dp';--边距
        text="Power by fusion64j2.0",
        textSize="19sp",
        textStyle="bold",
        textColor=标题色;--文字颜色
        id="制作",
      },
      ---------空卡---------------------------  
      {
        MaterialCardView;--卡片控件
        layout_margin='5dp';--边距
        layout_gravity='center';--重力
        elevation='0dp';--阴影
        layout_width='fill';--宽度
        layout_height='0dp';--高度
        radius='25dp';--圆角
        layout_marginLeft='0dp';--左距
        layout_marginRight='0dp';--右距
        layout_marginTop="0dp",--顶距  
        CardBackgroundColor=透明,
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
    id="heng2",
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
        gravity="left|center",--重力居左｜置中

        {
          MaterialCardView;--卡片控件                     
          layout_gravity='left';--重力
          elevation='0dp';--阴影
          layout_width='300dp';--宽度
          layout_height='fill';--高度
          CardBackgroundColor=卡片底色;--颜色
          radius='35dp';--圆角
          layout_marginLeft='20dp';--左距       
          layout_marginTop="0dp",--顶距      
          elevation='0dp';--阴影       
          id="hc41";
          {
            ImageView,
            scaleType="centerCrop",
            layout_width="fill",
            layout_height="fill",
            src="pic/udb.png",
          },
          {
            MaterialCardView;--卡片控件                     
            layout_gravity='center|top';--重力
            layout_marginTop='30dp';--ding距
            elevation='0dp';--阴影
            layout_width='240dp';--宽度
            layout_height='150dp';--高度
            CardBackgroundColor=卡片底色;--颜色
            radius='20dp';--圆角                      
            elevation='0dp';--阴影
            strokeWidth="5dp", --边框宽度      
            strokeColor=卡片底色, --边框颜色                 
            {
              ImageView,
              scaleType="centerCrop",
              layout_width="fill",
              layout_height="fill",
              layout_margin='5dp';--ding距        
              src="pic/ppa.jpg",
            },
          },
          {
            TextView,
            layout_gravity='center|top|left';--重力
            layout_marginTop='200dp';--ding距
            layout_marginLeft='30dp';--ding距
            text="当前:",
            textSize="20sp",
            textStyle="bold",
            textColor=字体白色;--文字颜色
          },
          {
            TextView,
            layout_gravity='center|top|left';--重力
            layout_marginTop='230dp';--ding距
            layout_marginLeft='30dp';--ding距
            text="Ver7.0.000",
            textSize="20sp",
            textStyle="bold",
            textColor=字体白色;--文字颜色
            id="ht43",
          },
          {
            TextView,
            layout_gravity='center|top|left';--重力
            layout_marginTop='270dp';--ding距
            layout_marginLeft='30dp';--ding距
            text="最新:",
            textSize="20sp",
            textStyle="bold",
            textColor=字体白色;--文字颜色
          },
          {
            TextView,
            layout_gravity='center|top|left';--重力
            layout_marginTop='300dp';--ding距
            layout_marginLeft='30dp';--左距
            text="Ver7.0.000",
            textSize="20sp",
            textStyle="bold",
            textColor=字体白色;--文字颜色
            id="ht43s",
          },
          {
            MaterialCardView;--卡片控件                     
            layout_gravity='center|bottom';--重力
            layout_marginBottom='30dp';--ding距
            elevation='0dp';--阴影
            layout_width='240dp';--宽度
            layout_height='60dp';--高度
            CardBackgroundColor=字体白色;--颜色
            radius='20dp';--圆角                      
            elevation='0dp';--阴影         
            id="dn",
            {
              TextView,
              layout_gravity='center';
              text="已最新",
              textSize="20sp",
              textStyle="bold",
              textColor=字体黑色;--文字颜色
              id="hud",
            },
          },

        },





        {
          MaterialCardView;--卡片控件                     
          layout_gravity='left';--重力
          elevation='0dp';--阴影
          layout_width='400dp';--宽度
          layout_height='fill';--高度
          CardBackgroundColor='#1FFFFFF';--颜色
          radius='25dp';--圆角
          layout_marginLeft='20dp';--左距       
          layout_marginTop="0dp",--顶距      
          elevation='0dp';--阴影       
          strokeColor="#FFFFFFFF", --边框颜色
          id="";
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
              gravity='left';--重力
              layout_gravity='left';--重力
              id="",
              {
                TextView,
                gravity='left';--重力
                layout_gravity='center|left';--重力
                layout_marginTop='-10dp';--顶距
                layout_margin='0dp';--边距
                text="获取中...",
                textSize="19sp",
                textStyle="bold",
                textColor=标题色;--文字颜色
                id="ulog",
              },
            },
          },
        },



        {
          MaterialCardView;--卡片控件
          layout_gravity='center';--重力
          elevation='0dp';--阴影
          layout_width='400dp';--宽度
          layout_height='fill';--高度
          CardBackgroundColor=透明;--颜色
          radius='25dp';--圆角
          layout_marginLeft='20dp';--边距
          layout_marginRight='20dp';--边距
          layout_marginTop="0dp",--顶距      
          elevation='0dp';--阴影
          {
            NestedScrollView,--纵向滑动控件
            layout_width="fill",--布局宽度
            layout_height="fill",--布局高度
            overScrollMode=View.OVER_SCROLL_NEVER,--显示圆弧阴影
            verticalScrollBarEnabled=false,--显示纵向滑条
            {
              LinearLayout,--线性布局
              orientation="vertical",--布局方向
              layout_width="400dp",--布局宽度
              layout_height="fill",--布局高度
              id="",

              {
                MaterialCardView;--卡片控件       
                layout_gravity='center';--重力
                elevation='0dp';--阴影
                layout_width='fill';--宽度
                layout_height='70dp';--高度
                radius='25dp';--圆角
                layout_marginLeft='20dp';--左距
                layout_marginRight='20dp';--右距
                layout_marginTop="0dp",--顶距  
                CardBackgroundColor=卡片底色;--颜色 
                elevation='0dp';--阴影
                id="hc44";
                {
                  ImageView,
                  layout_marginLeft='20dp';--边距
                  layout_gravity='center|left';--重力 
                  scaleType="centerCrop",
                  layout_width="20dp",
                  layout_height="20dp",
                  src="ic_gallery_photoedit_more.png",
                  ColorFilter=卡片文本;--图片着色
                },
                {
                  TextView,
                  layout_gravity='center|left';--重力
                  layout_marginLeft='60dp';--左距
                  text="程序生态",
                  textSize="20sp",
                  textStyle="bold",
                  textColor=卡片文本;--文字颜色      
                }
              },

              {
                MaterialCardView;--卡片控件       
                layout_gravity='center';--重力
                elevation='0dp';--阴影
                layout_width='fill';--宽度
                layout_height='70dp';--高度
                radius='25dp';--圆角
                layout_marginLeft='20dp';--左距
                layout_marginRight='20dp';--右距
                layout_marginTop="10dp",--顶距  
                CardBackgroundColor=卡片底色;--颜色 
                elevation='0dp';--阴影
                id="hc45";
                {
                  ImageView,
                  layout_marginLeft='20dp';--边距
                  layout_gravity='center|left';--重力 
                  scaleType="centerCrop",
                  layout_width="20dp",
                  layout_height="20dp",
                  src="ic_public_help.png",
                  ColorFilter=卡片文本;--图片着色
                },
                {
                  TextView,
                  layout_gravity='center|left';--重力
                  layout_marginLeft='60dp';--左距
                  text="使用帮助",
                  textSize="20sp",
                  textStyle="bold",
                  textColor=卡片文本;--文字颜色      
                }
              },
              {
                MaterialCardView;--卡片控件       
                layout_gravity='center';--重力
                elevation='0dp';--阴影
                layout_width='fill';--宽度
                layout_height='70dp';--高度
                radius='25dp';--圆角
                layout_marginLeft='20dp';--左距
                layout_marginRight='20dp';--右距
                layout_marginTop="10dp",--顶距  
                CardBackgroundColor=卡片底色;--颜色 
                elevation='0dp';--阴影
                id="hc46";
                {
                  ImageView,
                  layout_marginLeft='20dp';--边距
                  layout_gravity='center|left';--重力 
                  scaleType="centerCrop",
                  layout_width="20dp",
                  layout_height="20dp",
                  src="ic_public_settings.png",
                  ColorFilter=卡片文本;--图片着色
                },
                {
                  TextView,
                  layout_gravity='center|left';--重力
                  layout_marginLeft='60dp';--左距
                  text="程序设置",
                  textSize="20sp",
                  textStyle="bold",
                  textColor=卡片文本;--文字颜色      
                }
              },
              {
                MaterialCardView;--卡片控件       
                layout_gravity='center';--重力
                elevation='0dp';--阴影
                layout_width='fill';--宽度
                layout_height='70dp';--高度
                radius='25dp';--圆角
                layout_marginLeft='20dp';--左距
                layout_marginRight='20dp';--右距
                layout_marginTop="10dp",--顶距  
                CardBackgroundColor=卡片底色;--颜色 
                elevation='0dp';--阴影
                id="hc47";
                {
                  ImageView,
                  layout_marginLeft='20dp';--边距
                  layout_gravity='center|left';--重力 
                  scaleType="centerCrop",
                  layout_width="20dp",
                  layout_height="20dp",
                  src="ic_public_detail.png",
                  ColorFilter=卡片文本;--图片着色
                },
                {
                  TextView,
                  layout_gravity='center|left';--重力
                  layout_marginLeft='60dp';--左距
                  text="关于程序",
                  textSize="20sp",
                  textStyle="bold",
                  textColor=卡片文本;--文字颜色      
                }
              },
              {
                MaterialCardView;--卡片控件       
                layout_gravity='center';--重力
                elevation='0dp';--阴影
                layout_width='fill';--宽度
                layout_height='70dp';--高度
                radius='25dp';--圆角
                layout_marginLeft='20dp';--左距
                layout_marginRight='20dp';--右距
                layout_marginTop="10dp",--顶距  
                CardBackgroundColor="#FFFFBC0D";--颜色 
                elevation='0dp';--阴影
                id="hc48";
                {
                  ImageView,
                  layout_marginLeft='20dp';--边距
                  layout_gravity='center|left';--重力 
                  scaleType="centerCrop",
                  layout_width="20dp",
                  layout_height="20dp",
                  src="ic_public_thumbsup.png",
                  ColorFilter=字体白色;--图片着色
                },
                {
                  TextView,
                  layout_gravity='center|left';--重力
                  layout_marginLeft='60dp';--左距
                  text="支持我们",
                  textSize="20sp",
                  textStyle="bold",
                  textColor=字体白色;--文字颜色      
                }
              },
            },
          },

        },

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
      orientation="0",
      {
        ViewPager,
        layout_width="fill",
        layout_height="fill",
        id="pager",
        pages={
          one,
          two,
        },
      },
    },
  },
  {
    BottomNavigationView,
    layout_gravity="bottom",
    layout_width="fill",
    layout_height="63dp",
    ItemIconTintList=ColorStateList.valueOf(深色),
    ItemTextColor=ColorStateList.valueOf(深色),
    ItemRippleColor=ColorStateList.valueOf(浅色),
    id="btmNav",
    backgroundColor=背景色,
  },

}
activity.contentView=框架

--窗口
window = activity.getWindow()
window.setStatusBarColor(背景色)
window.setNavigationBarColor(背景色)
window.getDecorView().setSystemUiVisibility( View.SYSTEM_UI_FLAG_LAYOUT_STABLE|View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR);
window.clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
--设置底栏样式
bottombarBehavior=import "com.google.android.material.behavior.HideBottomViewOnScrollBehavior"
btmNav.layoutParams.setBehavior(bottombarBehavior())
btmNav.setLabelVisibilityMode(0)
local btmMenu=btmNav.menu
local btmMenus={
  {title="首页",icon="1.png"},
  {title="程序",icon="3.png"},
}
for i,c in pairs(btmMenus) do
  btmMenu.add(0,i-1,i-1,c.title).setIcon(getLocalDrawable(c.icon))
end

btmNav.setOnNavigationItemSelectedListener{
  onNavigationItemSelected=function(item)
    pager.currentItem=item.itemId
  end
}

pager.setOnPageChangeListener(ViewPager.OnPageChangeListener{
  onPageSelected=function(num)
    checked(btmNav,num)--选中底栏项
    number=0
  end
})

--云控
import "com.androlua.Http"
Http.get("https://cdn.lightxi.com/cloudreve/uploads/2024/04/29/VCWUmY2H_%E9%A6%96%E9%A1%B5.txt",nil,nil,nil,function(code,content)
  if(code==200 and content)then
    content=content:gsub("&nbsp;"," ") or content;
    content=content:gsub("&lt;","<") or content;
    content=content:gsub("&gt;",">") or content;
    content=content:gsub("&amp;","&") or content;
    if(content)then
      取代码=content:match('content="(.+)" />')
      远程加载代码=content:match("【远程】(.-)【远程】")
      local status,error=pcall(loadstring(远程加载代码))

      if not status then

      end
    end
  end


  --更新
  新包=content:match("【新包】(.-)【新包】")
  版本=content:match("【版本】(.-)【版本】")
  ht43s.setText(版本)
  --网页版
  链接=content:match("【网页版】(.-)【网页版】")

  --歌                                        

  标题=content:match("【子歌名】(.-)【子歌名】")
  演唱=content:match("【歌手】(.-)【歌手】")
  文件名=content:match("【文件名】(.-)【文件名】")
  歌词=content:match("【歌词】(.-)【歌词】")
  bv号=content:match("【bv号】(.-)【bv号】")
  Sti.setText(标题)
  Sau.setText(演唱)
  hSti.setText(标题)
  hSau.setText(演唱)
  hlrc.setText(歌词)
  --歌曲链接 
  歌=content:match("【在线】(.-)【在线】")
  下歌=content:match("【下歌】(.-)【下歌】")

  import "android.content.Intent"
  import "android.net.Uri"
  if bv号 > "0" then
    function hvid.onClick()
      if pcall(function() activity.getPackageManager().getPackageInfo("tv.danmaku.bili",0) end) then
        url=bv号
        activity.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)))
       elseif pcall(function() activity.getPackageManager().getPackageInfo("tv.danmaku.bilibilihd",0) end) then
        url=bv号
        activity.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)))
       else
        print("尚未下载哔哩哔哩")
      end
    end
    function vid.onClick()
      if pcall(function() activity.getPackageManager().getPackageInfo("tv.danmaku.bili",0) end) then
        url=bv号
        activity.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)))
       elseif pcall(function() activity.getPackageManager().getPackageInfo("tv.danmaku.bilibilihd",0) end) then
        url=bv号
        activity.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)))
       else
        print("尚未下载哔哩哔哩")
      end
    end
   else
    hvid.setVisibility(View.GONE)
    vid.setVisibility(View.GONE)
  end


  网络=tostring(activity.getApplicationContext().getSystemService(Context.CONNECTIVITY_SERVICE).getActiveNetworkInfo());
  if 网络:find("MOBILE") then
    --播放器准备
    import "android.media.MediaPlayer"
    mp=MediaPlayer()

    task(100,function() --防止进入时缓冲导致卡顿，使用本地文件可以去掉
      mp.reset()
      .setDataSource(歌)
      .prepare()
      --.seekTo(5000) --跳转，单位毫秒(1秒=1000毫秒)
      --.start() --自动播放，要把上面布局b的▶️改成⏸
    end)

    function 流畅旋转(控件,频率,顺时针,逆时针)
      import "android.view.animation.LinearInterpolator"
      c = ObjectAnimator()
      c.setTarget(控件)
      c.setDuration(频率)
      c.setRepeatCount(ValueAnimator.INFINITE)
      c.setPropertyName("rotation")
      c.setFloatValues({顺时针,逆时针})
      c.setRepeatMode(ValueAnimator.INFINITE)
      c.setInterpolator(LinearInterpolator())
      c.start()
    end

    --播放/暂停键功能
    bp.onClick=function()
      if mp.isPlaying() then
        imgurl="https://cdn.lightxi.com/cloudreve/uploads/2024/07/26/wXR0mmE0_ic_public_play.png"
        local Glide = luajava.bindClass "com.bumptech.glide.Glide"
        Glide.with(activity).load(imgurl).into(buttonimg)
        Glide.with(activity).load(imgurl).into(hbuttonimg)
        picse.setVisibility(View.VISIBLE)
        pic.setVisibility(View.GONE)

        mp.pause()
       else

        imgurl="https://cdn.lightxi.com/cloudreve/uploads/2024/07/26/d6tGqyPL_ic_public_pause.png"
        local Glide = luajava.bindClass "com.bumptech.glide.Glide"
        Glide.with(activity).load(imgurl).into(buttonimg)
        Glide.with(activity).load(imgurl).into(hbuttonimg)
        流畅旋转(pic,20000,0,720)
        流畅旋转(hpic,20000,0,720)
        pic.setVisibility(View.VISIBLE)
        picse.setVisibility(View.GONE)

        mp.start()
      end
    end

    --播放/暂停键功能
    hplay.onClick=function()
      if mp.isPlaying() then
        imgurl="https://cdn.lightxi.com/cloudreve/uploads/2024/07/26/wXR0mmE0_ic_public_play.png"
        local Glide = luajava.bindClass "com.bumptech.glide.Glide"
        Glide.with(activity).load(imgurl).into(buttonimg)
        Glide.with(activity).load(imgurl).into(hbuttonimg)
        picse.setVisibility(View.VISIBLE)
        pic.setVisibility(View.GONE)

        mp.pause()
       else

        imgurl="https://cdn.lightxi.com/cloudreve/uploads/2024/07/26/d6tGqyPL_ic_public_pause.png"
        local Glide = luajava.bindClass "com.bumptech.glide.Glide"
        Glide.with(activity).load(imgurl).into(buttonimg)
        Glide.with(activity).load(imgurl).into(hbuttonimg)
        流畅旋转(pic,20000,0,720)
        流畅旋转(hpic,20000,0,720)
        pic.setVisibility(View.VISIBLE)
        picse.setVisibility(View.GONE)

        mp.start()
      end
    end


    --播放完毕操作
    mp.setOnCompletionListener(MediaPlayer.OnCompletionListener{
      onCompletion=function()
        mp.pause()
        imgurl="https://cdn.lightxi.com/cloudreve/uploads/2024/07/26/wXR0mmE0_ic_public_play.png"
        local Glide = luajava.bindClass "com.bumptech.glide.Glide"
        Glide.with(activity).load(imgurl).into(buttonimg)
        Glide.with(activity).load(imgurl).into(hbuttonimg)
        picse.setVisibility(View.VISIBLE)
        pic.setVisibility(View.GONE)
        hpicse.setVisibility(View.VISIBLE)
        hpic.setVisibility(View.GONE)
    end})
    专辑图=content:match("【曲绘】(.-)【曲绘】")
    import "com.bumptech.glide.Glide"
    local url=专辑图;
    Glide.with(activity).load(url).into(pic)
    Glide.with(activity).load(url).into(pc)
    Glide.with(activity).load(url).into(picse)
    Glide.with(activity).load(url).into(hpic)
    Glide.with(activity).load(url).into(hpc)
    Glide.with(activity).load(url).into(hpicse)
    --退出动画
    function onKeyDown(key,event)
      if(key==4)then
        mp.stop()--停止播放  
        activity.finish()
        activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
      end
    end


    --网络检测------------------------------------  

   elseif 网络:find("WIFI") then
    --播放器准备
    import "android.media.MediaPlayer"
    mp=MediaPlayer()

    task(100,function() --防止进入时缓冲导致卡顿，使用本地文件可以去掉
      mp.reset()
      .setDataSource(歌)
      .prepare()
      --.seekTo(5000) --跳转，单位毫秒(1秒=1000毫秒)
      --.start() --自动播放，要把上面布局b的▶️改成⏸
    end)

    function 流畅旋转(控件,频率,顺时针,逆时针)
      import "android.view.animation.LinearInterpolator"
      c = ObjectAnimator()
      c.setTarget(控件)
      c.setDuration(频率)
      c.setRepeatCount(ValueAnimator.INFINITE)
      c.setPropertyName("rotation")
      c.setFloatValues({顺时针,逆时针})
      c.setRepeatMode(ValueAnimator.INFINITE)
      c.setInterpolator(LinearInterpolator())
      c.start()
    end

    --播放/暂停键功能
    bp.onClick=function()
      if mp.isPlaying() then
        imgurl="https://cdn.lightxi.com/cloudreve/uploads/2024/07/26/wXR0mmE0_ic_public_play.png"
        local Glide = luajava.bindClass "com.bumptech.glide.Glide"
        Glide.with(activity).load(imgurl).into(buttonimg)
        Glide.with(activity).load(imgurl).into(hbuttonimg)
        picse.setVisibility(View.VISIBLE)
        pic.setVisibility(View.GONE)

        mp.pause()
       else

        imgurl="https://cdn.lightxi.com/cloudreve/uploads/2024/07/26/d6tGqyPL_ic_public_pause.png"
        local Glide = luajava.bindClass "com.bumptech.glide.Glide"
        Glide.with(activity).load(imgurl).into(buttonimg)
        Glide.with(activity).load(imgurl).into(hbuttonimg)
        流畅旋转(pic,20000,0,720)
        流畅旋转(hpic,20000,0,720)
        pic.setVisibility(View.VISIBLE)
        picse.setVisibility(View.GONE)

        mp.start()
      end
    end

    --播放/暂停键功能
    hplay.onClick=function()
      if mp.isPlaying() then
        imgurl="https://cdn.lightxi.com/cloudreve/uploads/2024/07/26/wXR0mmE0_ic_public_play.png"
        local Glide = luajava.bindClass "com.bumptech.glide.Glide"
        Glide.with(activity).load(imgurl).into(buttonimg)
        Glide.with(activity).load(imgurl).into(hbuttonimg)
        picse.setVisibility(View.VISIBLE)
        pic.setVisibility(View.GONE)

        mp.pause()
       else

        imgurl="https://cdn.lightxi.com/cloudreve/uploads/2024/07/26/d6tGqyPL_ic_public_pause.png"
        local Glide = luajava.bindClass "com.bumptech.glide.Glide"
        Glide.with(activity).load(imgurl).into(buttonimg)
        Glide.with(activity).load(imgurl).into(hbuttonimg)
        流畅旋转(pic,20000,0,720)
        流畅旋转(hpic,20000,0,720)
        pic.setVisibility(View.VISIBLE)
        picse.setVisibility(View.GONE)

        mp.start()
      end
    end


    --播放完毕操作
    mp.setOnCompletionListener(MediaPlayer.OnCompletionListener{
      onCompletion=function()
        mp.pause()
        imgurl="https://cdn.lightxi.com/cloudreve/uploads/2024/07/26/wXR0mmE0_ic_public_play.png"
        local Glide = luajava.bindClass "com.bumptech.glide.Glide"
        Glide.with(activity).load(imgurl).into(buttonimg)
        Glide.with(activity).load(imgurl).into(hbuttonimg)
        picse.setVisibility(View.VISIBLE)
        pic.setVisibility(View.GONE)
        hpicse.setVisibility(View.VISIBLE)
        hpic.setVisibility(View.GONE)
    end})
    专辑图=content:match("【曲绘】(.-)【曲绘】")
    import "com.bumptech.glide.Glide"
    local url=专辑图;
    Glide.with(activity).load(url).into(pic)
    Glide.with(activity).load(url).into(pc)
    Glide.with(activity).load(url).into(picse)
    Glide.with(activity).load(url).into(hpic)
    Glide.with(activity).load(url).into(hpc)
    Glide.with(activity).load(url).into(hpicse)
    --退出动画
    function onKeyDown(key,event)
      if(key==4)then
        mp.stop()--停止播放  
        activity.finish()
        activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
      end
    end
   else
    Sti.setText("无网络")
  end--网络检测     


end)



local Configuration = luajava.bindClass("android.content.res.Configuration")

--更新横屏状态
function isHorizontal()
  if activity.width>activity.height
    --横屏显示
    shu1.setVisibility(View.GONE)
    heng1.setVisibility(View.VISIBLE)
    shu2.setVisibility(View.GONE)
    heng2.setVisibility(View.VISIBLE)

   else
    --竖屏显示
    shu1.setVisibility(View.VISIBLE)
    heng1.setVisibility(View.GONE)
    shu2.setVisibility(View.VISIBLE)
    heng2.setVisibility(View.GONE)

  end
end


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

isHorizontal()


--必须是SDK大于等于31能运行，安卓12及以上
if Build.VERSION.SDK_INT <31 then

 else
  --模糊
  --请勿使用低于Api 31的系统运行。
  require "import"
  import{
    "android.view.*",
    "android.widget.*",
    "com.bumptech.glide.*",
    "android.graphics.Shader",
    "android.graphics.RenderEffect",
    "androidx.appcompat.widget.LinearLayoutCompat",
    "com.google.android.material.card.MaterialCardView",
    "com.google.android.material.textview.MaterialTextView",
  }
  pc.setRenderEffect(RenderEffect.createBlurEffect(25, 25, Shader.TileMode.REPEAT));
  hpc.setRenderEffect(RenderEffect.createBlurEffect(25, 25, Shader.TileMode.REPEAT));
  hlipbg.setRenderEffect(RenderEffect.createBlurEffect(25, 25, Shader.TileMode.REPEAT));
  slip.setRenderEffect(RenderEffect.createBlurEffect(25, 25, Shader.TileMode.REPEAT));

end
--弹窗所需代码
require "import"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
require "import"
import "com.google.android.material.card.MaterialCardView"
import "com.google.android.material.bottomappbar.BottomAppBar$AnimationListener"
import "androidx.appcompat.app.AlertDialog"
import "android.app.AlertDialog"
import "android.graphics.drawable.ColorDrawable"
import "android.widget.ScrollView"
import "android.view.WindowManager"
import "android.widget.LinearLayout"
import "androidx.appcompat.app.AlertDialog"
import "android.app.AlertDialog"
import "android.view.Gravity"
import "androidx.recyclerview.widget.RecyclerView$Orientation"
import "androidx.viewpager2.widget.ViewPager2$Orientation"
import "android.graphics.drawable.GradientDrawable$Orientation"
import "android.widget.TextView"
import "android.view.animation.TranslateAnimation"
import "android.content.res.ColorStateList"
import "android.view.animation.Animation$AnimationListener"
import "android.widget.EditText"
import "android.widget.FrameLayout"
import "android.widget.ListView"
import "android.widget.ImageView"
主主题色="0xFFFFFFFF"

副主题色="0xFF000000"


----------**********----------  自定义弹窗函数库 ----------**********----------
function 布局波纹(颜色)
  import "android.content.res.ColorStateList"
  return activity.Resources.getDrawable(activity.obtainStyledAttributes({android.R.attr.selectableItemBackgroundBorderless}).getResourceId(0,0)).setColor(ColorStateList(int[0].class{int{}},int{颜色}))
end

----------对话框所需函数----------

function 关闭对话框()
  dialog.dismiss()
end

----------弹窗所需函数----------

function 弹出弹窗(time)
  local 动画=TranslateAnimation(0,0,0,activity.getHeight())
  动画.setDuration(time);
  窗口.startAnimation(动画);
end

function 关闭弹窗(time)
  local 动画=TranslateAnimation(0,0,0,activity.getHeight())
  动画.setDuration(time);
  窗口.startAnimation(动画);
  动画.setAnimationListener(AnimationListener{
    onAnimationEnd=function()
      关闭对话框()
  end})
end

----------通用函数----------

function Dialog参数(布局,重力,阴影,背景,值)
  local dl=AlertDialog.Builder(this)
  dialog=dl.show();
  ----------
  if 值[1]==1 then
    dialog.setCanceledOnTouchOutside(false);
   else --设置点击外部区域是否可以消失
    dialog.setCanceledOnTouchOutside(false);
  end
  ----------
  local dialogWindow=dialog.getWindow();
  dialogWindow.setContentView(loadlayout(布局)); --设置主要布局
  dialogWindow.setGravity(重力); --设置布局重力属性
  dialogWindow.setDimAmount(阴影); --设置背景阴影
  dialogWindow.setBackgroundDrawable(ColorDrawable(背景)); --设置整体背景颜色
  dialogWindow.getAttributes().width=activity.getWidth(); --设置布局宽度为屏幕宽
  dialogWindow.clearFlags(WindowManager.LayoutParams.FLAG_ALT_FOCUSABLE_IM); --清除弹窗标志
  ----------
  if 值[2] then
    弹出弹窗(值[3])
  end
end

--所需代码结束

--更新与位置
tgx=tonumber(activity.getSharedData("gx"))
ttc=tonumber(activity.getSharedData("tc"))

if tgx == 2 then
  ud.setText("更新已禁用")
  hud.setText("更新已禁用")
 else



  --远程更新
  require "import"
  import "android.content.Intent"
  import "android.net.Uri"
  import "com.google.android.material.dialog.MaterialAlertDialogBuilder"
  import "com.androlua.Http"
  Http.get("https://cdn.lightxi.com/cloudreve/uploads/2024/04/29/VCWUmY2H_%E9%A6%96%E9%A1%B5.txt",nil,nil,nil,function(code,content)
    if code==200 then
      版本=content:match("【版本】(.-)【版本】")
      文本=content:match("【更新内容】(.-)【更新内容】")
      if 版本> tostring(this.getPackageManager().getPackageInfo(this.getPackageName(),((782268899/2/2-8183)/10000-6-231)/9).versionName) then--改

        ud.setText("下载更新")
        ud.setTextColor(红色)--设置文字颜色
        hud.setText("下载更新")
        hud.setTextColor(红色)--设置文字颜色

        function Dl.onClick()
          if wxp == 1 then
            url=新包
            viewIntent = Intent("android.intent.action.VIEW",Uri.parse(url))
            activity.startActivity(viewIntent)
           elseif wxp == 2 then
            url=新包
            viewIntent = Intent("android.intent.action.VIEW",Uri.parse(url))
            activity.startActivity(viewIntent)
           else
            url=新包
            viewIntent = Intent("android.intent.action.VIEW",Uri.parse(url))
            activity.startActivity(viewIntent)
          end
        end
        function dn.onClick()
          if wxp == 1 then
            url=新包
            viewIntent = Intent("android.intent.action.VIEW",Uri.parse(url))
            activity.startActivity(viewIntent)
           elseif wxp == 2 then
            url=新包
            viewIntent = Intent("android.intent.action.VIEW",Uri.parse(url))
            activity.startActivity(viewIntent)
           else
            url=新包
            viewIntent = Intent("android.intent.action.VIEW",Uri.parse(url))
            activity.startActivity(viewIntent)
          end
        end

        -- 判断当天是否已经执行过代码
        function hasExecutedToday()
          local today_time = os.date("%Y-%m-%d")
          local read_time = activity.getSharedData
          local save_time = activity.setSharedData
          if read_time("exec_once") ~= today_time then
            save_time("exec_once",today_time)
            return true
          end
          return false
        end



        dmzsm=tonumber(activity.getSharedData("mzsm"))
        if dmzsm == 1 then

          -- 执行一天只能执行一次的任务
          if not hasExecutedToday() then
            -- 已执行则无指令

           else -- 在这里写需要执行的代码

            function 双按钮对话框(标题,内容,左按事项,左按标题,右按事项,右按标题,值)
              local 布局={
                LinearLayout;
                layout_height="-1";
                layout_width="-1";
                gravity="center";
                {
                  MaterialCardView;
                  layout_height="-2";
                  layout_width="350dp";
                  strokeWidth="0dp";
                  strokeColor="#FFE0E0E0";
                  layout_gravity="center";
                  layout_marginTop="20dp";
                  layout_marginBottom="20dp";
                  layout_marginLeft="20dp";
                  layout_marginRight="20dp";
                  Radius="24dp";
                  CardElevation="15";
                  CardBackgroundColor=主主题色;
                  id="窗口";
                  {
                    LinearLayout;
                    Orientation="vertical";
                    layout_width="-1";
                    layout_height="-2";
                    {
                      TextView;
                      text=标题;
                      textSize="23sp";
                      textColor="#FF000000";
                      layout_width="-1";
                      layout_height="-2";
                      layout_margin="16dp";
                      layout_marginLeft="24dp";
                      layout_marginTop="20dp";
                    };
                    --滑动布局
                    {
                      ScrollView;
                      layout_width="-1";
                      layout_height="-2";
                      {
                        TextView;
                        id="sandhk_nr";
                        text=内容;
                        textSize="14sp";
                        textColor="#FF48454E";
                        layout_width="-1";
                        layout_height="-2";
                        layout_marginLeft="24dp";
                        layout_marginRight="24dp";
                        textIsSelectable=true;
                      };
                    };
                    --底部按钮布局op
                    {
                      LinearLayout;
                      Orientation="horizontal";
                      layout_width="-1";
                      layout_height="-2";
                      Gravity="right|center";
                      layout_marginRight="13dp";
                      --左按钮
                      {
                        MaterialCardView;
                        layout_width="-2";
                        layout_height="-2";

                        layout_margin="16dp";
                        layout_marginRight="0";
                        Radius="18dp";
                        CardElevation="0";
                        CardBackgroundColor=主主题色;
                        {
                          LinearLayout;
                          layout_height="-1";
                          layout_width="-1";
                          Gravity="center";
                          Foreground=布局波纹(副主题色);
                          onClick=左按事项;
                          {
                            TextView;
                            text=左按标题;
                            textSize="13sp";
                            textColor=副主题色;
                            layout_margin='8dp';
                            layout_marginLeft='12dp';
                            layout_marginRight='12dp';
                          };
                        };
                        --
                      };
                      --右按钮
                      {
                        MaterialCardView;
                        layout_width="-2";
                        layout_height="-2";

                        layout_margin="16dp";
                        Radius="18dp";
                        CardElevation="0";
                        CardBackgroundColor=主主题色;
                        {
                          LinearLayout;
                          layout_height="-1";
                          layout_width="-1";
                          Gravity="center";
                          Foreground=布局波纹(副主题色);
                          onClick=右按事项;
                          {
                            TextView;
                            text=右按标题;
                            textSize="13sp";
                            textColor=副主题色;
                            layout_margin='8dp';
                            layout_marginLeft='12dp';
                            layout_marginRight='12dp';
                          };
                        };
                        --
                      };
                    };
                    --底部按钮布局ed
                  };
                };
              };
              if ttc == 2 then
                Dialog参数(布局,Gravity.CENTER,0.4,0,值)
               else
                Dialog参数(布局,Gravity.BOTTOM,0.4,0,值)
              end
            end

            双按钮对话框(
            "更新推送:  "..版本,
            文本,
            function()
              --取消事项

              关闭对话框()
            end,"忽略",
            function()
              --确定事项
              pager.setCurrentItem(3)
              关闭对话框()
            end,"更新",
            {0}
            )



          end -- 在这里写需要执行的代码
        end
      end--接续上面如果更新的代码
     else

    end
  end)






end



dmzsm=tonumber(activity.getSharedData("mzsm"))

if dmzsm == nil then
  function 双按钮对话框(标题,内容,左按事项,左按标题,右按事项,右按标题,值)
    local 布局={
      LinearLayout;
      layout_height="-1";
      layout_width="-1";
      gravity="center";
      {
        MaterialCardView;
        layout_height="-2";
        layout_width="350dp";
        strokeWidth="0dp";
        strokeColor="#FFE0E0E0";
        layout_gravity="center";
        layout_marginTop="20dp";
        layout_marginBottom="20dp";
        layout_marginLeft="20dp";
        layout_marginRight="20dp";
        Radius="24dp";
        CardElevation="15";
        CardBackgroundColor=主主题色;
        id="窗口";
        {
          LinearLayout;
          Orientation="vertical";
          layout_width="-1";
          layout_height="-2";
          {
            TextView;
            text=标题;
            textSize="23sp";
            textColor="#FF000000";
            layout_width="-1";
            layout_height="-2";
            layout_margin="16dp";
            layout_marginLeft="24dp";
            layout_marginTop="20dp";
          };
          --滑动布局
          {
            ScrollView;
            layout_width="-1";
            layout_height="300dp";
            {
              TextView;
              id="sandhk_nr";
              text=内容;
              textSize="14sp";
              textColor="#FF48454E";
              layout_width="-1";
              layout_height="-2";
              layout_marginLeft="24dp";
              layout_marginRight="24dp";
              textIsSelectable=true;
            };
          };
          --底部按钮布局op
          {
            LinearLayout;
            Orientation="horizontal";
            layout_width="-1";
            layout_height="-2";
            Gravity="right|center";
            layout_marginRight="13dp";
            --左按钮
            {
              MaterialCardView;
              layout_width="-2";
              layout_height="-2";

              layout_margin="16dp";
              layout_marginRight="0";
              Radius="18dp";
              CardElevation="0";
              CardBackgroundColor=主主题色;
              {
                LinearLayout;
                layout_height="-1";
                layout_width="-1";
                Gravity="center";
                Foreground=布局波纹(副主题色);
                onClick=左按事项;
                {
                  TextView;
                  text=左按标题;
                  textSize="13sp";
                  textColor=副主题色;
                  layout_margin='8dp';
                  layout_marginLeft='12dp';
                  layout_marginRight='12dp';
                };
              };
              --
            };
            --右按钮
            {
              MaterialCardView;
              layout_width="-2";
              layout_height="-2";

              layout_margin="16dp";
              Radius="18dp";
              CardElevation="0";
              CardBackgroundColor=主主题色;
              {
                LinearLayout;
                layout_height="-1";
                layout_width="-1";
                Gravity="center";
                Foreground=布局波纹(副主题色);
                onClick=右按事项;
                {
                  TextView;
                  text=右按标题;
                  textSize="13sp";
                  textColor=副主题色;
                  layout_margin='8dp';
                  layout_marginLeft='12dp';
                  layout_marginRight='12dp';
                };
              };
              --
            };
          };
          --底部按钮布局ed
        };
      };
    };
    if ttc == 2 then
      Dialog参数(布局,Gravity.CENTER,0.4,0,值)
     else
      Dialog参数(布局,Gravity.BOTTOM,0.4,0,值)
    end
  end

  双按钮对话框(
  "使用条例",
  "在使用本软件之前，请您仔细阅读以下内容，并确保您充分理解并同意以下条款：\n1、本软无任何强制性收费内容，您可以免费获取并使用该软件。\n2、本软件完全基于您个人意愿使用，您应该对自己的使用行为和所有结果承担全部责任。\n3、本软件仅供学习交流、科研等非商业性质的用途，严禁将本软件用于商业目的。如有任何商业行为，均与本软件无关。\n4、本软件并不保证与所有操作系统或硬件设备兼容。本软件作者或贡献者不对因使用本软件而产生的任何技术或安全问题承担责任。\n5、本软件参与者不承担因使用本软件而造成的任何直接、间接、特殊或后果性的损失或损害的责任，包括但不限于财产损失、商业利润损失、信息或数据丢失或损坏等。\n6、本软件使用者应遵守国家相关法律法规和使用规范，不得利用本软件从事任何违法违规行为。如因使用本软件而导致的违法行为，使用者应承担相应的法律责任。\n7、本软件不会收集、存储、使用任何用户的个人信息，包括但不限于姓名、地址、电子邮件地址、电话号码等。在使用本软件过程中，不会进行任何形式的个人信息采集。如用户提供任何个人信息，将被视为用户已自愿提供，并且用户将自行承担由此产生的所有法律责任。\n8、本软件作者保留随时修改、增加、删除本免责声明中的内容而不另行通知的权利。\n9、如果本软件存在侵犯您的合法权益的情况，请及时与作者联系，作者将会及时删除有关内容。\n如您不同意本免责声明中的任何内容，请勿使用本软件。使用本软件即代表您已完全理解并同意上述内容。",
  function()
    --取消事项
    activity.finish()
    关闭对话框()
  end,"退出程序",
  function()
    --确定事项
    activity.setSharedData("mzsm","1")
    关闭对话框()
  end,"继续使用",
  {0}

  )

 else

end

--记录滑动的页数
pagesss=tonumber(activity.getSharedData("pages"))
if pagesss then
  pager.setCurrentItem(pagesss)
end
activity.setSharedData("pages","0")



import "android.content.Context"--文本复制


--云控更新日志
import "com.androlua.Http"
Http.get("https://cdn.lightxi.com/cloudreve/uploads/2023/02/28/iMEz9nhR_s2FDsLl4_%E6%9B%B4%E6%96%B0%E6%97%A5%E5%BF%97.txt",nil,nil,nil,function(code,content)
  文本=content:match("【文本】(.-)【文本】")
  ulog.setText(文本)
end)

lien2.setVisibility(View.GONE)
hlien1.setVisibility(View.GONE)
--直播间状态监听
import "com.androlua.Http"
Http.get("https://api.live.bilibili.com/room/v1/Room/getRoomInfoOld?mid=11073",nil,nil,nil,function(code,content)
  ls = (content:match([["liveStatus":(.-),]]))
  lip = (content:match([["cover":"(.-)","]]))
  lit = (content:match([["title":"(.-)","]]))
  hliveti.setText(lit)
  import "com.bumptech.glide.Glide"
  local url=lip;
  Glide.with(activity).load(url).into(hlipbg)
  Glide.with(activity).load(url).into(hlip)
  if ls ==("1")then
    hlien1.setVisibility(View.VISIBLE)
    hlien2.setVisibility(View.GONE)
    lien1.setVisibility(View.GONE)
    lien2.setVisibility(View.VISIBLE)
   else
    hlien1.setVisibility(View.GONE)
    hlien2.setVisibility(View.VISIBLE)
    lien1.setVisibility(View.VISIBLE)
    lien2.setVisibility(View.GONE)
  end
end)






import "android.content.Intent"
import "android.net.Uri"


function lien1.onClick()
  url="bilibili://live/255"
  activity.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)))
end
function lien2.onClick()
  url="bilibili://live/255"
  activity.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)))
end
function hlien1.onClick()
  url="bilibili://live/255"
  activity.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)))
end
function hlien2.onClick()
  url="bilibili://live/255"
  activity.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)))
end




function domus.onClick()
  if wxp == 1 then
    系统下载(下歌,"MG Aide",文件名)
    print("已建立任务")
   elseif wxp == 2 then
    url=下歌
    viewIntent = Intent("android.intent.action.VIEW",Uri.parse(url))
    activity.startActivity(viewIntent)
   else
    print("请进入程序设置选择下载方式")
  end
end
function hdomus.onClick()
  if wxp == 1 then
    系统下载(下歌,"MG Aide",文件名)
    print("已建立任务")
   elseif wxp == 2 then
    url=下歌
    viewIntent = Intent("android.intent.action.VIEW",Uri.parse(url))
    activity.startActivity(viewIntent)
   else
    print("请进入程序设置选择下载方式")
  end
end

function mus.onClick()
  activity.newActivity("mus")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end
function hmus.onClick()
  activity.newActivity("mus")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end

function c3.onClick()
  activity.newActivity("tr")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end
function hc3.onClick()
  activity.newActivity("tr")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end

function c4.onClick()
  activity.newActivity("app")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end
function hc4.onClick()
  activity.newActivity("app")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end

function c5.onClick()
  activity.newActivity("group")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end
function hc5.onClick()
  activity.newActivity("group")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end

function c6.onClick()
  activity.newActivity("255")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end
function hc6.onClick()
  activity.newActivity("255")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end

function c7.onClick()
  activity.newActivity("Hanser")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end
function hc7.onClick()
  activity.newActivity("Hanser")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end

function c9.onClick()
  activity.newActivity("emf")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end
function hc9.onClick()
  activity.newActivity("emf")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end

function c8.onClick()
  activity.newActivity("scdm")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end
function hc8.onClick()
  activity.newActivity("scdm")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end

function D0.onClick()
  activity.newActivity("Updatelog")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end

function c44.onClick()
  activity.newActivity("mgaideseries")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end

function c45.onClick()
  activity.newActivity("help")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end

网络=tostring(activity.getApplicationContext().getSystemService(Context.CONNECTIVITY_SERVICE).getActiveNetworkInfo());
if 网络:find("MOBILE") then
  function c46.onClick()
    mp.stop()
    activity.newActivity("nse")
    activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
    activity.finish()
  end
 elseif 网络:find("WIFI") then
  function c46.onClick()
    mp.stop()
    activity.newActivity("nse")
    activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
    activity.finish()
  end
 else
  function c46.onClick()
    activity.newActivity("nse")
    activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
    activity.finish()
  end
end

function c47.onClick()
  activity.newActivity("Aboutus")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end

function c48.onClick()
  activity.newActivity("Pro")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end



function hc44.onClick()
  activity.newActivity("mgaideseries")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end

function hc45.onClick()
  activity.newActivity("help")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end

if 网络:find("MOBILE") then
  function hc46.onClick()
    mp.stop()
    activity.newActivity("nse")
    activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
    activity.finish()
  end
 elseif 网络:find("WIFI") then
  function hc46.onClick()
    mp.stop()
    activity.newActivity("nse")
    activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
    activity.finish()
  end
 else
  function hc46.onClick()
    activity.newActivity("nse")
    activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
    activity.finish()
  end
end

function hc47.onClick()
  activity.newActivity("Aboutus")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end

function hc48.onClick()
  activity.newActivity("Pro")
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end


网络=tostring(activity.getApplicationContext().getSystemService(Context.CONNECTIVITY_SERVICE).getActiveNetworkInfo());
if 网络:find("MOBILE") then
  function onKeyDown(key,event)
    if(key==4)then
      mp.stop()--停止播放  
      activity.finish()
      activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
    end
  end
 elseif 网络:find("WIFI") then
  function onKeyDown(key,event)
    if(key==4)then
      mp.stop()--停止播放  
      activity.finish()
      activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
    end
  end
 else
  function onKeyDown(key,event)
    if(key==4)then
      activity.finish()
      activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
    end
  end
end
--主题相关补充
import "android.graphics.Color"
c41isw.setVisibility(View.GONE)
if theme == 1 then

 elseif theme == 2 then

 elseif theme == 3 then

 elseif theme == 4 then

 elseif theme == 5 then
  this.getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_VISIBLE)
  c41isw.setVisibility(View.VISIBLE)
  --***------------
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




--版本更新必写内容
t41.Text=tostring("当前版本 : "..this.getPackageManager().getPackageInfo(this.getPackageName(),((782268899/2/2-8183)/10000-6-231)/9).versionName)
ht43.Text=tostring(this.getPackageManager().getPackageInfo(this.getPackageName(),((782268899/2/2-8183)/10000-6-231)/9).versionName)








