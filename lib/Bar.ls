require! {
  'react': { Component, { g, rect }:DOM }:React
}

class Bar extends Component
  (@props) ->
  render: ~>
    { children, x, y, width, height } = @props
    g do
      className: 'bar'
      transform: "translate(#x, #y)"
      style:
        fill: '#F90'
      rect { width, height }
      children

module.exports = Bar

