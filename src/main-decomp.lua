local L0, L1, L2, L3
L0 = require
L1 = "import"
L0(L1)
L0 = import
L1 = "android.app.*"
L0(L1)
L0 = import
L1 = "android.os.*"
L0(L1)
L0 = import
L1 = "android.widget.*"
L0(L1)
L0 = import
L1 = "android.view.*"
L0(L1)
L0 = import
L1 = "android.view.View"
L0(L1)
L0 = import
L1 = "android.content.Context"
L0(L1)
L0 = import
L1 = "android.media.MediaPlayer"
L0(L1)
L0 = import
L1 = "android.media.AudioManager"
L0(L1)
L0 = import
L1 = "com.androlua.Ticker"
L0(L1)
L0 = activity
L0 = L0.getSystemService
L1 = Context
L1 = L1.AUDIO_SERVICE
L0 = L0(L1)
L0 = L0.setStreamVolume
L1 = AudioManager
L1 = L1.STREAM_MUSIC
L2 = 15
L3 = AudioManager
L3 = L3.FLAG_SHOW_UI
L0(L1, L2, L3)
L0 = activity
L0 = L0.getDecorView
L0 = L0()
L0 = L0.setSystemUiVisibility
L1 = View
L1 = L1.SYSTEM_UI_FLAG_HIDE_NAVIGATION
L2 = View
L2 = L2.SYSTEM_UI_FLAG_IMMERSIVE
L1 = L1 | L2
L0(L1)
L0 = MediaPlayer
L0 = L0()
m = L0
L0 = m
L0 = L0.reset
L0()
L0 = m
L0 = L0.setDataSource
L1 = activity
L1 = L1.getLuaDir
L1 = L1()
L2 = "/mc.mp3"
L1 = L1 .. L2
L0(L1)
L0 = m
L0 = L0.prepare
L0()
L0 = m
L0 = L0.start
L0()
L0 = m
L0 = L0.setLooping
L1 = true
L0(L1)
L0 = Ticker
L0 = L0()
ti = L0
L0 = ti
L0.Period = 10
L0 = ti
function L1()
  local L0, L1, L2, L3
  L0 = activity
  L0 = L0.getSystemService
  L1 = Context
  L1 = L1.AUDIO_SERVICE
  L0 = L0(L1)
  L0 = L0.setStreamVolume
  L1 = AudioManager
  L1 = L1.STREAM_MUSIC
  L2 = 15
  L3 = AudioManager
  L3 = L3.FLAG_SHOW_UI
  L0(L1, L2, L3)
  L0 = activity
  L0 = L0.getDecorView
  L0 = L0()
  L0 = L0.setSystemUiVisibility
  L1 = View
  L1 = L1.SYSTEM_UI_FLAG_HIDE_NAVIGATION
  L2 = View
  L2 = L2.SYSTEM_UI_FLAG_IMMERSIVE
  L1 = L1 | L2
  L0(L1)
end
L0.onTick = L1
L0 = ti
L0 = L0.start
L0()
function L0(A0, A1)
  local L2, L3, L4, L5
  L2 = string
  L2 = L2.find
  L3 = tostring
  L4 = A1
  L3 = L3(L4)
  L4 = "KEYCODE_BACK"
  L2 = L2(L3, L4)
  if L2 ~= nil then
    L2 = activity
    L2 = L2.getSystemService
    L3 = Context
    L3 = L3.AUDIO_SERVICE
    L2 = L2(L3)
    L2 = L2.setStreamVolume
    L3 = AudioManager
    L3 = L3.STREAM_MUSIC
    L4 = 15
    L5 = AudioManager
    L5 = L5.FLAG_SHOW_UI
    L2(L3, L4, L5)
  end
  L2 = true
  return L2
end
onKeyDown = L0
