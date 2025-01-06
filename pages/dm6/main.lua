
require "import"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
-- ****不需要请删除****
import "android.widget.TextView"
import "android.widget.ImageView"
import "androidx.cardview.widget.CardView"
import "android.widget.LinearLayout"
import "com.google.android.material.dialog.MaterialAlertDialogBuilder"
require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "android.graphics.Typeface"
import "androidx.viewpager.widget.ViewPager"
import "com.google.android.material.imageview.ShapeableImageView"
import "com.google.android.material.shape.RelativeCornerSize"
import "android.animation.LayoutTransition"


activity.setContentView(loadlayout("layout"))

import "android.graphics.drawable.ColorDrawable"
--UI由帕帝所写
--帕帝唯一QQ3373587110

弹出消息=print

function 获取浏览页(n)
  if n then
    return activity.uiManager.getPage(n)
   else
    return activity.uiManager.currentPage
  end
end

function 设置进度条颜色(color)
  this.uiManager.currentPage.webIndicator.color=color
end

function 获取浏览器()
  return 获取浏览页().webView
end

function 进入子页面(name,param)
  if(param~=nil)then
    activity.newActivity(name,param)
   else
    activity.newActivity(name)
  end
end


function 加载Js(str,callback)
  if not pcall(function()
      获取浏览器().evaluateJavascript(str,callback or function() end)
    end) then
    获取浏览器().loadUrl("javascript:"..str)
  end
end
--示例代码见监听浏览器事件

function 加载网页(url)
  获取浏览器().loadUrl(url)
end
--加载网页("https://wap.sogou.com/")

function 停止加载()
  获取浏览器().stopLoading()
end
--停止加载()

function 刷新网页()
  获取浏览器().reload()
end
--刷新网页()

function 网页前进()
  获取浏览器().goForward()
end
--网页前进()

function 网页后退()
  获取浏览器().goBack()
end
--网页后退()

function 返回网页顶部()
  获取浏览器().scrollTo(0,0)
end
--返回网页顶部()

function 退出页面()
  activity.finish()
end
function 退出程序()
  if activity.packageName == "net.fusion64j" then
    activity.finish()
  else
    System.exit(0)
  end
end
function 点击元素(Class名, 索引)
  if 索引 then
    加载Js("var element=document.getElementsByClassName(" .. Class名 .. ")[" .. 索引 .. "] if(typeof(element.onclick)=='undefined'){element.click()}else{element.onclick()}")
  else
    加载Js("var element=document.getElementsByClassName(" .. Class名 .. ")[0] if(typeof(element.onclick)=='undefined'){element.click()}else{element.onclick()}")
  end
end
function 返回网页顶部()
  加载Js("scrollTo(0,0)")
end
function 页内查找(str)
  获取浏览器().findAll(str)
end
function 获取当前UA()
  return 获取浏览器().getSettings().getUserAgentString()
end
function 执行Shell(code)
  os.execute(code)
end
function 清除浏览历史()
  获取浏览器().clearHistory()
end
function 获取网址()
  return 获取浏览器().getUrl()
end
local File=luajava.bindClass("java.io.File")
local Uri=luajava.bindClass("android.net.Uri")
local Intent=luajava.bindClass("android.content.Intent")
local xFileProvider=luajava.bindClass("androidx.core.content.FileProvider")
local Build=luajava.bindClass("android.os.Build")

function 安装APK(filePath)
  local intent = Intent(Intent.ACTION_VIEW);
  intent.addCategory("android.intent.category.DEFAULT");
  intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
  local uri = nil
  if (Build.VERSION.SDK_INT >=  24) then--24是N
    uri = xFileProvider.getUriForFile(activity, activity.getPackageName()..".FileProvider", File(filePath))
    intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
   else
    uri = Uri.fromFile(File(filePath))
  end
  intent.setDataAndType(uri, "application/vnd.android.package-archive");
  activity.startActivity(intent);
end
function 联系QQ(qqNUM)
  local s = "mqqwpa://im/chat?chat_type=wpa&uin=" .. qqNUM
  activity.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(s)))
