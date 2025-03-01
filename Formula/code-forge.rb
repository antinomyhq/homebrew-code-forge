class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.26.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.26.0/forge-x86_64-apple-darwin"
    sha256 "266f62d24d72cb207b59fd26c48a23e51ed003a4c8c99bab024f660aaa58a1c8"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.26.0/forge-aarch64-apple-darwin"
    sha256 "663f968486214e06d48cd03985c03cc91af11d1117599a008a9a2a16000bb025"
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
