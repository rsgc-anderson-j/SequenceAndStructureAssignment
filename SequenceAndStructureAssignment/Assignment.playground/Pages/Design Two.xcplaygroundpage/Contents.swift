/*:
 [Previous](@previous) / [Next](@next)
 
 # Design Two
 
 Here is a starting point for your assignment that you can build upon.
 
 It will produce this output:
 
 ![example_grid](example_grid.png "Grid example")
 
 From this basic form, make the modifications necessary to produce your intended design.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)


// Generate a grid
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 1

// This loop makes a 10 rows of columns
for x in stride(from: 25, through: 475, by: 50){
    
    // This loop makes a single column, bottom to top
    for y in stride(from: 25, through: 475, by: 50) {
        
        // Draw the shapes
        canvas.drawEllipse(centreX: x, centreY: y, width: 2, height: 2)
        canvas.drawRectangle(centreX: x, centreY: y, width: 50, height: 50)
    }
}
//draw lines

canvas.defaultLineWidth = 1

// use a loop for rays
for x in stride(from: 350, through: 500, by: 10){
    
    if x % 100 == 0{
        canvas.lineColor = Color.init(hue: 332, saturation: 100, brightness: 100, alpha: 100)
    }    else {
         canvas.lineColor = Color.init(hue: 110, saturation: 100, brightness: 100, alpha: 100)
    }

    //draw the line rays
    canvas.drawLine(fromX: 0, fromY: 500, toX: x, toY: 0)
}

for y in stride(from: 0, through: 150, by: 10) {
    
    //Choose the color
    if y % 100 == 0 {
        canvas.lineColor = Color.green
    } else {
        canvas.lineColor = Color.purple
    }
    
    //draw the sun rays
    canvas.drawLine(fromX: 0, fromY: 500, toX: 500, toY: y)
}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
