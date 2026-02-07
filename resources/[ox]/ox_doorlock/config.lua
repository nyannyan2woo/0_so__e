---@type DoorlockConfig
---@diagnostic disable-next-line: missing-fields
Config = {}

---Trigger a notification on the client when the door state is successfully updated.
Config.Notify = true

---ドアの範囲内にいるときに、ロック/ロック解除を促すために、クライアント上に永続的な通知を作成します。
Config.DrawTextUI = true

---[DrawSprite](https://docs.fivem.net/natives/?_0xE7FFAE5EBF23D890)で使用されるプロパティを設定します。
Config.DrawSprite = {
    -- ロック解除
    [0] = { 'mpsafecracking', 'lock_open', 0, 0, 0.018, 0.018, 0, 255, 255, 255, 100 },

    -- ロック済み
    [1] = { 'mpsafecracking', 'lock_closed', 0, 0, 0.018, 0.018, 0, 255, 255, 255, 100 },
}

---指定されたaceプリンシパルが「command.doorlock」を使用できるようにします。
Config.CommandPrincipal = 'group.admin'

---「command.doorlock」プリンシパルを持つプレイヤーは任意のドアを使用できます。
Config.PlayerAceAuthorised = false

---ドアをロックピッキングするときのデフォルトのスキルチェック難易度。
Config.LockDifficulty = { 'easy', 'easy', 'medium' }

---ロック解除されたドアをロックするためにロックピックを使用できます。
Config.CanPickUnlockedDoors = false

---ロックピックとして機能するアイテムの配列。
Config.LockpickItems = {
    'lockpick'
}

---NUIを通さずにゲームオーディオ（サウンドネイティブ）を使用して音を再生します。
Config.NativeAudio = true
