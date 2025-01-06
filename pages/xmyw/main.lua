require "import"
import "android.widget.ScrollView"
import "android.widget.LinearLayout"
import "android.widget.ImageView"
import "com.bumptech.glide.Glide"
import "com.bumptech.glide.request.target.SimpleTarget"

activity.setContentView(loadlayout{
  ScrollView;
  layout_width=-1;
  fillViewport=true;
  {
    LinearLayout;
    orientation=1;
    layout_width=-1;
    layout_height=-1;
    {
      ImageView;
      id="image";
      layout_width=-1;
    };
  };
})

import "android.view.View"


import "android.view.WindowManager"

--云控
import "com.androlua.Http"
Http.get("https://cdn.lightxi.com/cloudreve/uploads/2023/05/19/XUqYa6bx_%E5%8E%A6%E9%97%A8%E5%90%83%E7%9A%84.txt",nil,nil,nil,function(code,content)
  文本=content:match("【原文查看】(.-)【原文查看】")
  


Glide.with(activity)
.load(文本)
.into(SimpleTarget{
  onResourceReady=function(drawable,transition)
    image.post(function()
      local imageWidth=drawable.intrinsicWidth
      local imageHeight=drawable.intrinsicHeight
      local height=imageHeight/imageWidth*image.measuredWidth
      image.layoutParams.height=height
      image.imageDrawable=drawable
    end)
  end,
})


end)


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