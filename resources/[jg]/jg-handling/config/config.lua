Config = {} -- 変更しないでください

-- 全般
Config.Locale = "ja"
Config.Framework = "auto" -- または "none", "QBCore", "Qbox", "ESX" (フレームワークはジョブのサポートやキャラクター名などに使用されます)
Config.Notifications = "auto" -- または "okokNotify", "ps-ui", "nox_notify", "ox_lib", "default"
Config.SpeedUnit = "kph" -- または "mph"

-- エディター設定
Config.EditorCommand = "editor" -- チャットコマンド
Config.EditorAdminOnly = true -- 管理者のみ使用可能にする場合は true に設定
Config.EditorJobRestriction = {} -- [フレームワーク必須] エディターを使用できるジョブをここに入力します (例: {"mechanic", "government"})。 false に設定し、かつ EditorAdminOnly も false の場合、エディターは誰でも使用可能(パブリック)になります。

-- 計測(タイミング)ツールは、Config.EnableStandaloneTimingTool = true に設定することで単独で使用できます。
-- そうでない場合、ハンドリングエディターのプレビューモード内でのみ使用できるようにロックされます。
Config.EnableStandaloneTimingTool = false
Config.TimingToolOpenCommand = "timingtool"
Config.TimingToolExitCommand = "closetimingtool"
Config.TimingToolAdminOnly = false -- 管理者のみ使用可能にする場合は true に設定
Config.TimingToolJobRestriction = {} -- [フレームワーク必須] 計測ツールを使用できるジョブをここに入力します (例: {"mechanic", "tuner"})。 false に設定し、かつ TimingToolAdminOnly も false の場合、ツールは誰でも使用可能(パブリック)になります。
Config.TimingToolResetKeyBind = 36
Config.TimingToolResetLabel = "CTRL"

-- 計測ツールの速度目標測定: 値は必ず「mph (マイル)」である必要があります。別の単位を使用している場合は mph に換算した値を設定してください。
Config.SpeedTargets = {
  ["0-60"] = 60,
  ["0-100"] = 100
}

-- 計測ツールの距離目標測定: 値は必ず「ft (フィート)」である必要があります。別の単位を使用している場合は ft に換算した値を設定してください。
Config.DistanceTargets = { 
  ["1/4 mile"] = 1320,
  ["1/2 mile"] = 2640,
  ["1 mile"] = 5280,
}

-- その他
Config.AutoRunSQL = true