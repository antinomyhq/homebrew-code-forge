class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.100.3"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.100.3/forge-x86_64-apple-darwin"
    sha256 "8f9585012a69f30758cbacd1800e9e1140eabd3a8fa3be8dda25d3d48f94dbb7"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.100.3/forge-aarch64-apple-darwin"
    sha256 "eec0eaf883f9cf7db60659339a9b951fb2d5d29166345461633a3ea1db93bc6b"
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
