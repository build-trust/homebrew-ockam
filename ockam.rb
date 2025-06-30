class Ockam < Formula
  desc "End-to-end encryption and mutual authentication for distributed applications"
  homepage "https://github.com/build-trust/ockam"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.ockam.io/command/v0.156.0/ockam.aarch64-apple-darwin"
      sha256 "f1dea520287202b5d0a8f1ad1e1ab4152eb29a72ee2819792f1b9a66295daf23"

      def install
        check_for_running_ockam_process
        bin.install "ockam.aarch64-apple-darwin" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.ockam.io/command/v0.156.0/ockam.x86_64-apple-darwin"
      sha256 "f1b5dbd2ee24b26f8be03d88cd026020020fd6237d2410ab5811843f30f4e611"

      def install
        check_for_running_ockam_process
        bin.install "ockam.x86_64-apple-darwin" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end
  end

  on_linux do
    # Linux sections with similar changes...
    if Hardware::CPU.arm?
      url "https://downloads.ockam.io/command/v0.156.0/ockam.aarch64-unknown-linux-musl"
      sha256 "c463e79c9acdafd54c1d37b664f4a9b5f3fc9f77ce331eb9a9432f53300cfdd6"

      def install
        check_for_running_ockam_process
        bin.install "ockam.aarch64-unknown-linux-musl" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.ockam.io/command/v0.156.0/ockam.x86_64-unknown-linux-musl"
      sha256 "bfe4fe52235688731db23d9feda6c3adff06469bd4be783c020e6779d76f7eea"

      def install
        check_for_running_ockam_process
        bin.install "ockam.x86_64-unknown-linux-musl" => "ockam"
        system "chmod", "+x", bin/"ockam"
        generate_completions_from_executable(bin/"ockam", "completion", "--shell")
      end
    end
  end

  test do
    system "ockam", "--version"
  end

  private

  def check_for_running_ockam_process
    ockam_pids = `pgrep ockam`.strip
    unless ockam_pids.empty?
      ohai "Detected running Ockam processes with PIDs: #{ockam_pids}"
      ohai "Do you want to kill the running Ockam processes and continue the installation? [y/N]"

      choice = $stdin.gets.strip.downcase
      if choice == "y"
        ohai "Killing the Ockam processes..."
        system "pkill", "ockam"
        loop do
          ockam_pids = `pgrep ockam`.strip
          break if ockam_pids.empty?
          sleep 1
        end
        ohai "All Ockam processes have been terminated."
      else
        odie "Installation aborted. Please stop the Ockam processes manually before installing."
      end
    end
  end
end
