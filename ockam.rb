# Note This file if touched must be updated in ./github/ockam.rb.template
# for release automation to work

class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.ockam.io/command/v0.147.0/ockam.aarch64-apple-darwin"
      sha256 "82ca0e6fa4701a56f519018b45518f607a06c6efd8e369a74e0dd28d563aeb51"

      def install
        bin.install "ockam.aarch64-apple-darwin" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.ockam.io/command/v0.147.0/ockam.x86_64-apple-darwin"
      sha256 "177c2fcabf24e3e2f9cc730325e2f3bad0e6bf9856fed726ceee2ba7cd90ccee"

      def install
        bin.install "ockam.x86_64-apple-darwin" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.ockam.io/command/v0.147.0/ockam.aarch64-unknown-linux-musl"
      sha256 "cd5aa976dfcd60669da196c669ebe45f0fa6c48c235ac9e0c95ac88889e30a90"

      def install
        bin.install "ockam.aarch64-unknown-linux-musl" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.ockam.io/command/v0.147.0/ockam.x86_64-unknown-linux-musl"
      sha256 "36b560b33fc23faae17e952f88c620f73b5a2c6974c67d2c145b42cce50eef67"

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
