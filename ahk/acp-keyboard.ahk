#Requires AutoHotkey v2.0

; Disable the Alt+Shift language-switch shortcut, run the following:
;   REG ADD "HKEY_CURRENT_USER\Keyboard Layout\Toggle" /v "Hotkey" /t REG_SZ /d "3" /f
;   REG ADD "HKEY_CURRENT_USER\Keyboard Layout\Toggle" /v "Language Hotkey" /t REG_SZ /d "3" /f
;   REG ADD "HKEY_CURRENT_USER\Keyboard Layout\Toggle" /v "Layout Hotkey" /t REG_SZ /d "3" /f




end_keys := "{esc},{tab},{enter},{backspace},{delete},{insert},{home},{end},{pgup},{pgdn},{up},{down},{left},{right}"

dead_acute := Map.Call(
  " ", "{U+0027}",
  "A", "{U+00C1}",
  "a", "{U+00E1}",
  "E", "{U+00C9}",
  "e", "{U+00E9}",
  "I", "{U+00CD}",
  "i", "{U+00ED}",
  "O", "{U+00D3}",
  "o", "{U+00F3}",
  "U", "{U+00DA}",
  "u", "{U+00FA}",
  "W", "{U+1E82}",
  "w", "{U+1E83}",
  "Y", "{U+00DD}",
  "y", "{U+00FD}")

dead_circumflex := Map.Call(
  " ", "{U+005E}",
  "A", "{U+00C2}",
  "a", "{U+00E2}",
  "E", "{U+00CA}",
  "e", "{U+00EA}",
  "I", "{U+00CE}",
  "i", "{U+00EE}",
  "O", "{U+00D4}",
  "o", "{U+00F4}",
  "U", "{U+00DB}",
  "u", "{U+00FB}",
  "W", "{U+0174}",
  "w", "{U+0175}",
  "Y", "{U+0176}",
  "y", "{U+0177}")

dead_diaeresis := Map.Call(
  " ", "{U+0022}",
  "A", "{U+00C4}",
  "a", "{U+00E4}",
  "E", "{U+00CB}",
  "e", "{U+00EB}",
  "I", "{U+00CF}",
  "i", "{U+00EF}",
  "O", "{U+00D6}",
  "o", "{U+00F6}",
  "U", "{U+00DC}",
  "u", "{U+00FC}",
  "W", "{U+1E84}",
  "w", "{U+1E85}",
  "Y", "{U+0178}",
  "y", "{U+00FF}")

dead_grave := Map.Call(
  " ", "{U+0060}",
  "A", "{U+00C0}",
  "a", "{U+00E0}",
  "E", "{U+00C8}",
  "e", "{U+00E8}",
  "I", "{U+00CC}",
  "i", "{U+00EC}",
  "O", "{U+00D2}",
  "o", "{U+00F2}",
  "U", "{U+00D9}",
  "u", "{U+00F9}",
  "W", "{U+1E80}",
  "w", "{U+1E81}",
  "Y", "{U+1EF2}",
  "y", "{U+1EF3}")

dead_macron := Map.Call(
  " ", "{U+00AF}",
  "A", "{U+0100}",
  "a", "{U+0101}",
  "E", "{U+0112}",
  "e", "{U+0113}",
  "I", "{U+012A}",
  "i", "{U+012B}",
  "O", "{U+014C}",
  "o", "{U+014D}",
  "U", "{U+016A}",
  "u", "{U+016B}",
  "Y", "{U+0232}",
  "y", "{U+0233}")




; E00 - SC029
; |
>!SC029::Send "{U+007C}"
<^>!SC029::Send "{U+007C}"
; ±
>!+SC029::Send "{U+00B1}"
<^>!+SC029::Send "{U+00B1}"


; E01 - SC002
; !
>!SC002::Send "{U+0021}"
<^>!SC002::Send "{U+0021}"
; ¡
>!+SC002::Send "{U+00A1}"
<^>!+SC002::Send "{U+00A1}"


; E02 - SC003
; ¢
>!SC003::Send "{U+00A2}"
<^>!SC003::Send "{U+00A2}"
; «
>!+SC003::Send "{U+00AB}"
<^>!+SC003::Send "{U+00AB}"


; E03 - SC004
; £
^>SC004::Send "{U+00A3}"
<^>!SC004::Send "{U+00A3}"
; »
>!+SC004::Send "{U+00BB}"
<^>!+SC004::Send "{U+00BB}"


