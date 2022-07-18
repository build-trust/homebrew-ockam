# Note This file if touched must be updated in ./github/ockam.rb.template
# for release automation to work

class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.66.0/ockam.aarch64-apple-darwin"
      sha256 "ed38b8f18a1689bd4d465fb08ae22fc2143c396146ad5853130feea3f04d1cc1"

      def install
        mv "ockam.aarch64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.66.0/ockam.x86_64-apple-darwin"
      sha256 "9aa5fddcb8f31e90ce1cce04cebbf25dca0444c49996b65a30e4c3c559962186"

      def install
        mv "ockam.x86_64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.66.0/ockam.aarch64-unknown-linux-gnu"
      sha256 "435a9144bbb0402e124f07c23a991326ed0f9d4ae7b3f97fe54bed45207ddefe"

      def install
        mv "ockam.aarch64-unknown-linux-gnu", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.66.0/ockam.x86_64-unknown-linux-gnu"
      sha256 "c5c5a0fab6319e7f3dd87dfc1ff6ee3ee591d8810460719a4fabfe1d41a6b6d2"

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
