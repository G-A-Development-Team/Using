function using(pkgn) file.Write( "\\using/json.lua", http.Get( "https://raw.githubusercontent.com/G-A-Development-Team/libs/main/json.lua" ) ) LoadScript("\\using/json.lua") local pkg = json.decode(http.Get("https://raw.githubusercontent.com/G-A-Development-Team/Using/main/using.json"))["pkgs"][ pkgn ] if pkg ~= nil then file.Write( "\\using/" .. pkgn .. ".lua", http.Get( pkg ) ) LoadScript("\\using/" .. pkgn .. ".lua") else print("[using] package doesn't exist. {" .. pkgn .. "}") end end
