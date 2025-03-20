class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.51.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.51.0/forge-x86_64-apple-darwin"
    sha256 "f893c27d2c754e6adb677142384c2b7f36bb50982a8e06e776e65eb67fdf4ae8"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.51.0/forge-aarch64-apple-darwin"
    sha256 "1cf2968c239971d5f81fe00dd61ca8b9b8fe6c6294ec2551ec06aa8d427686c6"
  end

  def install
    if Hardware::CPU.intel?
        executable_name = "forge-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "forge-aarch64-apple-darwin"
    end
    bin.install executable_name => "forge"
  end
end
