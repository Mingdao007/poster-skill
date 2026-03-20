on run argv
    if (count of argv) is not 2 then
        error "Usage: osascript export_powerpoint_pdf.applescript <input.pptx> <output.pdf>"
    end if

    set pptPath to item 1 of argv
    set pdfPath to item 2 of argv

    tell application "Microsoft PowerPoint"
        activate
        open POSIX file pptPath
        save active presentation in POSIX file pdfPath as save as PDF
        close active presentation saving no
    end tell
end run
