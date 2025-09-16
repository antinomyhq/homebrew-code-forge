class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.118.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.118.0/forge-x86_64-apple-darwin"
    sha256 "33495d8a6f4da8d6130016f6a5224704fb2c5b2090a0724589cf662a479bbf81"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.118.0/forge-aarch64-apple-darwin"
    sha256 "716aeea9dcf293200bd786fee7ca61e75b4517c810531a586af564d9bbd145a3"
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