; E04 - SC005
; €
>!SC005::Send "{U+20AC}"
<^>!SC005::Send "{U+20AC}"
; ‹
>!+SC005::Send "{U+2039}"
<^>!+SC005::Send "{U+2039}"


; E05 - SC006
; ‰
>!SC006::Send "{U+2030}"
<^>!SC006::Send "{U+2030}"
; ›
>!+SC006::Send "{U+203A}"
<^>!+SC006::Send "{U+203A}"


; E06 - SC007
; √
>!SC007::Send "{U+221A}"
<^>!SC007::Send "{U+221A}"
; ✓
>!+SC007::Send "{U+2713}"
<^>!+SC007::Send "{U+2713}"


; E07 - SC008
; ⁊
>!SC008::Send "{U+204A}"
<^>!SC008::Send "{U+204A}"
; ✗
>!+SC008::Send "{U+2717}"
<^>!+SC008::Send "{U+2717}"


; E08 - SC009
; °
>!SC009::Send "{U+00B0}"
<^>!SC009::Send "{U+00B0}"
; •
>!+SC009::Send "{U+2022}"
<^>!+SC009::Send "{U+2022}"


; E09 - SC00A
; ª
>!SC00A::Send "{U+00AA}"
<^>!SC00A::Send "{U+00AA}"
;
>!+SC00A::Send ""
<^>!+SC00A::Send ""


; E10 - SC00B
; º
>!SC00B::Send "{U+00BA}"
<^>!SC00B::Send "{U+00BA}"
; ×
>!+SC00B::Send "{U+00D7}"
<^>!+SC00B::Send "{U+00D7}"


; E11 - SC00C
; −
>!SC00C::Send "{U+2212}"
<^>!SC00C::Send "{U+2212}"
; ÷
>!+SC00C::Send "{U+00F7}"
<^>!+SC00C::Send "{U+00F7}"


; E12 - SC00D
; ≈
>!SC00D::Send "{U+2248}"
<^>!SC00D::Send "{U+2248}"
; ≠
>!+SC00D::Send "{U+2260}"
<^>!+SC00D::Send "{U+2260}"


; SC00E (Backspace)
;
>!SC00E::Send "{backspace}"
<^>!SC00E::Send "{backspace}"
;
>!+SC00E::Send "{backspace}"
<^>!+SC00E::Send "{backspace}"




; D01 - SC010
; à
>!SC010::Send "{U+00E0}"
<^>!SC010::Send "{U+00E0}"
; À
>!+SC010::Send "{U+00C0}"
<^>!+SC010::Send "{U+00C0}"


; D02 - SC011
; é
>!SC011::Send "{U+00E9}"
<^>!SC011::Send "{U+00E9}"
; É
>!+SC011::Send "{U+00C9}"
<^>!+SC011::Send "{U+00C9}"


; D03 - SC012
; ë
>!SC012::Send "{U+00EB}"
<^>!SC012::Send "{U+00EB}"
; Ë
>!+SC012::Send "{U+00CB}"
<^>!+SC012::Send "{U+00CB}"


; D04 - SC013
; è
>!SC013::Send "{U+00E8}"
<^>!SC013::Send "{U+00E8}"
; È
>!+SC013::Send "{U+00C8}"
<^>!+SC013::Send "{U+00C8}"


; D05 - SC014
; ®
>!SC014::Send "{U+00AE}"
<^>!SC014::Send "{U+00AE}"
; ©
>!+SC014::Send "{U+00A9}"
<^>!+SC014::Send "{U+00A9}"


; D06 - SC015
; û
>!SC015::Send "{U+00FB}"
<^>!SC015::Send "{U+00FB}"
; Û
>!+SC015::Send "{U+00DB}"
<^>!+SC015::Send "{U+00DB}"


; D07 - SC016
; ü
>!SC016::Send "{U+00FC}"
<^>!SC016::Send "{U+00FC}"
; Ü
>!+SC016::Send "{U+00DC}"
<^>!+SC016::Send "{U+00DC}"


; D08 - SC017
; ï
>!SC017::Send "{U+00EF}"
<^>!SC017::Send "{U+00EF}"
; Ï
>!+SC017::Send "{U+00CF}"
<^>!+SC017::Send "{U+00CF}"


