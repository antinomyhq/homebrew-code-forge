class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.17.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.17.0/forge-x86_64-apple-darwin"
    sha256 "9e11d87216bd3a6e25ea11695d01bd7e310ba25d1b55668c5753e0184c25c03e"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.17.0/forge-aarch64-apple-darwin"
    sha256 "a08db5488ac392fe0c51fc0858a90a587eca6f8b4c7995736b9060aaa343c82b"
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
