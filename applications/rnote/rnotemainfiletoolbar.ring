# The Ring Notepad Application (RNote)
# Author : Mahmoud Fayed <msfclipper@yahoo.com>

class RNoteMainFileToolbar

	func SetMainFile
		oTxtMainFile.setText(cActiveFileName)

	func GetMainFile
		cMainFileName = trim(oTxtMainFile.text())
		if cMainFileName = NULL 
			SetMainFile() 
			cMainFileName = trim(oTxtMainFile.text())
		ok
		return cMainFileName

	func DebugMainFile
		cMainFileName = GetMainFile()
		if cMainFileName = Null return Nofileopened() ok
		if not fexists(cMainFileName) return ok
		pSave()
		pDebugOperation(cMainFileName)

	func RunMainFile
		cMainFileName = GetMainFile()
		if cMainFileName = Null return Nofileopened() ok
		if not fexists(cMainFileName) return ok
		pSave()
		pRunOperation(cMainFileName)

	func RunGUIMainFile
		cMainFileName = GetMainFile()
		if cMainFileName = Null return Nofileopened() ok
		if not fexists(cMainFileName) return ok
		oDockOutputWindow { show() raise() }		
		pSave()
		pRunGUIOperation(cMainFileName)

	func RunInBrowserMainFile
		cMainFileName = GetMainFile()
		if cMainFileName = Null return Nofileopened() ok
		if not fexists(cMainFileName) return ok
		pSave()
		RunWebApplication(cMainFileName)
