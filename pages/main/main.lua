
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


require"import"
import "android.os.Build"
--必须是SDK大于等于31能运行，安卓12及以上


require"import"
material={"animation","appbar","badge","behavior","bottomappbar","bottomnavigation","bottomsheet","button","canvas","card","checkbox","chip","circularreveal","color","datepicker","dialog","divider","drawable","elevation","expandable","floatingactionbutton","imageview","internal","math","navigation","radiobutton","resources","ripple","shadow","shape","slider","snackbar","stateful","switchmaterial","tabs","textfield","textview","theme","timepicker","tooltip","transformation","transition",}
local path="com.google.android.material."
import (path.."*")
for _,v in pairs(material) do
  import(path..v..".*")
end



theme=tonumber(activity.getSharedData("the"))


--颜色
背景色=0xFFF6F2EF
文字色=0xFF032107
字体黑色=0xFF000000
字体白色=0xFFFFFFFF
浅色=0xFFFFE28B
深色=0xFFFFB86A


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
  gravity="center",
  {
    ShapeableImageView,
    scaleType="centerCrop",
    layout_width="120dp",
    layout_height="120dp",
    src="i.png",
    elevation='0dp';--阴影
    layout_gravity='center';--重
    id="f1";
  },
  {
    ShapeableImageView,
    scaleType="centerCrop",
    layout_width="120dp",
    layout_height="120dp",
    src="i2.png",
    elevation='0dp';--阴影
    layout_gravity='center';--重
    id="y1";
  },
  {
    ShapeableImageView,
    scaleType="centerCrop",
    layout_width="120dp",
    layout_height="120dp",
    src="i3.png",
    elevation='0dp';--阴影
    layout_gravity='center';--重
    id="z1";
  },
  {
    ShapeableImageView,
    scaleType="centerCrop",
    layout_width="120dp",
    layout_height="120dp",
    src="i4.png",
    elevation='0dp';--阴影
    layout_gravity='center';--重
    id="z2";
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



dmzsm=tonumber(activity.getSharedData("mzsm"))





if dmzsm == nil then
  --初始化设置 
  activity.setSharedData("the","1")
  activity.setSharedData("op","1")
  activity.setSharedData("wp","1")
  activity.setSharedData("wx","1")
  activity.setSharedData("gx","1")
  activity.setSharedData("tc","1")
  activity.setSharedData("fk","1")

  tgx=tonumber(activity.getSharedData("gx"))
  ttc=tonumber(activity.getSharedData("tc"))
  theme=tonumber(activity.getSharedData("the"))
  openpage=tonumber(activity.getSharedData("op"))


end
tgx=tonumber(activity.getSharedData("gx"))
ttc=tonumber(activity.getSharedData("tc"))
theme=tonumber(activity.getSharedData("the"))
openpage=tonumber(activity.getSharedData("op"))

f1.setVisibility(View.GONE)
y1.setVisibility(View.GONE)
z1.setVisibility(View.GONE)
z2.setVisibility(View.GONE)

if openpage == 1 then
  task(100,function()
    f1.setVisibility(View.VISIBLE)

  end)
 elseif openpage == 2 then
  task(100,function()
    y1.setVisibility(View.VISIBLE)

  end)

end






task(800,function()--1000毫秒=1秒
  activity.newActivity("A")
  activity.overridePendingTransition(android.R.anim.fade_in,android.R.anim.fade_out)
  activity.finish()
end)




--只是将androlua的快捷方式改成了fusion64j2适用的

require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "android.net.Uri"
import "android.content.ComponentName"
import "android.content.Intent"
import "android.content.pm.ShortcutInfo"
import "java.util.ArrayList"
import "android.graphics.drawable.Icon"


--获取/images/的路径
function imgpath(t)
  return activity.loader.getImagesDir(t)
end

--new一个fusion64j2的intent用于快捷方式
function NewfusIntent(path)--传入你要启动的页面
  --创建fusion64j2的intent
  intent0= activity.getIntent(this, activity.getLoader().getProjectDir().getAbsolutePath(), path);
  --设置action的main属性
  intent0.setAction(Intent.ACTION_MAIN);
  --ComponentName设置应用之间跳转      包名(这里直接获取程序包名),   包名+类名(fusion64j2是这个)
  intent0.setComponent(ComponentName(activity.getPackageName(),"net.fusion64j.core.FusionActivity"));
  --貌似只能在main/main.lua里使用，默认先跳转到那里
  intent0.setData(Uri.parse("num1"));
  return intent0
end


if Build.VERSION.SDK_INT >= 25 then

  --new一个intent，参数是页面名称
  intent1=NewfusIntent("audio")

  intent2=NewfusIntent("scdm")

  intent3=NewfusIntent("tr")



  --id,快捷方式名字,快捷方式被点击后执行的intent,快捷方式的图标地址
  SHORTCUT_TABLE={
    {"ID1","新歌试听",intent1,imgpath("t1.png")},
    {"ID2","手持弹幕",intent2,imgpath("t2.png")},
    {"ID3","最新同人",intent3,imgpath("t3.png")},

  }

  --动态的Shortcut,获取ShortcutManager,快捷方式管理器
  --提供了添加,移除,更新,禁用,启动,获取静态快捷方式,获取动态快捷方式,获取固定在桌面的快捷方式等方法
  scm = activity.getSystemService(activity.SHORTCUT_SERVICE);

  --循环添加到对象ArrayList
  infos = ArrayList();
  for k,v in pairs(SHORTCUT_TABLE) do
    si = ShortcutInfo.Builder(this,v[1])
    --设置图标
    .setIcon(Icon.createWithBitmap(loadbitmap(v[4])))
    --快捷方式添加到桌面显示的标签文本
    .setShortLabel(v[2])
    --长按图标快捷方式显示的标签文本(既快捷方式名字)
    .setLongLabel(v[2])
    .setIntent(v[3])
    .build();
    infos.add(si);
  end

  --添加快捷方式
  scm.setDynamicShortcuts(infos);

  --移除快捷方式
  --scm.removeDynamicShortcuts(infos);


  --要用着main/main.lua里，这里没有用
  --Intent回调设置点击事件
  function onNewIntent(intent)
    --获得传递过来的数据并转化为字符串
    local uriString = tostring(intent.getData())
    --给每个Intent项目对应Data赋予点击事件
    if "num1"==uriString then
      print"num1"
     elseif "num2"==uriString then
      print"num2"
     elseif "num3"==uriString then
      print"num3"
    end
  end
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
