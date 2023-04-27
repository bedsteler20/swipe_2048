from os import path, makedirs, system
import random
MAX_POW = 50
colors = [
    "red",
    "pink",
    "purple",
    "deepPurple",
    "indigo",
    "blue",
    "lightBlue",
    "cyan",
    "teal",
    "green",
    "lightGreen",
    "lime",
    "yellow",
    "amber",
    "orange",
    "deepOrange",
]
for i in range(len(colors)):
    colors.append(f"{colors[i]}Accent")

colors += colors
random.shuffle(colors)

gen_dir = path.join(path.dirname(__file__), '..', 'lib', 'generated')
dart_file = path.join(gen_dir, 'static_data.dart')
system(f"rm -rf {path.abspath(gen_dir)}")
makedirs(gen_dir)
file = open(dart_file, "x+")

file.write("import 'package:flutter/material.dart';\n\n")
file.write("// ignore: constant_identifier_names\n")
file.write("const Map<int, Color> COLOR_MAP = {\n")
for i in range(MAX_POW):
    num = int(pow(2, i))
    color = colors[i]
    if num == 1:
        continue
    file.write(f"   {num}: Colors.{color},\n")
file.write("};\n\n")

file.write("// ignore: constant_identifier_names\n")
file.write("const List<int> NUMBERS = [\n")
for i in range(MAX_POW):
    num = int(pow(2, i))
    if num == 1:
        continue
    file.write(f"    {num},\n")
file.write("];")
