# Note This file if touched must be updated in ./github/ockam.rb.template
# for release automation to work

class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.ockam.io/command/v0.150.0/ockam.aarch64-apple-darwin"
      sha256 "c6b692bd40ef363b8cc7e86c6b15110a80ed6a49131e06604e490b4ae8aaa18d"

      def install
        bin.install "ockam.aarch64-apple-darwin" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.ockam.io/command/v0.150.0/ockam.x86_64-apple-darwin"
      sha256 "6717584b1ff2bd8ae3bb9ab4d53d66a70a6fd79b859f0bbef42093abc37a2551"

      def install
        bin.install "ockam.x86_64-apple-darwin" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.ockam.io/command/v0.150.0/ockam.aarch64-unknown-linux-musl"
      sha256 "2c5d89096590f28176becca1db8a9ea30c3ad6f3a72770aa9aa0d02369a27179"

      def install
        bin.install "ockam.aarch64-unknown-linux-musl" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.ockam.io/command/v0.150.0/ockam.x86_64-unknown-linux-musl"
      sha256 "188826defb4622f72280cb4bb2028f73297ac176efbc6d02df66b02a46263404"

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
