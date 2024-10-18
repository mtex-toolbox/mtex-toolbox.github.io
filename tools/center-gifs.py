from PIL import Image, ImageSequence
import sys
import re

# Open input image (GIF)
inimg = Image.open(sys.argv[1])

# Parse output size and inset color
wstr, hstr = re.findall(r"(\d+),(\d+)", sys.argv[2])[0]
outwidth, outheight = int(wstr), int(hstr)
clst = re.findall(r"(\d+),(\d+),(\d+),(\d+)", sys.argv[3])[0]
insetcolor = tuple([int(c) for c in clst])
outpath = sys.argv[4]

# Create output images for each frame
frames = []
for frame in ImageSequence.Iterator(inimg):
    frame = frame.convert("RGBA")

    # Aspect ratio calculation and resize
    inwidth, inheight = frame.size
    aspectratio = inwidth / inheight
    if inwidth / outwidth > inheight / outheight:
        new_width = outwidth
        new_height = int(outwidth / aspectratio)
    else:
        new_height = outheight
        new_width = int(outheight * aspectratio)

    resized_frame = frame.resize((new_width, new_height), Image.Resampling.LANCZOS)

    # Create a new output frame with transparent background
    outimg = Image.new("RGBA", (outwidth, outheight), insetcolor)

    # Center the resized frame
    x_offset = (outwidth - new_width) // 2
    y_offset = (outheight - new_height) // 2
    outimg.paste(resized_frame, (x_offset, y_offset), resized_frame)

    # Append frame to frames list
    frames.append(outimg)

# Save as an animated GIF
frames[0].save(outpath, save_all=True, append_images=frames[1:], loop=0, duration=inimg.info['duration'], transparency=0)
