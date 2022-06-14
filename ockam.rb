# Note This file if touched must be updated in ./github/ockam.rb.template
# for release automation to work

class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.61.0/ockam.aarch64-apple-darwin"
      sha256 "1f5f5a9d75eb6ae2348a84dd3af07604091f1f971a5127e6cf289ab04686fe5e"

      def install
        mv "ockam.aarch64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.61.0/ockam.x86_64-apple-darwin"
      sha256 "a2e2df596e4dd36952cd3b97f4a9d487344758de9176db8376e7746246e53c5b"

      def install
        mv "ockam.x86_64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.61.0/ockam.aarch64-unknown-linux-gnu"
      sha256 "4c51ddcd290aef2bcf780475106bcf61f8e061c792e37c707c8fe10d66baa6ea"

      def install
        mv "ockam.aarch64-unknown-linux-gnu", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.61.0/ockam.x86_64-unknown-linux-gnu"
      sha256 "812f3d3e1b900878791a4895998715f3bf96f218f23e729b48602f18c4f54aba"

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
