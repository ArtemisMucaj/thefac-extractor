React = require('react')

ReactImageList = React.createClass
  displayName : 'ImageList',
  render: ->
    data = @props.data
    React.DOM.div className : "align-center",
      React.DOM.div className : "large-12 medium-12",
      idName:"image-list",
        #eat food for food in ['toast', 'cheese', 'wine']
        for i in [0...data.length]
          React.DOM.img className:"thumbnail", key:i, id:"img-"+i,
          src:"data:image/png;base64,"+(data[i]).toString('base64'),
          onClick: () ->
            $("#img-"+i).on 'click', () ->
              console.log "Click"

module.exports = ReactImageList
