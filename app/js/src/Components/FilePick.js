var FilePick;

FilePick = (function() {
  function FilePick(dragArea, pick_button, converterObj) {
    this.dragArea = dragArea;
    this.pick_button = pick_button;
    this.setPicker(converterObj);
    this.button = this.createButton(converterObj, this.pick_button);
    this.open = this.createButton(converterObj, "#open-file");
  }

  FilePick.prototype.setPicker = function(converterObj) {
    this.drag = DragDrop(this.dragArea, function(files, pos) {
      return FileHandle.handle(files, converterObj, true);
    });
    return ReactDOM.render(React.createElement(ReactFileSelectorLayout, {
      description: " Choose a .pdf file to work with" + " - You can either drop it in the window or use the regular button ",
      text: "Select a file (.pdf only)"
    }), document.getElementById("content"));
  };

  FilePick.prototype.createButton = function(converterObj, where) {
    var button;
    button = $(where);
    button.on('change', function(event) {
      var files;
      files = event.target.files;
      return FileHandle.handle(files, converterObj, false);
    });
    return button;
  };

  return FilePick;

})();

module.exports = FilePick;