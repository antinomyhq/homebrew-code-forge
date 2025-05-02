class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.84.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.84.0/forge-x86_64-apple-darwin"
    sha256 "282fa6094fbbd41d7ae00f1e6c4a3f8e84c9537b472c0ae3ca016564a69b732a"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.84.0/forge-aarch64-apple-darwin"
    sha256 "331ca2d407c0117b1985565fb47f3ede66a33e685e22f36e4b487f23f42cec73"
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
