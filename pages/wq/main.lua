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

-- @param data 侧滑栏列表的全部数据
-- @param recyclerView 侧滑栏列表控件
-- @param listIndex 点击的列表索引（点击的是第几个列表）
-- @param clickIndex 点击的项目索引（点击的第几个项目）
function onDrawerListItemClick(data, recyclerView, listIndex, itemIndex)
    --侧滑栏列表的数据是二维结构，所以需要先获取到点击项目所在列表的数据
    local listData = data.get(listIndex);
    --获取到所在列表的数据后获取点击项目的数据
    local itemData = listData.get(itemIndex);
    --最后获取到点击的项目的标题
    local itemTitle = itemData.getTitle();
    
    --TODO ：onDrawerListItemClick
    
end

-- @param keyword 搜索栏输入的文本
-- @description 顶栏搜索功能回调事件
function onSearchEvent(keyword)
    --TODO：onSearchEvent
    
end

-- @param title 点击的菜单标题
-- @description 顶栏菜单项目点击回调事件
function onMenuItemClick(title)
   --TODO：onMenuItemClick

end

--悬浮按钮点击事件
function onFloatingActionButtonClick(v)
  --TODO：onFloatingActionButtonClick

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

function onMenuItemClick(back)
  activity.finish()
  activity.overridePendingTransition(R.anim.fragment_open_enter,R.anim.fragment_close_exit)
end