; D09 - SC018
; ö
>!SC018::Send "{U+00F6}"
<^>!SC018::Send "{U+00F6}"
; Ö
>!+SC018::Send "{U+00D6}"
<^>!+SC018::Send "{U+00D6}"


; D10 - SC019
; ¶
>!SC019::Send "{U+00B6}"
<^>!SC019::Send "{U+00B6}"
; §
>!+SC019::Send "{U+00A7}"
<^>!+SC019::Send "{U+00A7}"


; D11 - SC01A
; “
>!SC01A::Send "{U+201C}"
<^>!SC01A::Send "{U+201C}"
; „
>!+SC01A::Send "{U+201E}"
<^>!+SC01A::Send "{U+201E}"


; D12 - SC01B
; ”
>!SC01B::Send "{U+201D}"
<^>!SC01B::Send "{U+201D}"
; ‚
>!+SC01B::Send "{U+201A}"
<^>!+SC01B::Send "{U+201A}"




; C01 - SC01E
; ä
>!SC01E::Send "{U+00E4}"
<^>!SC01E::Send "{U+00E4}"
; Ä
>!+SC01E::Send "{U+00C4}"
<^>!+SC01E::Send "{U+00C4}"


; C02 - SC01F
; ß
>!SC01F::Send "{U+00DF}"
<^>!SC01F::Send "{U+00DF}"
; ẞ
>!+SC01F::Send "{U+1E9E}"
<^>!+SC01F::Send "{U+1E9E}"


; C03 - SC020
; ¨◌
>!SC020::{
  deadac := InputHook("L1 C", end_keys)
  deadac.Start()
  deadac.Wait()
  if (dead_diaeresis.Has(deadac.Input)) {
    Send dead_diaeresis[deadac.Input]
  } else {
    Send deadac.Input
  }
}
<^>!SC020::{
  deadac := InputHook("L1 C", end_keys)
  deadac.Start()
  deadac.Wait()
  if (dead_diaeresis.Has(deadac.Input)) {
    Send dead_diaeresis[deadac.Input]
  } else {
    Send deadac.Input
  }
}
; ″
>!+SC020::Send "{U+2033}"
<^>!+SC020::Send "{U+2033}"


; C04 - SC021
; ´◌
>!SC021::{
  deadac := InputHook("L1 C", end_keys)
  deadac.Start()
  deadac.Wait()
  if (dead_acute.Has(deadac.Input)) {
    Send dead_acute[deadac.Input]
  } else {
    Send deadac.Input
  }
}
<^>!SC021::{
  deadac := InputHook("L1 C", end_keys)
  deadac.Start()
  deadac.Wait()
  if (dead_acute.Has(deadac.Input)) {
    Send dead_acute[deadac.Input]
  } else {
    Send deadac.Input
  }
}
; ′
>!+SC021::Send "{U+2032}"
<^>!+SC021::Send "{U+2032}"


; C05 - SC022
; ¯◌
>!SC022::{
  deadac := InputHook("L1 C", end_keys)
  deadac.Start()
  deadac.Wait()
  if (dead_macron.Has(deadac.Input)) {
    Send dead_macron[deadac.Input]
  } else {
    Send deadac.Input
  }
}
<^>!SC022::{
  deadac := InputHook("L1 C", end_keys)
  deadac.Start()
  deadac.Wait()
  if (dead_macron.Has(deadac.Input)) {
    Send dead_macron[deadac.Input]
  } else {
    Send deadac.Input
  }
}
;
>!+SC022::Send ""
<^>!+SC022::Send ""


; C06 - SC023
;
>!SC023::Send ""
<^>!SC023::Send ""
;
>!+SC023::Send ""
<^>!+SC023::Send ""


