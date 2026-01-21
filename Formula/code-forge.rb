class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v1.19.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v1.19.0/forge-x86_64-apple-darwin"
    sha256 "970f8e1842bd673a16e9327cfe3f4c778b23212f6957d888bb9eb2e9c19a0a72"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v1.19.0/forge-aarch64-apple-darwin"
    sha256 "5f3cb3d92e9b11521084153bcb556a82da67cc2ad1b937234a6dace01b2f6119"
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
