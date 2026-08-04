# ----------------------------
# Leaf Blower Revolution CE
# ----------------------------

NAME = LBRCE
DESCRIPTION = "Leaf Blower Revolution CE"
COMPRESSED = YES
COMPRESSED_MODE = zx7

CFLAGS = -Wall -Wextra -Werror -Oz
CXXFLAGS = -Wall -Wextra -Werror -Oz -std=c++17

include $(shell cedev-config --makefile)

