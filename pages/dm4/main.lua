--
-- @author 寒歌
-- @description Main是应用的主模块，其中注册了应用运行中UI事件的回调、Activity生命周期的回调等
-- 你也可以在此编写启动事件代码，或控制应用运行逻辑、自定义应用UI等等。
-- @other 本模版已为你编写好基础事件，建议在阅读注释并理解相关参数意义后再进行扩展编写
--

-- ****默认导入包****
require "import"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
-- ****不需要请删除****
layout=
{
  LinearLayout,
  orientation="vertical",
  layout_width="fill",
  gravity="center",
  layout_height="fill",
  background='#FF000000';--布局背景颜色
  {
    TextView,
    text="ㄟ小天使 /",
    layout_width="fill",
    textSize='250sp';--文字大小
    TextColor="#ffffffff";
    id="tv";
  },
}

activity.setContentView(loadlayout(layout))
function timerTask(scrollX)
  local scrollX = tv.getScrollX() +4 -- 每次移动1个像素
if scrollX-activity.getWidth() > 1000 then
    scrollX = -tv.getWidth()
  end
  tv.scrollTo(scrollX,0)
end
tv.setSingleLine(true)

--定时器刷新频率
ti=Ticker()
ti.Period=2
ti.onTick=function()
  timerTask()
end
--启动Ticker定时器
ti.start()

--[[
   这种方式其实挺蠢的
   如果有mart的库还是用mart吧 
   没库的话  倒是也能用
   销毁和创建自己写吧 有点懒
   ]]
--横屏
activity.setRequestedOrientation(0);
import "android.view.View"
import "android.view.WindowManager"

function 全屏()
  window = activity.getWindow();
  window.getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_FULLSCREEN|View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN);
  window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
  xpcall(function()
    lp = window.getAttributes();
    lp.layoutInDisplayCutoutMode = WindowManager.LayoutParams.LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES;
    window.setAttributes(lp);
  end,
  function(e)
  end)
end
--使用该代码可能需要隐藏ActionBar

--调用示例
全屏()
--配置屏幕状态
  pcall(function()
--获取状态栏
  local window=activity.getWindow()
--适配屏幕
  window.getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_HIDE_NAVIGATION)
  window.addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS).addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION)
--去除空白 (删除状态栏后 Android11+)
  window.getAttributes().layoutInDisplayCutoutMode=1
--删除状态栏
  window.setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);
  end)

import "androidx.activity.R$id"
import "androidx.appcompat.R$id"
import "androidx.appcompat.resources.R$id"
import "androidx.asynclayoutinflater.R$id"
import "androidx.constraintlayout.widget.R$id"
import "androidx.coordinatorlayout.R$id"
import "androidx.core.R$id"
import "androidx.customview.R$id"
import "androidx.drawerlayout.R$id"
import "androidx.fragment.R$id"
import "androidx.legacy.coreui.R$id"
import "androidx.legacy.coreutils.R$id"
import "androidx.legacy.v4.R$id"
import "androidx.lifecycle.extensions.R$id"
import "androidx.loader.R$id"
import "androidx.media.R$id"
import "androidx.recyclerview.R$id"
import "androidx.swiperefreshlayout.R$id"
import "androidx.vectordrawable.R$id"
import "androidx.slidingpanelayout.R$id"
import "androidx.transition.R$id"
import "androidx.vectordrawable.animated.R$id"
import "androidx.viewpager2.R$id"
import "androidx.webkit.R$id"
import "com.google.android.material.R$id"
import "android.R$id"
import "net.fusion64j.core.R$id"
import "com.bumptech.glide.R$id"
import "androidx.viewpager.R$id"
import "android.graphics.drawable.ColorDrawable"

--导航栏透明沉浸
activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION)

activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
   
import "android.view.View"
import "com.androlua.Ticker"
import "android.widget.LinearLayout"
import "android.view.WindowManager"
import "android.widget.TextView"   
--r
if activity.getPackageName()=="net.fusion64j" then
  R=luajava.bindClass "net.fusion64j.R"
 else
  R=luajava.bindClass "net.fusion64j.core.R"
end

--退出动画
function onKeyDown(key,event)
  if(key==4)then
    activity.finish()
    --下面代码的参数(1,2)就是和跳转进入代码相反(2,1)
    activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
  end
end   
   