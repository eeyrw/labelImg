Remove-Item -Path "build" -Recurse
Remove-Item -Path "dist" -Recurse
Remove-Item -Path labelImg.spec

pyinstaller --hidden-import=xml `
            --hidden-import=xml.etree `
            --hidden-import=xml.etree.ElementTree `
            --hidden-import=lxml.etree `
             -D -F -n labelImg -c "../labelImg.py" -p ../libs -p ../

Copy-Item "../data" -Destination "dist/" -Recurse