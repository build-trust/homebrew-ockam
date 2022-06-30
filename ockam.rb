# Note This file if touched must be updated in ./github/ockam.rb.template
# for release automation to work

class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.63.0/ockam.aarch64-apple-darwin"
      sha256 "38ab77c55c5265db74a3b37153c4c27f07e52c86d52229c971ae700ffcf40097"

      def install
        mv "ockam.aarch64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.63.0/ockam.x86_64-apple-darwin"
      sha256 "d93e390675e5fa1e5c21f836b1a84f1be8d048f26a23bd2d1c0697ca2f810096"

      def install
        mv "ockam.x86_64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.63.0/ockam.aarch64-unknown-linux-gnu"
      sha256 "f857a70fb7c097d7f349bc8a9d6af211a3863190a249e12f778e7e74a7cffc60"

      def install
        mv "ockam.aarch64-unknown-linux-gnu", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.63.0/ockam.x86_64-unknown-linux-gnu"
      sha256 "bdc98a70c9c84047676ac91e1739e8ec70bf9951fb8f45a1ae67b1f51dd49b26"

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
