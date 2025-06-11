# Note This file if touched must be updated in ./github/ockam.rb.template
# for release automation to work

class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.ockam.io/command/v0.153.0/ockam.aarch64-apple-darwin"
      sha256 "631eee9b701b8bf9e64326460de1c59f56111455af1a92bf710bc42d17f35124"

      def install
        bin.install "ockam.aarch64-apple-darwin" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.ockam.io/command/v0.153.0/ockam.x86_64-apple-darwin"
      sha256 "72a1e920f058a03d110a1abcc0daa2609f3943c41c120437f371e0d6a263026e"

      def install
        bin.install "ockam.x86_64-apple-darwin" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.ockam.io/command/v0.153.0/ockam.aarch64-unknown-linux-musl"
      sha256 "f6188ba1ab192c2ae791e198857f41ed3a3b180773fe56ceeb9c5ffcbce6a7ca"

      def install
        bin.install "ockam.aarch64-unknown-linux-musl" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.ockam.io/command/v0.153.0/ockam.x86_64-unknown-linux-musl"
      sha256 "995cf71517875bb5d5a4d651d5a281e809acce4d51f9ec28cecbeba3f35d4635"

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
