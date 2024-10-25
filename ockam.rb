# Note This file if touched must be updated in ./github/ockam.rb.template
# for release automation to work

class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.140.0/ockam.aarch64-apple-darwin"
      sha256 "ef79f173a8f382b29ef361115a1201b99a6e27f0644b3f7ac795b2a2ea923bc9"

      def install
        bin.install "ockam.aarch64-apple-darwin" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.140.0/ockam.x86_64-apple-darwin"
      sha256 "efb8c099409263444e0a94a2e45ca40b4585e43edc17a8eb665046b55dc29780"

      def install
        bin.install "ockam.x86_64-apple-darwin" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.140.0/ockam.aarch64-unknown-linux-musl"
      sha256 "9a992a4127f7002d0f7b392321c18f70c270b8967cebe34ed6c96baf503f1915"

      def install
        bin.install "ockam.aarch64-unknown-linux-musl" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/build-trust/ockam/releases/download/ockam_v0.140.0/ockam.x86_64-unknown-linux-musl"
      sha256 "6857d94d1ea3fa83b552c2558620bf68c837f88483a670e82c8c4debd1df2eac"

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
