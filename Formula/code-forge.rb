class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.22.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.22.0/forge-x86_64-apple-darwin"
    sha256 "607612bad519ed94b0da31224b5859df04dbba8ee82c412f7724a9e92623cbd1"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.22.0/forge-aarch64-apple-darwin"
    sha256 "861b29544e2044b2bbe78a33c5c3c5e88045ea84cbc9c1bd42b23cd653b45e95"
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
