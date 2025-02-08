class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.7.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.7.0/forge-x86_64-apple-darwin"
    sha256 "8e35bbbf09907ae9eed17e580ca53a338a7a924d36cbc02a322c12f4de758a17"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.7.0/forge-aarch64-apple-darwin"
    sha256 "1a97c0871173117ce11ae4fcb56219043e2ee4e52c92d026fb26c43884b1633b"
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
