var ReactProgressBarLayout;

ReactProgressBarLayout = React.createClass({
  displayName: 'ProgressBarLayout',
  render: function() {
    return React.DOM.div({
      className: "row align-center margin-top-3"
    }, React.DOM.div({
      className: "large-8 medium-8 columns center"
    }, React.DOM.p(null, this.props.description)), React.DOM.div({
      className: "large-8 medium-8 columns"
    }, React.createElement(ReactProgressBar, {
      text: this.props.text
    })), React.DOM.div({
      className: "large-8 medium-8 columns"
    }, React.DOM.div({
      className: "spinner loader"
    }, React.DOM.div({
      className: "double-bounce1"
    }), React.DOM.div({
      className: "double-bounce2"
    }))));
  }
});

module.exports = ReactProgressBarLayout;
