class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.45.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.45.0/forge-x86_64-apple-darwin"
    sha256 "8fc9b454f0c2e10f161c78a98399679d3d699962a13f518021343fed6bf605b1"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.45.0/forge-aarch64-apple-darwin"
    sha256 "6f43f133991672f0f3c2592e512e8c01db7692080d2f71334c6df844b265f5fb"
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
