# Note This file if touched must be updated in ./github/ockam.rb.template
# for release automation to work

class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.70.0/ockam.aarch64-apple-darwin"
      sha256 "475a20a3d1a71d4b7abc84e8cfdfb948ccdf567bfd4416810dfcf7a89c9e7baa"

      def install
        mv "ockam.aarch64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.70.0/ockam.x86_64-apple-darwin"
      sha256 "af0c860d33179bcb6f7d15193b7eaea11b00cd89a9d4380c813f2dfd58325a52"

      def install
        mv "ockam.x86_64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.70.0/ockam.aarch64-unknown-linux-gnu"
      sha256 "8331ff0c9fe70b938d524f84a16b2ab4eba7305c8c53c346d99e5a429041efd3"

      def install
        mv "ockam.aarch64-unknown-linux-gnu", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.70.0/ockam.x86_64-unknown-linux-gnu"
      sha256 "7dac17cf61698461d3fb6ac16ab7cf80693f5e0ef06fe0c471eb4043740a8e96"

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
