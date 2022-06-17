# Note This file if touched must be updated in ./github/ockam.rb.template
# for release automation to work

class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.62.0/ockam.aarch64-apple-darwin"
      sha256 "74f09296325b1f39df8af61c7397e80694dbd2e4093212a23e346f9cd339e4b4"

      def install
        mv "ockam.aarch64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.62.0/ockam.x86_64-apple-darwin"
      sha256 "abf3f9b444f98c3ff474f77eebdab7d825b3f1e5f86a866b9cdb75c8fbcb51f4"

      def install
        mv "ockam.x86_64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.62.0/ockam.aarch64-unknown-linux-gnu"
      sha256 "c393cfab08aa4442b06522fc447be8c9061b7c715b93e68add7457984f2ca2b1"

      def install
        mv "ockam.aarch64-unknown-linux-gnu", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.62.0/ockam.x86_64-unknown-linux-gnu"
      sha256 "a891d61506443685c8d8385ea7856a46b329dfa8868642fe1fe4f3bbe387db71"

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
