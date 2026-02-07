Config = {}

Config.Doctor = 0 -- 出勤中のEMSがこの数値以下の場合にAIドクターを呼べる
Config.Price = 2000 -- 治療費
Config.ReviveTime = 20000 -- 治療にかかる時間 (ms)

Config.VehicleModel = `ambulance`
Config.PedModel = `s_m_m_doctor_01`

Config.Blip = {
    Sprite = 153,
    Color = 5,
    Scale = 0.8,
    Label = "AIドクター"
}

Config.Lang = {
    DispatchSent = "救急車が向かっています！しばらくお待ちください…",
    TooManyEMS = "出勤中のEMSが多すぎます",
    NotEnoughMoney = "お金が不足しています",
    AlreadyHeading = "既に救急車が向かっています",
    OnlyWhenDead = "死亡時のみ利用できます",
    Treating = "医者が治療中",
    TreatmentComplete = "治療が完了しました。請求額: ¥%s",
}
