class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.1.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.1.2/forge-x86_64-apple-darwin"
    sha256 "b22904bebe61c57e24d8ccc529382d4dc2d4906bc32113cf89c9093dae8dd9f0"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.1.2/forge-aarch64-apple-darwin"
    sha256 "e446e070b408c8f52f0b73187b820ccd2e297adc2bc7da602a7b81ca9ef5cb82"
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
