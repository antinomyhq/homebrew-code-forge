class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.83.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.83.2/forge-x86_64-apple-darwin"
    sha256 "b68a9fd363e7b325f72023746069a77c19124da2eb99f95b69874e30cace661f"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.83.2/forge-aarch64-apple-darwin"
    sha256 "1f7598a981e8581128abe41df4308beee3346776cac7ef3d24c6e3b27797ffeb"
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
