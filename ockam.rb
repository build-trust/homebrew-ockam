# Note This file if touched must be updated in ./github/ockam.rb.template
# for release automation to work

class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.69.0/ockam.aarch64-apple-darwin"
      sha256 "e5cbfdb7f5ddec4a9587a7186db5351884abb0a8bfec01b57161702f579258b9"

      def install
        mv "ockam.aarch64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.69.0/ockam.x86_64-apple-darwin"
      sha256 "c67bf75d51c085ebbfc2ff478779cbb470e1c8512b43e30ba267bd3ab5c4b30d"

      def install
        mv "ockam.x86_64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.69.0/ockam.aarch64-unknown-linux-gnu"
      sha256 "5d0908b7e65224345651a56788a6696ac83f58ec92bfb0da48880cf65e4caa49"

      def install
        mv "ockam.aarch64-unknown-linux-gnu", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.69.0/ockam.x86_64-unknown-linux-gnu"
      sha256 "04b52c1a839161b2a5a1a7f00f31248a46438f2d05c6ff692ad41de8e0b5c6b0"

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
