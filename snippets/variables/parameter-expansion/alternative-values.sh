#!/usr/bin/env bash


#### ${var:-...} and ${var-...} ###

# radiology_device is unset
unset radiology_device
echo "${radiology_device}"            # "" (empty string)
echo "${radiology_device:-CT-scan}"   # CT-scan
echo "${radiology_device:-"CT-scan"}" # CT-scan


echo "${radiology_device-}"  # "" (empty string)
echo "${radiology_device:-}" # "" (empty string)
echo "${radiology_device:}" # ./defaults: ${radiology_device:}: bad substitution



#### ${var:+...} and ${var+...} ###

# ${var:+} and ${var:} syntax:
#    Use a different variable if 'var' is set
echo "${cardiologist}"               # "" (empty string)
echo "${cardiologist+"Eric Topol"}"  # "" (empty string)
echo "${cardiologist:+"Eric Topol"}" # "" (empty string)
echo "${cardiologist}"               # "" (empty string)

book="Deep Medicine"
echo "${book}"                                 # Deep Medicine
echo "${book+}"                                # "" (empty string)
echo "${book}"                                 # Deep Medicine
echo "${book:+}"                               # "" (empty string)
echo "${book}"                                 # Deep Medicine
echo "${book:+"The Patient Will See You Now"}"        # The Patient Will See You Now
echo "${book+"The Creative Destruction of Medicine"}" # The Creative Destruction of Medicine
echo "${book}"                                 # Deep Medicine


# difference between ${var:+} and ${var:} syntax:
listing=
echo "${listing}"               #  "" (empty string)

# ${var:+...} will replace a variable's value if var is set AND non-empty
echo "${listing:+"cow dog"}"    #  "" (empty string)
# ${var+...} will always replace a variable's value if var is set
echo "${listing+"fish cat"}"    # fish cat


#### ${var:=...} and ${var=...} ###



