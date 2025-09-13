class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.117.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.117.0/forge-x86_64-apple-darwin"
    sha256 "6132d9da406e630e5312ff7b1ad018090084f6b1817fab0ddc8430fe9566c5d7"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.117.0/forge-aarch64-apple-darwin"
    sha256 "8c0950f6f55f8a67a7a46e5f618abb03d197460ff83abb74022e0f602b338afe"
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