; C07 - SC024
; `◌
>!SC024::{
  deadac := InputHook("L1 C", end_keys)
  deadac.Start()
  deadac.Wait()
  if (dead_grave.Has(deadac.Input)) {
    Send dead_grave[deadac.Input]
  } else {
    Send deadac.Input
  }
}
<^>!SC024::{
  deadac := InputHook("L1 C", end_keys)
  deadac.Start()
  deadac.Wait()
  if (dead_grave.Has(deadac.Input)) {
    Send dead_grave[deadac.Input]
  } else {
    Send deadac.Input
  }
}
;
>!+SC024::Send ""
<^>!+SC024::Send ""


; C08 - SC025
; ^◌
>!SC025::{
  deadac := InputHook("L1 C", end_keys)
  deadac.Start()
  deadac.Wait()
  if (dead_circumflex.Has(deadac.Input)) {
    Send dead_circumflex[deadac.Input]
  } else {
    Send deadac.Input
  }
}
<^>!SC025::{
  deadac := InputHook("L1 C", end_keys)
  deadac.Start()
  deadac.Wait()
  if (dead_circumflex.Has(deadac.Input)) {
    Send dead_circumflex[deadac.Input]
  } else {
    Send deadac.Input
  }
}
;
>!+SC025::Send ""
<^>!+SC025::Send ""


; C09 - SC026
; ô
>!SC026::Send "{U+00F4}"
<^>!SC026::Send "{U+00F4}"
; Ô
>!+SC026::Send "{U+00D4}"
<^>!+SC026::Send "{U+00D4}"


; C10 - SC027
; ;
>!SC027::Send "{U+003B}"
<^>!SC027::Send "{U+003B}"
; :
>!+SC027::Send "{U+003A}"
<^>!+SC027::Send "{U+003A}"


; C11 - SC028
; ’
>!SC028::Send "{U+2019}"
<^>!SC028::Send "{U+2019}"
; ‘
>!+SC028::Send "{U+2018}"
<^>!+SC028::Send "{U+2018}"


; C12 - SC02B
; \
>!SC02B::Send "{U+005C}"
<^>!SC02B::Send "{U+005C}"
;
>!+SC02B::Send ""
<^>!+SC02B::Send ""




; B00 - SC056
; ê
>!SC056::Send "{U+00EA}"
<^>!SC056::Send "{U+00EA}"
; Ê
>!+SC056::Send "{U+00CA}"
<^>!+SC056::Send "{U+00CA}"


; B01 - SC02C
; æ
>!SC02C::Send "{U+00E6}"
<^>!SC02C::Send "{U+00E6}"
; Æ
>!+SC02C::Send "{U+00C6}"
<^>!+SC02C::Send "{U+00C6}"


; B02 - SC02D
; œ
>!SC02D::Send "{U+0153}"
<^>!SC02D::Send "{U+0153}"
; Œ
>!+SC02D::Send "{U+0152}"
<^>!+SC02D::Send "{U+0152}"


; B03 - SC02E
; ç
>!SC02E::Send "{U+00E7}"
<^>!SC02E::Send "{U+00E7}"
; Ç
>!+SC02E::Send "{U+00C7}"
<^>!+SC02E::Send "{U+00C7}"


; B04 - SC02F
; —
>!SC02F::Send "{U+2014}"
<^>!SC02F::Send "{U+2014}"
;
>!+SC02F::Send ""
<^>!+SC02F::Send ""


; B05 - SC030
; –
>!SC030::Send "{U+2013}"
<^>!SC030::Send "{U+2013}"
;
>!+SC030::Send ""
<^>!+SC030::Send ""


; B06 - SC031
; ñ
>!SC031::Send "{U+00F1}"
<^>!SC031::Send "{U+00F1}"
; Ñ
>!+SC031::Send "{U+00D1}"
<^>!+SC031::Send "{U+00D1}"


; B07 - SC032
; µ
>!SC032::Send "{U+00B5}"
<^>!SC032::Send "{U+00B5}"
; ™
>!+SC032::Send "{U+2122}"
<^>!+SC032::Send "{U+2122}"


; B08 - SC033
; …
>!SC033::Send "{U+2026}"
<^>!SC033::Send "{U+2026}"
; ≤
>!+SC033::Send "{U+2264}"
<^>!+SC033::Send "{U+2264}"


; B09 - SC034
; ⋅
>!SC034::Send "{U+22C5}"
<^>!SC034::Send "{U+22C5}"
; ≥
>!+SC034::Send "{U+2265}"
<^>!+SC034::Send "{U+2265}"


; B10 - SC035
; ?
>!SC035::Send "{U+003F}"
<^>!SC035::Send "{U+003F}"
; ¿
>!+SC035::Send "{U+00BF}"
<^>!+SC035::Send "{U+00BF}"




; SPC - SC039
; NNBSP
>!SC039::Send "{U+202F}"
<^>!SC039::Send "{U+202F}"
; NBSP
>!+SC039::Send "{U+00A0}"
<^>!+SC039::Send "{U+00A0}"
