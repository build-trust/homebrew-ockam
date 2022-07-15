# Note This file if touched must be updated in ./github/ockam.rb.template
# for release automation to work

class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.65.0/ockam.aarch64-apple-darwin"
      sha256 "46cd01f0fb7822cdd3124a5d8bd975b1ddf0dd4a3da944d6946282d94b21d6f8"

      def install
        mv "ockam.aarch64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.65.0/ockam.x86_64-apple-darwin"
      sha256 "40017e7b05320b5235e7bc62126af15ffafe8c4a87bfeb9cdf289c95d2476de8"

      def install
        mv "ockam.x86_64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.65.0/ockam.aarch64-unknown-linux-gnu"
      sha256 "29c2d7a9f4148a403b9528e9899d7b2e5a0e0ec4d85089171d2d58af8b2cf0b6"

      def install
        mv "ockam.aarch64-unknown-linux-gnu", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.65.0/ockam.x86_64-unknown-linux-gnu"
      sha256 "53ce78ad1c16f54b683db2641d5006e5d4744d13793f81928344c227a2bc5daa"

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
