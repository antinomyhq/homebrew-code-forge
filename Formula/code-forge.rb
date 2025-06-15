class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.95.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.95.0/forge-x86_64-apple-darwin"
    sha256 "a72cc86ddccf228d76a2d2146ba5d2616121d46dc526238c1f809f7dbb900b0f"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.95.0/forge-aarch64-apple-darwin"
    sha256 "e351cdb812b41ac6e1b5761e73dd53b5846d94c24da2c0215ac1bf58ef69c793"
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
