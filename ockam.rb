# Note This file if touched must be updated in ./github/ockam.rb.template
# for release automation to work

class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.ockam.io/command/v0.157.0/ockam.aarch64-apple-darwin"
      sha256 "ff291a4172bd27fbb8fcbe07590ac8561eecedfb90d6b8d3a44e5426aafa99e0"

      def install
        bin.install "ockam.aarch64-apple-darwin" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.ockam.io/command/v0.157.0/ockam.x86_64-apple-darwin"
      sha256 "8df85961ff6b6ab5be50c94483c3d19e5a8822bf62f7eb32a029c19be4355161"

      def install
        bin.install "ockam.x86_64-apple-darwin" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.ockam.io/command/v0.157.0/ockam.aarch64-unknown-linux-musl"
      sha256 "fc8eea98000129b4efcb5087fd2ff59efb5bad5ff7c6cb400a1462028d93f6ca"

      def install
        bin.install "ockam.aarch64-unknown-linux-musl" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.ockam.io/command/v0.157.0/ockam.x86_64-unknown-linux-musl"
      sha256 "043198073b3166b75717e80ba3943a447808acccf307bc9d2f1e30b52e70d770"

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
