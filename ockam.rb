class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  @@target = nil

  if OS.mac?
    if Hardware::CPU.arm?
      @@target = "aarch64-apple-darwin"
      sha256 "a3ebd41d28819c218deba0dd8021d9385f753a76cf97284bd244fb19d6081ec6"
    end

    if Hardware::CPU.intel?
      @@target = "x86_64-apple-darwin"
      sha256 "6a29a743418f2fbcefa0004d6a1e055fa5d0a497d15cca7ec3d0d642a36e50ad"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      @@target = "aarch64-unknown-linux-gnu"
      sha256 "380bf150cf232f4c0ed0ee77c3339fbf0fb0b635970f6ffa3e3adca96e422f10"
    end

    if Hardware::CPU.intel?
      @@target = "x86_64-unknown-linux-gnu"
      sha256 "1b024013f9d8b3ebce2ae70583651ecef14e5970dc6689043b2e292f331f1f41"
    end
  end

  url "#{homepage}/releases/download/ockam_v0.58.0/ockam.#{@@target}"

  def install
    if !@@target.nil?
      mv "ockam.#{@@target}", "ockam"
      bin.install "ockam"
    end
  end

  test do
    system "ockam", "--version"
  end
end
