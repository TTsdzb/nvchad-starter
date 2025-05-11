require "nvchad.options"

-- add yours here!

local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

-- Set fileencodings for auto encoding detection
local fileencodings = {
  "ucs-bom",
  "utf-8",

  -- CJK encodings
  "cp936", -- Simplified Chinese (Windows only) (GBK)
  "euc-cn", -- Simplified Chinese (GB2312)
  "cp950", -- Traditional Chinese (alias for big5) (BIG5)
  "euc-tw", -- Traditional Chinese
  "cp932", -- Japanese (Windows only) (Extended Shift-JIS)
  "sjis", -- Japanese (Shift-JIS)
  "eus-jp", -- Japanese
  "cp949", -- Korean (IBM-949)
  "euc-kr", -- Korean

  -- Others
  "default", -- Encoding of the current locale
  "latin1", -- 8-bit characters (ISO 8859-1, also used for cp1252)
}
o.fileencodings = table.concat(fileencodings, ",")
