all: installed

ROSJAVA_DIR = ../rosjava_core
ROSJAVA_URL = https://code.google.com/p/rosjava/
ANDROID_DIR = ../android_core
ANDROID_URL = https://code.google.com/p/rosjava.android/
GOOGLE_DIR = ../google_core
GOOGLE_URL = https://code.google.com/p/rosjava.google/
ANDROID_APP_URL = git@bitbucket.org:bensuniverse/ros_teleop.git

installed: rosjava_core android_core google_core android_app
		cd $(ROSJAVA_DIR) && ./gradlew install
		cd $(ROSJAVA_DIR) && ./gradlew eclipse
		cd $(GOOGLE_DIR) && ./gradlew install
		cd $(ANDROID_DIR) && ./gradlew debug
		touch installed

rosjava_core:
		hg clone $(ROSJAVA_URL) $(ROSJAVA_DIR)
		rosstack profile
		rospack profile

android_core:
		hg clone $(ANDROID_URL) $(ANDROID_DIR)
		rosstack profile
		rospack profile

google_core:
		hg clone $(GOOGLE_URL) $(GOOGLE_DIR)
		rosstack profile
		rospack profile

android_app:
		git clone $(ANDROID_APP_URL) $(ANDROID_DIR)/android_ros_teleop
		rosstack profile
		rospack profile

clean:
		cd $(ROSJAVA_DIR) && ./gradlew clean
		cd $(GOOGLE_DIR) && ./gradlew clean
		cd $(ANDROID_DIR) && ./gradlew clean

wipe: clean

include $(shell rospack find mk)/cmake_stack.mk