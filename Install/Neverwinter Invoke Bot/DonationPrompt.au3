#NoTrayIcon
#include "..\variables.au3"
#include "Shared.au3"
#include "_AddCommaToNumber.au3"
Global $Title = $Name & " v" & $Version
Local $text = Localize("InvokedTotalTimes", "<COUNT>", _AddCommaToNumber(GetAllAccountsValue("TotalInvoked")))
If GetAllAccountsValue("TotalCelestialCoffers") Then
    $text &= @CRLF & @CRLF & Localize("TotalCelestialCoffersCollected", "<COUNT>", _AddCommaToNumber(GetAllAccountsValue("TotalCelestialCoffers")))
EndIf
If GetAllAccountsValue("TotalProfessionPacks") Then
    $text &= @CRLF & @CRLF & Localize("TotalProfessionPacksCollected", "<COUNT>", _AddCommaToNumber(GetAllAccountsValue("TotalProfessionPacks")))
EndIf
If GetAllAccountsValue("TotalElixirsOfFate") Then
    $text &= @CRLF & @CRLF & Localize("TotalElixirsOfFateCollected", "<COUNT>", _AddCommaToNumber(GetAllAccountsValue("TotalElixirsOfFate")))
EndIf
If GetAllAccountsValue("TotalOverflowXPRewards") Then
    $text &= @CRLF & @CRLF & Localize("TotalOverflowXPRewardsCollected", "<COUNT>", _AddCommaToNumber(GetAllAccountsValue("TotalOverflowXPRewards")))
EndIf
If GetAllAccountsValue("TotalVIPAccountRewards") Then
    $text &= @CRLF & @CRLF & Localize("TotalVIPAccountRewardsCollected", "<COUNT>", _AddCommaToNumber(GetAllAccountsValue("TotalVIPAccountRewards")))
EndIf
If MsgBox($MB_YESNO + $MB_ICONQUESTION, $Title, $text & @CRLF & @CRLF & @CRLF & Localize("DonateNow")) = $IDYES Then
    ShellExecute(@ScriptDir & "\Donation.html")
EndIf