class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.59.0/ockam.aarch64-apple-darwin"
      sha256 "ac521c212054ce37b626a8fc6b925d594eb7ad79aecae8009e5abb45de4e1820"

      def install
        mv "ockam.aarch64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.59.0/ockam.x86_64-apple-darwin"
      sha256 "9e652ce640034a0d4359911ed78400f72b5a5e7168ec510f1c23edd17eab3a95"

      def install
        mv "ockam.x86_64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.59.0/ockam.aarch64-unknown-linux-gnu"
      sha256 "1b800b3f8ae7e16dc7211499833888cf0eec2e6b02f7fce274b986e77ec0ec54"

      def install
        mv "ockam.aarch64-unknown-linux-gnu", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.59.0/ockam.x86_64-unknown-linux-gnu"
      sha256 "8e2c3879fbe90dd5fac739fe70aed260effc18d65c66153ad9a5a32056881b51"

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
