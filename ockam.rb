# Note This file if touched must be updated in ./github/ockam.rb.template
# for release automation to work

class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.126.0/ockam.aarch64-apple-darwin"
      sha256 "87bbd6bc2b1b7f895a5405ccf9a7f6a6f0b399d53b298d3183b18e8abde47e80"

      def install
        bin.install "ockam.aarch64-apple-darwin" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.126.0/ockam.x86_64-apple-darwin"
      sha256 "8c2b40683e3391c554ed6a125b75d314edb731f1afba252b4f1ad278a5c2fbb7"

      def install
        bin.install "ockam.x86_64-apple-darwin" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.126.0/ockam.aarch64-unknown-linux-musl"
      sha256 "441c08e35b539d73d93a1e96f0743a62c8ab009c04bf97de234061d0e23af7de"

      def install
        bin.install "ockam.aarch64-unknown-linux-musl" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.126.0/ockam.x86_64-unknown-linux-musl"
      sha256 "157adb287b74629b6b4b0bb786aa91d30d95c9c13598d7ab5672082a3e31a48f"

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
