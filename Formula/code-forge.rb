class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.64.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.64.1/forge-x86_64-apple-darwin"
    sha256 "c18134a68f0a293f533053c7e8f191a98c317ed054d83c0e7c62498a0b273534"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.64.1/forge-aarch64-apple-darwin"
    sha256 "ea3cf0564cbcfa5d18c33dfa730f90adfc3dd4eaf425f9c4870f47fe5f0ef66a"
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
