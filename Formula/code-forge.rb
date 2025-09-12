class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.116.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.116.0/forge-x86_64-apple-darwin"
    sha256 "9ebfaf140fa07b87459dc4bcd3f5ccafad0adc667f67f2b152dc71cb65942fd9"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.116.0/forge-aarch64-apple-darwin"
    sha256 "0ea2c735cc41c9d1e223b6597f552f23809605d674fc393cb956d3bc0237211e"
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
