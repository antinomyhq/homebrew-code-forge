class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.82.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.82.0/forge-x86_64-apple-darwin"
    sha256 "3431f830f564b79446d84af2fcb543b9c2a378d505b62245f009caac70304d07"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.82.0/forge-aarch64-apple-darwin"
    sha256 "8ada22defb9eec90930f2f230ca396926f2b9c5ace55ce32873f1ba7f92364ea"
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
