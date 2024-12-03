#set page(margin: 0pt, paper: "a4")

#{
  let outer = 1mm
  let stroke = .2pt
  let box_width = 4mm
  context {
    let outer_box_width = box_width + outer
    let sep = outer / 2
    let step = (sep + outer_box_width) / 2 * calc.sqrt(2)
    let start = -step
    let count = 0
    let x = start
    while x < page.width + step {
      let y = start
      if (calc.even(count)) {
        y -= step
      }
      while y < page.height + step {
        place(
          dx: x,
          dy: y,
          rotate(45deg, rect(height: box_width, width: box_width, stroke: stroke)),
        )
        place(
          dx: -sep + x,
          dy: -sep + y,
          rotate(45deg, rect(height: outer_box_width, width: outer_box_width, stroke: stroke)),
        )
        y += step
      }
      count += 1
      x += step
    }
  }
}
