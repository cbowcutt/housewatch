var Resolutions = React.createClass({
  render: function() {
    return(
      <table>
        {this.props.resolutions.map(function(resolution) {
          return(
            <tr>
              <Resolution
                number={resolution.number}
                date={resolution.date} 
                title={resolution.title} 
              />
            </tr>
          )
        })}
      </table>
    )
  }
});

