class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.32.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.32.0/forge-x86_64-apple-darwin"
    sha256 "7914502672d0eda8d857317cc661723d976acbf2d1176721d381538f4e717147"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.32.0/forge-aarch64-apple-darwin"
    sha256 "4e2ad2b4bcf80fd8ada51c86aa04c51530fbcf94f007e47962778e923e5ed6fb"
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
