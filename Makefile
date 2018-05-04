LIBS := \
	opencv_core \
	opencv_highgui \
	opencv_video \
	opencv_imgproc \
	opencv_calib3d \
	opencv_features2d \
	opencv_nonfree \
	opencv_ocl \
	avformat \
	avdevice \
	avutil \
	avcodec \
	swscale

LDLIBS := $(addprefix -l, $(LIBS) $(LIBS_$(notdir $*)))

TARGETS := DenseTrackStab Video

BUILD    := release
BUILDDIR := build_$(BUILD)
BINDIR   := $(BUILD)

INCLUDES_SUFFIX := .l
INCLUDES_PREFIX := $(BUILDDIR)/
INCLUDES := $(addsuffix $(INCLUDES_SUFFIX), $(addprefix $(INCLUDES_PREFIX), $(TARGETS)))

all:
	@echo "[INFO] remove $(INCLUDES)"
