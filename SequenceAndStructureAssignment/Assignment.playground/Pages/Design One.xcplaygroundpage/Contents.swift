/*:
 [Previous](@previous) / [Next](@next)
 
 # Design One
 
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
        
        canvas.drawShapesWithFill = false
        canvas.drawShapesWithBorders = true
        
        let value = random (from: 0, toButNotIncluding: 11)
        
        if value == 1 {
            canvas.borderColor = Color.init(hue: 140, saturation: 186, brightness: 175, alpha: 190)
            canvas.drawEllipse(centreX: 100, centreY: 100, width: 100, height: 100)
        }
            
        else if value == 2 {
            canvas.borderColor = Color.orange
            canvas.drawEllipse(centreX: 110, centreY: 100, width: 50, height: 50)
        }

    }
}





/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
