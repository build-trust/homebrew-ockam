# Note This file if touched must be updated in ./github/ockam.rb.template
# for release automation to work

class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.72.0/ockam.aarch64-apple-darwin"
      sha256 "32e4ffd793ac56789ca19343e9213c19f466d4777cee88418e1baf52a63473f3"

      def install
        mv "ockam.aarch64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.72.0/ockam.x86_64-apple-darwin"
      sha256 "a76e8b8fa731d3b3d3ad0f3d76c4b3a60e44884f5572d22148bb360514dbade5"

      def install
        mv "ockam.x86_64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.72.0/ockam.aarch64-unknown-linux-gnu"
      sha256 "6d4fbcc4dfd2c93c8480b19a7cea27136f16368f19f3e53f5996131e4604ba18"

      def install
        mv "ockam.aarch64-unknown-linux-gnu", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.72.0/ockam.x86_64-unknown-linux-gnu"
      sha256 "1630706e0cf0516bce6750c972194cdaa822c31b53e889c8536f5bc226522823"

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
