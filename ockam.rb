# Note This file if touched must be updated in ./github/ockam.rb.template
# for release automation to work

class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.ockam.io/command/v0.154.0/ockam.aarch64-apple-darwin"
      sha256 "f54a7696559f75f96fc7b33669f6490240f08e3f55f6edaa1aa45a4f60f9218e"

      def install
        bin.install "ockam.aarch64-apple-darwin" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.ockam.io/command/v0.154.0/ockam.x86_64-apple-darwin"
      sha256 "6c1d3d1cfe21dfa79219677c8597807b8398387d7d5b8563ad264d8512e5b04c"

      def install
        bin.install "ockam.x86_64-apple-darwin" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.ockam.io/command/v0.154.0/ockam.aarch64-unknown-linux-musl"
      sha256 "a9ef6e02fcaeb3839c9b5f031c95116498b678574545a2d5e224a548c5af1898"

      def install
        bin.install "ockam.aarch64-unknown-linux-musl" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.ockam.io/command/v0.154.0/ockam.x86_64-unknown-linux-musl"
      sha256 "bb75064df57952a13271fe0c6d47843a73ac36e8df88f8aaf7153bbb300cdbbe"

      def install
        bin.install "ockam.x86_64-unknown-linux-musl" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end
  end

  test do
    system "ockam", "--version"
  end
end
