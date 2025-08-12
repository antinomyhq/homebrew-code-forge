class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.106.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.106.0/forge-x86_64-apple-darwin"
    sha256 "ada34fe87cc0f88fe6cc9210ccc68dd8b88a2199e328e759f4bf1b0c44a50ac2"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.106.0/forge-aarch64-apple-darwin"
    sha256 "0cd63872759395d928c37b16bb388abd9341aac9c3eebd50e76cedb7c0fd9004"
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
