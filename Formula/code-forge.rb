class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v1.15.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v1.15.0/forge-x86_64-apple-darwin"
    sha256 "af571d6d3f48403ca736d26893f73adb7a425705c613153ccc1de6dd32478492"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v1.15.0/forge-aarch64-apple-darwin"
    sha256 "6e23b2654d89b4efe4cd5c14433973716c6be57bdfb67d0b2657eb639705df41"
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
