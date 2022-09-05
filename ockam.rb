# Note This file if touched must be updated in ./github/ockam.rb.template
# for release automation to work

class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.73.0/ockam.aarch64-apple-darwin"
      sha256 "0125275449f4478a616398f4ac42e5186aab0405132c05219c7c70f85f3e5cb6"

      def install
        mv "ockam.aarch64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.73.0/ockam.x86_64-apple-darwin"
      sha256 "182bc9fee07481dd00e9b0cedfe4d03d609bcfa473423d3feb0caf6551abe293"

      def install
        mv "ockam.x86_64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.73.0/ockam.aarch64-unknown-linux-gnu"
      sha256 "cf509c3222e990027d678b89d5a610fb5c1540234e09fd01b5db3649cee0cd0c"

      def install
        mv "ockam.aarch64-unknown-linux-gnu", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.73.0/ockam.x86_64-unknown-linux-gnu"
      sha256 "1ef84662d3413635b3648f1862c0d974692448278ee57a486b050af66976903b"

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
