class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.69.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.69.0/forge-x86_64-apple-darwin"
    sha256 "78cd6e31c9882f95d4e10fdb94eac5214d943d0816d2fe0583f1684ea8c8b336"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.69.0/forge-aarch64-apple-darwin"
    sha256 "90b22acb8435e4a67db6ce829481593a927f42d6ea904410b389ea3610ad4fec"
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
