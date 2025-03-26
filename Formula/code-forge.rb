class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.51.6"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.51.6/forge-x86_64-apple-darwin"
    sha256 "32e040dd133bec64776dda07d68d71be8335380ed3943f51dd6f48e8ac5668b5"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.51.6/forge-aarch64-apple-darwin"
    sha256 "61332c92b682c26e2c58879d83be2ffa5621a294feaf877ecf34c782d97f9110"
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
