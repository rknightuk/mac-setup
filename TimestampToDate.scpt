on run {input, parameters}

    tell application "System Events"
        set activeApp to name of first process whose frontmost is true
    end tell

    set _timestamp to (input as string)

    tell application activeApp
        set realDate to ((do shell script "date -r " & _timestamp) as string)
        display dialog realDate
    end tell

    return realDate

end run