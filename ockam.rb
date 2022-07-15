# Note This file if touched must be updated in ./github/ockam.rb.template
# for release automation to work

class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.64.0/ockam.aarch64-apple-darwin"
      sha256 "8cd447d428f7326cb14327383ac575ba327d8d3a0c7ba18b9f7e8de9001ba3db"

      def install
        mv "ockam.aarch64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.64.0/ockam.x86_64-apple-darwin"
      sha256 "1ea80256e77eee20837a5cf52e231d9f347bbaef948fae080ba1c92cec063914"

      def install
        mv "ockam.x86_64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.64.0/ockam.aarch64-unknown-linux-gnu"
      sha256 "b3dd6d83a16fbae8619a51aa0b0a10e3c5c6e6cf9457ed2e80da3fa2e3a857ea"

      def install
        mv "ockam.aarch64-unknown-linux-gnu", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.64.0/ockam.x86_64-unknown-linux-gnu"
      sha256 "70a302220408bf2617170d8659ef8f73c3e6851161fbfa6a152d808e446af0d4"

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
