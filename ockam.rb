# Note This file if touched must be updated in ./github/ockam.rb.template
# for release automation to work

class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.74.0/ockam.aarch64-apple-darwin"
      sha256 "5d6fe6fccf036682e7c7e2b98f5102984e8870efbfb87071d9ca6f899871e318"

      def install
        mv "ockam.aarch64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.74.0/ockam.x86_64-apple-darwin"
      sha256 "457dd9b4cf5e253ff66cd0f79a03ce3cf7f946f3cc00703d1365c771df8d6658"

      def install
        mv "ockam.x86_64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.74.0/ockam.aarch64-unknown-linux-gnu"
      sha256 "6d10ce52ca53d0bfd51bdc882eaac67774c03e9d5d763dc380d6505029ae3442"

      def install
        mv "ockam.aarch64-unknown-linux-gnu", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.74.0/ockam.x86_64-unknown-linux-gnu"
      sha256 "cc998fe3302c93727223d29c24d53bd7d5e0cca7197d065d055e9c8e3912efea"

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
