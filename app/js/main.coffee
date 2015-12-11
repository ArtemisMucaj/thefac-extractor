DragDrop = require('drag-drop')
Remote = require('remote')
Dialog = Remote.require('dialog')
# PDFJS : Work with pdfs
pdfjs = require('pdfjs-dist/build/pdf.combined')
# glob FileSystem
glob = require('glob')
# Spawn child processes
child_p = require('child_process').spawn
fs = require('fs')
os = require('os')
process = require('process')

sharp = require('sharp')

zmq = require('zmq')

# Load UI components
React = require('react')
ReactDOM = require('react-dom')
# Custom UI
ReactFileButton = require "../app/js/ReactComponents/FileButton"
ReactProgressBar = require "../app/js/ReactComponents/ProgressBar"
ReactFileSelectorLayout = require "../app/js/ReactComponents/"+"
    FileSelectorLayout"
ReactProgressBarLayout = require "../app/js/ReactComponents/"+"
    ProgressBarLayout"
ReactImageList = require "../app/js/ReactComponents/"+"
    ImageList"

# Load regular Components

Helper = require('../app/js/Components/Helper')

Autopick = require('../app/js/Components/Autopick')
PickTrainingExamples = require('../app/js/Components/PickTrainingExamples')

ProgressBar = require('../app/js/Components/ProgressBar')
FilePick = require('../app/js/Components/FilePick')
ConversionHelper = require('../app/js/Components/ConversionHelper')
Converter = require('../app/js/Components/Converter')
FileHandle = require('../app/js/Components/FileHandle')

Extractor = require('../app/js/Extractor')

subprocessList = []
Helper.killSubProcesses(subprocessList)

main_loop = new Extractor()
