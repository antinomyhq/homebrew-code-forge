class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.74.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.74.0/forge-x86_64-apple-darwin"
    sha256 "4724cd1583d81e5e48788be9aac8daceb61ece53d54be5e1ffda4e1e7fe28b48"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.74.0/forge-aarch64-apple-darwin"
    sha256 "69806d1e8102180b41288190420235e5578b21d6b99d0d9868755d246e8fd62c"
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
