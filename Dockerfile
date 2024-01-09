FROM hamdifourati/cordova-android-builder
RUN apt-get update && apt-get install -y --no-install-recommends usbutils android-tools-adb iproute2 net-tools && apt-get clean && rm -rf /var/lib/apt/lists/*
ENV ANDROID_ADB_SERVER_ADDRESS host.docker.internal
EXPOSE 9400

RUN ( sleep 5 && while [ 1 ]; do sleep 1; echo y; done ) | sdkmanager "platforms;android-30"
