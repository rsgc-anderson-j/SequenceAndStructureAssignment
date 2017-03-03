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
let number = random(from: 0, toButNotIncluding: 2)
canvas.defaultLineWidth = 1

// This loop makes a 10 rows of columns
for x in stride(from: 25, through: 475, by: 50){
    
    // This loop makes a single column, bottom to top
    for y in stride(from: 25, through: 475, by: 50) {
        
        // Draw the shapes
        canvas.drawEllipse(centreX: x, centreY: y, width: 2, height: 2)
        canvas.drawRectangle(centreX: x, centreY: y, width: 50, height: 50)
    }
}

for x in stride(from: 0, through: 400, by: 10) {
    
    canvas.borderColor = Color.init(hue: 324, saturation: 100, brightness: 100, alpha: 100)
    canvas.drawEllipse(centreX: 250, centreY: 250, width: x, height: x, borderWidth: 1)
}
//draw lines



// use a loop for rays
for x in stride(from: 350, through: 500, by: 10){
    
    if number == 1 {
        canvas.lineColor = Color.init(hue: 332, saturation: 100, brightness: 100, alpha: 100)
    }    else if number == 0 {
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
    
    //draw the rays
    canvas.drawLine(fromX: 0, fromY: 500, toX: 500, toY: y)
}

//loop for lines going from bottom left to top right
for x in stride(from: 0, through: 150, by: 10) {
    
    //Choose the color
    if x % 100 == 0 {
        canvas.lineColor = Color.init(hue: 92, saturation: 84, brightness: 100, alpha: 100)
    } else {
        canvas.lineColor = Color.init(hue: 272, saturation: 84, brightness: 100, alpha: 100)
    }

    canvas.drawLine(fromX: 500, fromY: 500, toX: x, toY: 0)

}

for y in stride(from: 0, through: 150, by: 10){
    //Choose the color
    if y % 25 == 0 {
        canvas.lineColor = Color.blue
    } else {
        canvas.lineColor = Color.red
    }
canvas.drawLine(fromX: 500, fromY: 500, toX: 0, toY: y)
}

canvas.copyToClipboard()

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
