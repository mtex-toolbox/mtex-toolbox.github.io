# Resize and outset image while keeping the aspect ratio and padding with transparency

from PIL import Image
import sys
import re
import os

# open input image path from 1st cli arg
inimg = Image.open(sys.argv[4]).convert("RGBA")

# read input image size and calculate aspect ratio
insize = inwidth, inheight = inimg.size
aspectratio = inwidth / inheight

# parse output image size from 2nd cli arg
wstr, hstr = re.findall(r"(\d+),(\d+)", sys.argv[2])[0]
outsize = outwidth, outheight = (int(wstr), int(hstr))

# get rgba color for inset from 3rd cli arg
clst = re.findall(r"(\d+),(\d+),(\d+),(\d+)", sys.argv[3])[0]
insetcolor = tuple([int(c) for c in clst])

# get output image path from 4th cli arg
# outpath = sys.argv[1]
basename = os.path.basename(sys.argv[4]).rsplit(".", 1)[0]
outpath = os.path.join(r"C:\Users\fabia\Downloads", f"{basename}_centered.png")

# create output image with inset color as background
outimg = Image.new("RGBA", outsize, insetcolor)

# Determine the new size while maintaining aspect ratio
if inwidth / outwidth > inheight / outheight:
    new_width = outwidth
    new_height = int(outwidth / aspectratio)
else:
    new_height = outheight
    new_width = int(outheight * aspectratio)

# Resize input image to fit inside the output size, maintaining aspect ratio
resimg = inimg.resize((new_width, new_height), Image.Resampling.LANCZOS)

# Calculate centering position
x_offset = (outwidth - new_width) // 2
y_offset = (outheight - new_height) // 2

# Paste the resized image onto the output image, centered
outimg.paste(resimg, (x_offset, y_offset), resimg)

# Save composited output image
outimg.save(outpath)
outimg.show()
