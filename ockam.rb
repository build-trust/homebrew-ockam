# Note This file if touched must be updated in ./github/ockam.rb.template
# for release automation to work

class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.ockam.io/command/v0.148.0/ockam.aarch64-apple-darwin"
      sha256 "2dda3990715e3b66093553c590504163319e469765155abf77c5cd071b966a4c"

      def install
        bin.install "ockam.aarch64-apple-darwin" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.ockam.io/command/v0.148.0/ockam.x86_64-apple-darwin"
      sha256 "78dd57a3c7fe80ece1c9a74c98e4d598f265cacbbb2749d103f2fc635206ed86"

      def install
        bin.install "ockam.x86_64-apple-darwin" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.ockam.io/command/v0.148.0/ockam.aarch64-unknown-linux-musl"
      sha256 "759b0a6377d252b6c753af18cf4197806863b871d00cbdeb13b2d0f57b368aa3"

      def install
        bin.install "ockam.aarch64-unknown-linux-musl" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.ockam.io/command/v0.148.0/ockam.x86_64-unknown-linux-musl"
      sha256 "4eb59362ec1a3e65a6e5730399f05d134cd7b37967dfce319e5e8c881922f7e8"

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
