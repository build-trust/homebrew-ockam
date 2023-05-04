# Note This file if touched must be updated in ./github/ockam.rb.template
# for release automation to work

class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.86.0/ockam.aarch64-apple-darwin"
      sha256 "09de3aa69320b281a9f42f08ccf9d20b32734230df9b0b7902b2eba7ac7e84a8"

      def install
        bin.install "ockam.aarch64-apple-darwin" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.86.0/ockam.x86_64-apple-darwin"
      sha256 "6d4ca681fb6ead00fdcabf9e0d04ebf040775ae422790f22795e299f37d8b407"

      def install
        bin.install "ockam.x86_64-apple-darwin" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.86.0/ockam.aarch64-unknown-linux-musl"
      sha256 "ebd2d7024b4872582485c380384a7492f283a6f1757352e1800af6dbb52cc6fb"

      def install
        bin.install "ockam.aarch64-unknown-linux-musl" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.86.0/ockam.x86_64-unknown-linux-musl"
      sha256 "e04ef725c72a3762f4f4fa5501fd5676fd9313b60d299c00810c61e62d7f94f0"

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
