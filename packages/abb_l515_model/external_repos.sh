git clone https://github.com/ros-industrial/abb_experimental.git
git clone https://github.com/ros-industrial/industrial_core.git
git clone https://github.com/ros-industrial/abb.git
git clone https://github.com/ros-industrial/abb_driver.git
git clone https://github.com/IntelRealSense/realsense-ros.git

# Remove unnecessary files
rm -r abb/abb_irb*
rm -r abb_experimental/abb_c*
rm -r abb_experimental/abb_irb2*
rm -r abb_experimental/abb_irb4*
rm -r abb_experimental/abb_irb5*
rm -r abb_experimental/abb_irb6*
rm -r abb_experimental/abb_irb7*
rm -r abb_experimental/abb_irb16*
rm -r abb_experimental/abb_irb120_*
rm -r abb_experimental/abb_irb120t*
rm -r abb_experimental/abb_irb1200_7*
