# Note This file if touched must be updated in ./github/ockam.rb.template
# for release automation to work

class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.68.0/ockam.aarch64-apple-darwin"
      sha256 "426c5dbde00d6c4feb01b746b54b0c1d380504887bdb860bd5cd53877238c0cc"

      def install
        mv "ockam.aarch64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.68.0/ockam.x86_64-apple-darwin"
      sha256 "d5bfe7a2e98a49c7ff0bcd24c5800f1e68082c6e832082a4d58a6ea1a0643e15"

      def install
        mv "ockam.x86_64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.68.0/ockam.aarch64-unknown-linux-gnu"
      sha256 "d97ebf7315ea8342570f630554f39d89f8da3550c60b6c910730f2fbae7660f8"

      def install
        mv "ockam.aarch64-unknown-linux-gnu", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.68.0/ockam.x86_64-unknown-linux-gnu"
      sha256 "a16e2bcc5068516a0a0348e37b2d33f83e9b496ce99b65f5ad669f65d06d3ca6"

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
