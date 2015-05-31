require! {
  'react': { { svg, text }:DOM }:React
  './lib/Bar'
}

Bar = React.createFactory Bar

const prefix = '<?xml version="1.0" standalone="no"?>\n
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN"\n
"http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">\n'

console.log prefix + React.renderToStaticMarkup do
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

