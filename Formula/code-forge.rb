class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.104.4"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.104.4/forge-x86_64-apple-darwin"
    sha256 "f7dbd19a9eb4e2c8b0a470310530e9db9c013859f7866d1fca7bbd0a33831bdf"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.104.4/forge-aarch64-apple-darwin"
    sha256 "36c6bb49ecb002da70bbb39ad74427b210467b3a7c493276aac48c4a682e932f"
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
