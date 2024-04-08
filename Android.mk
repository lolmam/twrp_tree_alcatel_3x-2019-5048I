# $$DEVICE$$ is the Device Name's Value.
# $$BRAND$$ is the Brand's / Manufacturer's Value.

ifneq ($(filter 5048I,$(TARGET_DEVICE)),)

LOCAL_PATH := device/TCL/5048I

include $(call all-makefiles-under,$(LOCAL_PATH))

endif