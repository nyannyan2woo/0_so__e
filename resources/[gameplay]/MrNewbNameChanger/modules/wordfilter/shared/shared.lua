local badWords = Config.BadWords or {}

function WordFilter(name)
	-- 空文字列チェック
	if name == "" then return true end
	-- 禁止ワードをチェック
	for _, word in ipairs(badWords) do
		if name:lower():find(word) then return true end
	end
	return false
end