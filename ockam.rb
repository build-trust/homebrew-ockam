# Note This file if touched must be updated in ./github/ockam.rb.template
# for release automation to work

class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.75.0/ockam.aarch64-apple-darwin"
      sha256 "47ca48af26a9b4ed7e07d592aff831c78507579d32e382dccddf75fd7f93f0f6"

      def install
        mv "ockam.aarch64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.75.0/ockam.x86_64-apple-darwin"
      sha256 "f127be1f9e10f0b19b3965bad4c342a79bb8522e36e3fa1c23546c2cf5ddbe1d"

      def install
        mv "ockam.x86_64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.75.0/ockam.aarch64-unknown-linux-gnu"
      sha256 "d032782d16225f8920fd7386a1356421770ef7c5dcd2b041013829bacb2f079a"

      def install
        mv "ockam.aarch64-unknown-linux-gnu", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.75.0/ockam.x86_64-unknown-linux-gnu"
      sha256 "cc2f801f5d87f37a1f80975bb94111b3594876c4861a8666825cbf875ca9ca3b"

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