end
function 加QQ群(qqNUM)
  local s = "mqqapi://card/show_pslcard?src_type=internal&version=1&uin=" .. qqNUM .. "&card_type=group&source=qrcode"
  activity.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(s)))
end
function 写入文本(path, str)
  File(path).parentFile.mkdirs()
  io.open(path, "w"):write(str):close()
end
function 读取文本(path)
  if File(path).isFile() then
    return (io.open(path):read("*a"))
  end
end

function 设置标题(title)
  activity.uiManager.toolbar.titleText=title
end

function 设置子标题(title)
  activity.uiManager.toolbar.subtitleText=title
end



--复制("文本")

function 分享文本(text)
  local ShareCompat=luajava.bindClass "androidx.core.app.ShareCompat"
  ShareCompat.IntentBuilder
  .from(activity)
  .setText(text)
  .setType("text/plain")
  .startChooser()
end

function 获取剪切板()
  if(Context==nil)then
    import "android.content.Context"
  end
  return activity.getSystemService(Context.CLIPBOARD_SERVICE).getText()
end

function 复制文本(a)
  if(Context==nil)then
    import "android.content.Context"
  end
  activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(a)
end


function 分享链接()
  分享文本(获取浏览器().url)
end

function 发送邮件(email,subject,content)
  import "android.content.Intent"
  i = Intent(Intent.ACTION_SEND)
  i.setType("message/rfc822")
  i.putExtra(Intent.EXTRA_EMAIL, {email})
  i.putExtra(Intent.EXTRA_SUBJECT,subject)
  i.putExtra(Intent.EXTRA_TEXT,content)
  activity.startActivity(Intent.createChooser(i, "Choice"))
end


