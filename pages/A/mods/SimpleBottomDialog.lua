--[[**
 * @Name: SimpleBottomDialog.lua
 * @Date: 2021-04-27 07:51:12
 * @Description: No special instructions
 *
**]]
require "import"

local base={}

local dialogs={}

base.setContentView=function(self,view)
  self.view=view
  dialogs[view.id]=self
  local mBottomSheetDialog = BottomSheetDialog(activity,0);
  self.mBottomSheetDialog=mBottomSheetDialog
  return self
end


base.get=function(view)
  
  return dialogs[view.id]
end

base.dismiss=function(self)
  pcall(function()
    self.mBottomSheetDialog.dismiss()
    dialogs[self.view.id]=nil
    luajava.clear(self.mBottomSheetDialog)
    table.clear(self)
  end)
end



base.setBottomSheetCallback=function(self,callback)
  self.bottomSheetCallback=callback
  return self
end


base.setPeekHeight=function(self,peekHeight)
  self.peekHeight=peekHeight
end

base.setOnDismissListener=function(self,a)
  self.mBottomSheetDialog.setOnDismissListener{
    onDismiss=function(...)
      a.onDismiss(...)
      pcall(function()
        self.mBottomSheetDialog.dismiss()
        dialogs[self.view.id]=nil
        luajava.clear(self.mBottomSheetDialog)
        table.clear(self)
      end)
    end
  }
  return self
end

base.new=function(self)
  return table.clone(self)
end

base.show=function(self)
  local mBottomSheetDialog = self.mBottomSheetDialog

  mBottomSheetDialog.setContentView(self.view)
  mBottomSheetDialog.window.dimAmount=0.13

  local mBehavior = BottomSheetBehavior.from(self.view.parent);

  self.mBottomSheetBehavior=mBehavior
  
  mBehavior.setPeekHeight(self.peekHeight or 0.6 * activity.getHeight());

  local bottomSheet=mBottomSheetDialog.getDelegate().findViewById(R.id.design_bottom_sheet);
    bottomSheet.setBackgroundColor(0);
        
  if Build.VERSION.SDK_INT >= 21 then
  -- mBottomSheetDialog.getWindow().addFlags(WindowManager.LayoutParams.FLAG_Light_SYSTEM_BAR_BACKGROUNDS);
  end

  --显示Dialog
  mBottomSheetDialog.show();

  mBehavior.setBottomSheetCallback(BottomSheetBehavior.BottomSheetCallback{
    onStateChanged=function(...)
      self.bottomSheetCallback.onStateChanged(...)
    end;
    onSlide=function(...)
      self.bottomSheetCallback.onSlide(...)
    end;
  });
  return self
end


return base