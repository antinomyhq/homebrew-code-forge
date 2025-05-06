class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.87.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.87.2/forge-x86_64-apple-darwin"
    sha256 "d2841813131ad708ee7cd5f72664a7eeb2749ce222e14494f65a968bc796e6e1"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.87.2/forge-aarch64-apple-darwin"
    sha256 "0a2a669bfad0dad50b16f115a886bc4b8779a36b302d034f33339df507a7a924"
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
