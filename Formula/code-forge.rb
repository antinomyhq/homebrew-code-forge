class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.43.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.43.1/forge-x86_64-apple-darwin"
    sha256 "6ffb932cb99f5c78bdf7f807226d3374f57362169f67411cd48e0b2b59b74e97"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.43.1/forge-aarch64-apple-darwin"
    sha256 "5324eb7494eae82b2d737627f2c57edb1a4f7ad2152d007bb1b56136959e3ad0"
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
