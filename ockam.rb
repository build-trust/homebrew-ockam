# Note This file if touched must be updated in ./github/ockam.rb.template
# for release automation to work

class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.67.0/ockam.aarch64-apple-darwin"
      sha256 "10b364090f35285b5b3361a441150f219cac1db2ba3e093a8daf50b507fa11c4"

      def install
        mv "ockam.aarch64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.67.0/ockam.x86_64-apple-darwin"
      sha256 "b1562c1fe603660c955b4308fcdbee75a7a3b195d28b11b6bcff025e8c51989b"

      def install
        mv "ockam.x86_64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.67.0/ockam.aarch64-unknown-linux-gnu"
      sha256 "642c79497ad4ca64b2ee757bf1cfd1664a822e9579d4ae63448b969eb5c6b96b"

      def install
        mv "ockam.aarch64-unknown-linux-gnu", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.67.0/ockam.x86_64-unknown-linux-gnu"
      sha256 "0d32031d4a67c81d26b33dcc485815cdcf7b059041487260d7c7de5af5047d0a"

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
