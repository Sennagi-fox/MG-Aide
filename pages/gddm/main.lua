--均取自代码手册，粗糙地融合了一下

--5.29完善了代码，添加了屏幕常亮

require "import"
import "android.os.*"
import "android.widget.*"
import "android.view.*"


--颜色
背景色=0xFFF6F2EF
文字色=0xFF0321078
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
ttc=tonumber(activity.getSharedData("tc"))


--均取自代码手册，粗糙地融合了一下

--5.29完善了代码，添加了屏幕常亮
--6.8融入了代码手册里的MeLua

require "import"
import "android.os.*"
import "android.widget.*"
import "android.view.*"

local MeLua = {
  enabled = true,
  tabs = {},
  NIL = {},
  canOmitThis = false,
}

local registry = debug.getregistry()
local JOMT = registry.JavaObject

local get = JOMT.__index
local set = JOMT.__newindex
MeLua.get = get
MeLua.set = set

JOMT.__index = function(self, key)
  if MeLua.enabled then
    local tab = MeLua.tabs[self]
    if tab ~= nil then
      local value = tab[key]
      if value ~= nil then
        if value == MeLua.NIL then
          return nil
        end
        return value
      end
    end
  end
  return get(self, key)
end

JOMT.__newindex = function(self, key, value)
  if MeLua.enabled then
    local tab = MeLua.tabs[self]
    if tab ~= nil and tab[key] ~= nil then
      if value == nil then
        value = MeLua.NIL
      end
      tab[key] = value
      return
    end
  end
  set(self, key, value)
end

local function setfenv(func, obj, tab)
  local env = setmetatable({}, {
    __index = function(_, key)
      local value, success
      if tab and tab[key] ~= nil then
        return tab[key]
      end
      if MeLua.canOmitThis then
        pcall(function()
          value = obj[key]
          success = true
        end)
      end
      if success then return value end
      return _ENV[key]
    end,
    __newindex = function(_, key, value)
      local success
      if MeLua.canOmitThis then
        pcall(function()
          obj[key] = value
          success = true
        end)
      end
      if success then return end
      _ENV[key] = value
    end,
  })
  local f = load(string.dump(func), nil, nil, env)
  local i = 2
  while true do
    local name = debug.getupvalue(func, i)
    if name == nil then break end
    if name == "this" and tab.this ~= nil then
      debug.setupvalue(f, i, tab.this)
     elseif name == "super" and tab.super ~= nil then
      debug.setupvalue(f, i, tab.super)
     else
      debug.upvaluejoin(f, i, func, i)
    end
    i = i + 1
  end
  return function(...)
    local status, ret = pcall(f, ...)
    if status == false then error(ret) end
    return ret
  end
end

function MeLua:with(obj)
  self.obj = obj
  self.tab = self.tabs[obj] or {}
  return self
end

function MeLua:add(key, value)
  if value == nil then
    value = self.NIL
  end
  self.tab[key] = value
  return self
end

function MeLua:method(name, func)
  local obj = self.obj
  self.tab[name] = setfenv(func, obj, {this = obj})
  return self
end

function MeLua:override(name, func)
  local obj = self.obj
  self.tab[name] = setfenv(func, obj, {this = obj, super = get(obj, name)})
  return self
end

function MeLua:build()
  self.tabs[self.obj] = self.tab
  self.obj = nil
  self.tab = nil
end

function MeLua:class(cls, constructor, init)
  return setmetatable({}, {
    __type = function(_)
      return "userdata"
    end,
    __index = function(_, key)
      return cls[key]
    end,
    __newindex = function(_, key, value)
      cls[key] = value
    end,
    __call = function(_, ...)
      local obj
      if constructor ~= nil then
        obj = setfenv(constructor, nil, {super = cls})(...)
       else
        obj = cls(...)
      end
      if init ~= nil then
        init(obj)
      end
      return obj
    end,
  })
end

--return MeLua



local ColorStateList = luajava.bindClass("android.content.res.ColorStateList")
local ContextThemeWrapper = luajava.bindClass("androidx.appcompat.view.ContextThemeWrapper")
local TextInputLayout = luajava.bindClass("com.google.android.material.textfield.TextInputLayout")
local TextInputEditText = luajava.bindClass("com.google.android.material.textfield.TextInputEditText")
local MDC_R = luajava.bindClass("com.google.android.material.R")

MeLua.canOmitThis = true