local bindClass=luajava.bindClass
local AlertDialog=bindClass("android.app.AlertDialog")
local Builder=AlertDialog.Builder
local indexBuilderPool={}
function 对话框(ctx)
  local index=#indexBuilderPool+1
  local dialog=AlertDialog.Builder(ctx or activity or this)
  indexBuilderPool[index]=dialog
  local _M
  _M= {
    ["设置标题"]=function(...) dialog.setTitle(...) return _M end;
    ["设置消息"]=function(...) dialog.setMessage(...) return _M end;
    ["设置积极按钮"]=function(...)
      local args={...}
      if (#args==1) then
        dialog.setPositiveButton(args[1],nil)
       else
        dialog.setPositiveButton(...)
      end
      return _M end;
    ["设置消极按钮"]=function(...)
      local args={...}
      if (#args==1) then
        dialog.setNegativeButton(args[1],nil)
       else
        dialog.setNegativeButton(...)
      end
      return _M end;
    ["设置中立按钮"]=function(...)
      local args={...}
      if (#args==1) then
        dialog.setNeutralButton(args[1],nil)
       else
        dialog.setNeutralButton(...)
      end
      return _M end;
    ["显示"]=function(...)
      dialog=dialog.show(...)
      indexBuilderPool[index]=dialog
      return _M end;
    ["创建"]=function(...)
      dialog=dialog.create(...)
      indexBuilderPool[index]=dialog
      return _M end;
    ["取消"]=function(...) dialog.cancel(...) return _M end;
    ["关闭"]=function(...)
      dialog.dismiss(...)
      luajava.clear(indexBuilderPool[index])
      indexBuilderPool[index]=true
      return _M end;
    ["dismiss"]=function(...)
      dialog.dismiss(...)
      luajava.clear(indexBuilderPool[index])
      indexBuilderPool[index]=true
      return _M end;
    ["隐藏"]=function(...) dialog.hide(...) return _M end;
    ["设置按钮"]=function(...) dialog.setButton(...) return _M end;
    ["设置按钮1"]=function(...) dialog.setButton(...) return _M end;
    ["设置按钮2"]=function(...) dialog.setButton(...) return _M end;
    ["设置按钮3"]=function(...) dialog.setButton(...) return _M end;
    ["设置视图"]=function(...) dialog.setView(...) return _M end;
    ["设置图标"]=function(...) dialog.setIcon(...) return _M end;
    ["设置是否可以取消"]=function(...) dialog.setCancelable(...) return _M end;
    ["设置项目"]=function(...) dialog.setItems(...) return _M end;
    ["设置多选项目"]=function(...) dialog.setMultiChoiceItems(...) return _M end;
    ["设置取消监听器"]=function(...) dialog.setOnCancelListener(...) return _M end;
    ["设置关闭监听器"]=function(...) dialog.setOnDismissListener(...) return _M end;
    ["设置按键监听器"]=function(...) dialog.setOnKeyListener(...) return _M end;
    ["设置项目选择监听器"]=function(...) dialog.setOnItemSelectedListener(...) return _M end;
    ["启用测量时设置回收"]=function(...) dialog.setRecycleOnMeasureEnabled(...) return _M end;
    ["设置简单选择项目"]=function(...) dialog.setSingleChoiceItems(...) return _M end;
    ["设置自定义标题"]=function(...) dialog.setCustomTitle(...) return _M end;
    ["设置适配器"]=function(...) dialog.setAdapter(...) return _M end;
    ["设置光标"]=function(...) dialog.setCursor(...) return _M end;
    ["设置图标属性"]=function(...) dialog.setIconAttribute(...) return _M end;
    ["设置背景强制反向"]=function(...) dialog.setInverseBackgroundForced(...) return _M end;
    ["获得按钮"]=function(...) dialog.getButton(...) return _M end;
    ["获得列表视图"]=function(...) dialog.getListView(...) return _M end;
    ["当键按下时"]=function(...) dialog.onKeyDown(...) return _M end;
    ["当键抬起时"]=function(...) dialog.onKeyUp(...) return _M end;
    ["添加内容视图"]=function(...) dialog.addContentView(...) return _M end;
    ["设置内容视图"]=function(...) dialog.setContentView(...) return _M end;
    ["关闭选项菜单"]=function(...) dialog.closeOptionsMenu(...) return _M end;
    ["是否正在显示"]=function(...) dialog.isShowing(...) return _M end;
    ["获得窗口"]=function(...) dialog.getWindow(...) return _M end;
    ["设置能否在点击外部后取消"]=function(...) dialog.setCanceledOnTouchOutside(...) return _M end;
    ["设置取消消息"]=function(...) dialog.setCancelMessage(...) return _M end;
  }
  setmetatable(_M,{
    ["__index"]=function(_M,method,...)
      _M[method]=function(...)
        local ok,arg=pcall(function()return _System.getField(method)end)
        if ok then
          _M[method]= arg.get(dialog)
         else
          dialog[method](...)
        end
        return _M
      end
      return _M[method]
    end
  })
  return _M
end
function 泡沫对话框(ctxOrnum,num)
  if num==nil then
    num=ctxOrnum
    ctxOrnum=nil
  end
  local token="|"..tostring(tointeger(num))
  local OneTimeDialogMark=activity.getSharedData("ONE-TIME-DIALOG-MARK")
  if OneTimeDialogMark==nil then
    OneTimeDialogMark="|"
    activity.setSharedData("ONE-TIME-DIALOG-MARK",OneTimeDialogMark)
  end
  if OneTimeDialogMark:find(token,0,true) then
    local _M={}
    setmetatable(_M,{
      ["__index"]=function(_M,method,...)
        _M[method]=function(...) return _M end
        return _M[method]
      end
    })
    return _M
  end
  OneTimeDialogMark=OneTimeDialogMark..token
  local basedialog=对话框(ctxOrnum)
  local func1=basedialog["显示"]
  local func2=basedialog["show"]
  basedialog["显示"]=function(...)
    func1(...)
    activity.setSharedData("ONE-TIME-DIALOG-MARK",OneTimeDialogMark)
  end
  basedialog["show"]=function(...)
    func2(...)
    activity.setSharedData("ONE-TIME-DIALOG-MARK",OneTimeDialogMark)
  end
  return basedialog
end

local drawerlistfunc={}
local menuitemfunc={}
local drawerlistListener
local searchUrl

function onDrawerListItemClick(data, recyclerView, listIndex, itemIndex)
  local listData = data.get(listIndex);
  local itemData = listData.get(itemIndex);
  local itemTitle = itemData.getTitle();
  if(drawerlistfunc[itemTitle]~=nil)then
    drawerlistfunc[itemTitle](itemData,itemTitle)
  end
  if drawerlistListener~=nil then
    drawerlistListener(itemData,itemTitle)
  end
end

function onMenuItemClick(title)
  local fun=menuitemfunc[title]
  if fun~=nil then
    fun(title)
  end
end

function onSearchEvent(keyword)
  if(searchUrl~=nil)then
    activity.uiManager.currentPage.webView.loadUrl(String.format(searchUrl,{keyword}))
  end
end

function 设置应用栏菜单项点击事件(title,func)
  menuitemfunc[title]=func
end

function 设置侧滑栏头像点击事件(func)
  activity.uiManager.drawerHeaderAvatarImageView.onClick=func
end

function 设置侧滑栏列表点击事件(title,func)
  drawerlistfunc[title]=func
end

function 监听侧滑栏列表点击事件(func)
  drawerlistListener=func
end

function 设置搜索Url(url)
  searchUrl=url
end

activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION)--导航栏透明沉浸
function 状态栏颜色(a)
  if Build.VERSION.SDK_INT >= 21 then
    activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(a);
  end
end

function 自定义圆角(控件,颜色,圆角1,圆角2,圆角3,圆角4)
  import "android.graphics.drawable.GradientDrawable"
  drawable = GradientDrawable()
  drawable.setShape(GradientDrawable.RECTANGLE)
  drawable.setColor(颜色)
  drawable.setCornerRadii({圆角1,圆角1,圆角2,圆角2,圆角3,圆角3,圆角4,圆角4})
  控件.setBackgroundDrawable(drawable)
end

function 控件隐藏(控件ID)
控件ID.setVisibility(View.GONE)
end

function 控件显示(控件ID)
控件ID.setVisibility(View.VISIBLE)
end

function 缩放动画(控件)
import "android.view.animation.*"
控件.startAnimation(ScaleAnimation(0.0,1.0,0.0,1.0,1,0.5,1,0.5).setDuration(200))
end



function 线性背景颜色(id,颜色)
  import "android.graphics.drawable.ColorDrawable"
  id.setBackgroundDrawable(ColorDrawable(颜色))
end










状态栏颜色(0x1FFFFFF)

--隐藏状态栏
import "android.view.WindowManager"
activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)

--春节主题
if File("sdcard/MG Aide/NewYear.txt").exists() then
  --文件存在事件
--背景与状态栏
  线性背景颜色(page1,0xFFBF3545)
  
 else File("/sdcard/MG Aide").mkdir()--不存在 则创建

end

--夜间主题
if File("sdcard/MG Aide/Black.txt").exists() then
  --文件存在事件
--背景与状态栏
  线性背景颜色(page1,0xFF000000)
  
 else File("/sdcard/MG Aide").mkdir()--不存在 则创建

end

--鸭鸭主题
if File("sdcard/MG Aide/Bronya.txt").exists() then
  --文件存在事件
--背景与状态栏
  线性背景颜色(page1,0xFF495062)

 else File("/sdcard/MG Aide").mkdir()--不存在 则创建

end

--白百合主题
if File("sdcard/MG Aide/Whitelilies.txt").exists() then
  --文件存在事件
--背景与状态栏
  线性背景颜色(page1,0xFFF0EFFD)

 else File("/sdcard/MG Aide").mkdir()--不存在 则创建

end










--横屏适配
pcall(function()
  local window=activity.getWindow()
  window.addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS).addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION)
  --设置导航栏状态栏沉浸
  window.getAttributes().layoutInDisplayCutoutMode=1
  --去横屏黑条
  uiManager.toolbar.setPadding(0,95,0,0)
  --调整状态栏导航栏沉浸后的顶栏
end)


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
