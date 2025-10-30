class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v1.2.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v1.2.0/forge-x86_64-apple-darwin"
    sha256 "08a3a1624f50f5e687764f8bf2d4174ae1c341c3a16066770e4dca02e13941e1"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v1.2.0/forge-aarch64-apple-darwin"
    sha256 "981f719fa338e9d6d298b546c86a10cf4076baa8c49294381264efaae96dd6d5"
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
