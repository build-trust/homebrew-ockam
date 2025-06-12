# Note This file if touched must be updated in ./github/ockam.rb.template
# for release automation to work

class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.ockam.io/command/v0.154.0/ockam.aarch64-apple-darwin"
      sha256 "30e3ee88a92754777280e3315a0dd2586f9c08225b99bcfc0e9c08173ab0a63c"

      def install
        bin.install "ockam.aarch64-apple-darwin" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.ockam.io/command/v0.154.0/ockam.x86_64-apple-darwin"
      sha256 "e41aa8e7d1b14155e418a1b329b2ef0d11faf366e2189b5c658299e72b3da5d5"

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
      sha256 "8c6d28b272d930a159216f7b3806ab8f5f78863f5b0970112e54d0ef9654eec7"

      def install
        bin.install "ockam.aarch64-unknown-linux-musl" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.ockam.io/command/v0.154.0/ockam.x86_64-unknown-linux-musl"
      sha256 "667fcd9d562c0c144233631a0b19553adf1fd88bf908ba08ff80defab7d73dea"

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
