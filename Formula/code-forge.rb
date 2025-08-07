class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.105.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.105.0/forge-x86_64-apple-darwin"
    sha256 "6ea2f7407e832b5b4aa48449ac7fa1c544cc8b9c14fbba233e56a2c70f619dcc"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.105.0/forge-aarch64-apple-darwin"
    sha256 "99c5bb79369d501e7a8cc641b72f8e5c920e7586c5e28a4101dd2d6f11c078e9"
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
