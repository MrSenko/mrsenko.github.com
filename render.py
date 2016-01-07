#!/usr/bin/env python

# Jinja 2 renderer
# 

import os
import sys
from jinja2 import Environment, FileSystemLoader


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print "USAGE: %s <template>" % __file__
        sys.exit(1)

    abs_path  = os.path.abspath(sys.argv[1])
    dir_name  = os.path.dirname(abs_path)
    base_name = os.path.basename(abs_path)

    env = Environment(
                loader = FileSystemLoader(dir_name),
            )

    # first render only the block we want
    template = env.get_template(base_name)
    print template.render()
