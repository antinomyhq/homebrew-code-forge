class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.99.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.99.0/forge-x86_64-apple-darwin"
    sha256 "d1d94221f3b0bc6442fd684e47b26d63a1f5d78fa6ce6dc4ecd625e50b216d98"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.99.0/forge-aarch64-apple-darwin"
    sha256 "2669e04bc2e692f642b6abc4a6d694b2f896d5ef29eb293d3aa90997ef20d9fe"
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
