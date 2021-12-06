# Priv-app permission
PRODUCT_PRODUCT_PROPERTIES += \
	ro.control_privapp_permissions=log

# Render Engine
PRODUCT_PROPERTY_OVERRIDES += \
	debug.hwui.renderer=skiagl \
	debug.renderengine.backend=skiaglthreaded \
	renderthread.skia.reduceopstasksplitting=true
