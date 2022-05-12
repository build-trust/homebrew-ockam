# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Ockam < Formula
  desc "Ockam Command"
  homepage "https://github.com/build-trust/ockam"
  url "https://github.com/build-trust/ockam/releases/download/v0.56.0/ockam"
  sha256 "d1f7588af3b8ddcfc60d47503e8a05a7378089c1f3e015188ac9cbf6b504d063"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/build-trust/ockam/releases/download/v0.56.0"
    sha256 cellar: :any, arm64_monterey: "f5e20566fe327e936dc97a4a5117e5e3842bd6c0254317e58911802ab301fd52" # ockam.aarch64-apple-darwin
    sha256 cellar: :any, arm64_big_sur:  "f5e20566fe327e936dc97a4a5117e5e3842bd6c0254317e58911802ab301fd52" # ockam.aarch64-apple-darwin
    sha256 cellar: :any, monterey:       "8ebe3cd75e669933df1ae6b77b2807778bc99f913a7ef8112b0c77be9a1a8a00" # ockam.x86_64-apple-darwin
    sha256 cellar: :any, big_sur:        "8ebe3cd75e669933df1ae6b77b2807778bc99f913a7ef8112b0c77be9a1a8a00" # ockam.x86_64-apple-darwin
    sha256 cellar: :any, catalina:       "8ebe3cd75e669933df1ae6b77b2807778bc99f913a7ef8112b0c77be9a1a8a00" # ockam.x86_64-apple-darwin
    sha256 cellar: :any, mojave:         "8ebe3cd75e669933df1ae6b77b2807778bc99f913a7ef8112b0c77be9a1a8a00" # ockam.x86_64-apple-darwin
    sha256 cellar: :any, high_sierra:    "8ebe3cd75e669933df1ae6b77b2807778bc99f913a7ef8112b0c77be9a1a8a00" # ockam.x86_64-apple-darwin
    sha256 cellar: :any, x86_64_linux:   "d2a7bce3d095cc1d02bfbda8cfff6fe88e5b7b74b4ce0fac61fc7ab37d2628bf" # ockam.x86_64-unknown-linux-gnu
    # Homebrew on Linux - Homebrew can run on 32-bit ARM (Raspberry Pi and others) and 64-bit ARM (AArch64), but no binary packages (bottles) are available.
    # https://docs.brew.sh/Homebrew-on-Linux#arm
  end

  # # For Linux aarch64 we can use install from source
  # def install
  #   ...
  # end
end
