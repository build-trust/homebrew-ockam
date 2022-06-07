# Note This file if touched must be updated in ./github/ockam.rb.template
# for release automation to work

class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.60.0/ockam.aarch64-apple-darwin"
      sha256 "2b7632267ae2478472b3dc0e4ff66dff9e63571e050c9f5586528a832c6ab5ad"

      def install
        mv "ockam.aarch64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.60.0/ockam.x86_64-apple-darwin"
      sha256 "310bdc40f3b9c5264f77fe7711e8162a098aea5128ff3ec89dd297f38b3e131d"

      def install
        mv "ockam.x86_64-apple-darwin", "ockam"
        bin.install "ockam"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.60.0/ockam.aarch64-unknown-linux-gnu"
      sha256 "bcafd134e6cdbfe0362a4ed004793b118f359bdd6d04a48dc819956ff1ca447b"

      def install
        mv "ockam.aarch64-unknown-linux-gnu", "ockam"
        bin.install "ockam"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.60.0/ockam.x86_64-unknown-linux-gnu"
      sha256 "bc9d68d9fe483c4673963fd3e11df85785d0c514e0577ce4eeba97d7fa921814"

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
