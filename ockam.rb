# Note This file if touched must be updated in ./github/ockam.rb.template
# for release automation to work

class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.71.0/ockam.aarch64-apple-darwin"
      sha256 "ac3ce69f6dbce4329f766179c1302f8c72187a067e6ff743c2974a0967de5e5c"

      def install
        mv "ockam.aarch64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.71.0/ockam.x86_64-apple-darwin"
      sha256 "db643e45ff415c1ae3137b7bf4e3b569a24db3d351811cd0508ee9bac838d691"

      def install
        mv "ockam.x86_64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.71.0/ockam.aarch64-unknown-linux-gnu"
      sha256 "26598b0f39c1c65f758510c272687f716cfdd2fbdb3d1a1c639794308b8b4b25"

      def install
        mv "ockam.aarch64-unknown-linux-gnu", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.71.0/ockam.x86_64-unknown-linux-gnu"
      sha256 "2ae12c26c5004fa94c0f8a956e47dd7e7dd3d8dd00bf99ac22dab1406886d693"

      def install
        mv "ockam.x86_64-unknown-linux-gnu", "ockam"
        bin.install "ockam"
      end
    end
  end

  test do
    system "ockam", "--version"
  end
end
