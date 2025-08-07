from PIL import Image, ImageDraw

# Settings
image_size = (1000, 1000)  # Width, height of the image
dot_spacing = 40           # Pixels between dot centers
dot_radius = 8             # Radius of each dot
dot_color = (0, 0, 0, 255) # Black dot with full opacity

# Create a transparent image
image = Image.new("RGBA", image_size, (255, 255, 255, 0))
draw = ImageDraw.Draw(image)

# Draw dots in a grid pattern
for y in range(0, image_size[1], dot_spacing):
    for x in range(0, image_size[0], dot_spacing):
        # Draw a circle (ellipse)
        left_up = (x - dot_radius, y - dot_radius)
        right_down = (x + dot_radius, y + dot_radius)
        draw.ellipse([left_up, right_down], fill=dot_color)

# Save to file
image.save("halftone_dots.png", "PNG")