local OutlinedInputLayout = MeLua:class(TextInputLayout, function(context, attrs, defStyle)
  context = context or activity
  defStyle = defStyle or MDC_R.style.Widget_MaterialComponents_TextInputLayout_OutlinedBox
  return super(ContextThemeWrapper(context, defStyle), attrs, defStyle)
  .setBoxBackgroundMode(super.BOX_BACKGROUND_OUTLINE)
end, function(view)
  MeLua:with(view)
  :add("boxCornerRadius", 0)
  :method("getBoxCornerRadius", function()
    return boxCornerRadius
  end)
  :method("setBoxCornerRadius", function(radius)
    boxCornerRadius = radius
    return setBoxCornerRadii(radius, radius, radius, radius)
  end)
  :override("setHintTextColor", function(color)
    return super(ColorStateList.valueOf(color))
  end)
  :build()
end)

local DenseOutlinedInputLayout = MeLua:class(OutlinedInputLayout, function(context, attrs, defStyle)
  return super(context, attrs, MDC_R.style.Widget_MaterialComponents_TextInputLayout_OutlinedBox_Dense)
end)

local OutlinedInputContext = OutlinedInputLayout().context
local OutlinedInput = MeLua:class(TextInputEditText, function()
  return super(OutlinedInputContext)
end)

local DenseOutlinedInputContext = DenseOutlinedInputLayout().context
local DenseOutlinedInput = MeLua:class(TextInputEditText, function()
  return super(DenseOutlinedInputContext)
end)



local loadlayout = require "loadlayout"
local LinearLayout = luajava.bindClass("android.widget.LinearLayout")
local colors = activity.uiManager.colors

activity.setContentView(loadlayout{
  LinearLayout,
  layout_width="match",
  layout_height="match",
  gravity="center",
  backgroundColor=colors.windowBackground,
  {
    DenseOutlinedInputLayout,
    id="inputLayout",
    hint="输入内容",
    layout_width="match",
    padding="16dp",
    boxCornerRadius="6dp",
    hintTextColor=colors.textColorPrimary,
    {
      DenseOutlinedInput,
      id="DInput",
      layout_width="match",
      singleLine=true,
    },
  },
})




--输入法回车键确定事件
import"android.graphics.Paint"
DInput.setOnKeyListener({
  onKey=function(v,keyCode,event)
    if (KeyEvent.KEYCODE_ENTER == keyCode and KeyEvent.ACTION_DOWN == event.getAction()) then
      if DInput.Text=="" then
        print("无效字符")
       else           


       
       activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
       字数 = utf8.len(DInput.Text)
              
        
       
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

双按钮对话框
("选择弹幕形式","较长的话也可以试试静态~",
function() --取消事项 关闭对话框() 
关闭对话框()
  layout=
        {
          LinearLayout,
          orientation="vertical",
          layout_width="fill",
          gravity="center",
          layout_height="fill",
          background='#FF000000';--布局背景
          {
            TextView,
            text=DInput.Text,
            layout_gravity="center";
            gravity="center",
            layout_width="fill",
            textSize='160sp';--文字大小
            TextColor="#ffffffff";    
            id="tv";
          },
        }

        activity.setContentView(loadlayout(layout))
        activity.setRequestedOrientation(0)--横屏0--竖屏1
end,"静态",
function()--确定事项
关闭对话框()
   layout=
        {
          LinearLayout,
          orientation="vertical",
          layout_width="fill",
          gravity="center",
          layout_height="fill",
          background='#FF000000';--布局背景
          {
            TextView,
            text=DInput.Text,
            layout_gravity="center";
            layout_width="fill",
            textSize='230sp';--文字大小
            TextColor="#ffffffff";    
            id="tv";
          },
        }

        activity.setContentView(loadlayout(layout))
        function timerTask(scrollX)
        local scrollX = tv.getScrollX() +6 -- 每次移动1个像素
        if scrollX-activity.getWidth() > 564*字数 then
        scrollX = -tv.getWidth()
        end
        tv.scrollTo(scrollX,0)
        end
        tv.setSingleLine(true)

        --定时器刷新频率
        ti=Ticker()
        ti.Period=3
        ti.onTick=function()
        timerTask()
        end
        --启动Ticker定时器
        ti.start()
        activity.setRequestedOrientation(0)--横屏0--竖屏1
 
关闭对话框()
end,"动态",
{0}
)


 
 

   
      end




      return true;
     else
      return false;
    end
  end
})



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
    --下面代码的参数(1,2)就是和跳转复制代码相反(2,1)
    activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
  end
end


      




    
   

  








