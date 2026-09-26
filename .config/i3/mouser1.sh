#!/bin/bash
echo -n "serio1" | sudo tee /sys/bus/serio/drivers/psmouse/unbind
