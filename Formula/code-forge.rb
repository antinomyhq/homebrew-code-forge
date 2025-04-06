class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.60.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.60.2/forge-x86_64-apple-darwin"
    sha256 "f58fceeb142fb2373653f7edcd4b7d48170bc87063fded14a80311bee7f0b5c5"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.60.2/forge-aarch64-apple-darwin"
    sha256 "6c522de9c91fbcbfbc5feb2c96ac95fc4bef3c2110b00674cdae07e62169806c"
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
