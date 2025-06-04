# Note This file if touched must be updated in ./github/ockam.rb.template
# for release automation to work

class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.ockam.io/command/v0.152.0/ockam.aarch64-apple-darwin"
      sha256 "7b82ade2fc7eda8e43495145da168b368277a46258c4b38cd9a027cb59ec31d8"

      def install
        bin.install "ockam.aarch64-apple-darwin" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.ockam.io/command/v0.152.0/ockam.x86_64-apple-darwin"
      sha256 "57a99d12ee3509ff650a1d0c8a155524cc2b44dc5cbc0dddafc6832b32f85c7d"

      def install
        bin.install "ockam.x86_64-apple-darwin" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.ockam.io/command/v0.152.0/ockam.aarch64-unknown-linux-musl"
      sha256 "747434986257f37a0729b763196f26a6cbf0e65f5303978e70aacd8b007e5093"

      def install
        bin.install "ockam.aarch64-unknown-linux-musl" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.ockam.io/command/v0.152.0/ockam.x86_64-unknown-linux-musl"
      sha256 "df81a38c05cc565fc5d3edc2f5bdfb8cd6ce0c29fab6c2cad0fef9b4ddf06e31"

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
