require! {
  'react': { { svg, text }:DOM }:React
  './lib/Bar'
}

Bar = React.createFactory Bar

console.log React.renderToStaticMarkup do
  svg do
    width:  200
    height: 40
    Bar do
      x: 0
      y: 0
      width:  100
      height: 20
      text { dx: '0.25em', dy: '1em', style: fill: 'white' } 'foo'
    Bar do
      x: 0
      y: 20
      width:  200
      height: 20
      text { dx: '0.25em', dy: '1em', style: fill: 'white' } 'bar'

