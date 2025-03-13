# Note This file if touched must be updated in ./github/ockam.rb.template
# for release automation to work

class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.ockam.io/command/v0.149.0/ockam.aarch64-apple-darwin"
      sha256 "6ad217d45b2e0c25056e11aaaba445ca305053f2f7dba664fc9926135d2f4cce"

      def install
        bin.install "ockam.aarch64-apple-darwin" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.ockam.io/command/v0.149.0/ockam.x86_64-apple-darwin"
      sha256 "d5f824cbb92f4dbbc98cbd33a24670683f93b95e4945f229d0b1b50c0a11a5b2"

      def install
        bin.install "ockam.x86_64-apple-darwin" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.ockam.io/command/v0.149.0/ockam.aarch64-unknown-linux-musl"
      sha256 "f7f8860e6abd9c75263ccd3832a0d9b421fd6ecb9efcac2652936a5e7a2f288f"

      def install
        bin.install "ockam.aarch64-unknown-linux-musl" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.ockam.io/command/v0.149.0/ockam.x86_64-unknown-linux-musl"
      sha256 "ebbf6d6909c6d981c297d90521d3e6c16b7652e3ed7a19a7b06bf8baf40557ca"

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
