class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.96.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.96.0/forge-x86_64-apple-darwin"
    sha256 "c813a5fde6afd057fe00ebc792c7a7461cd345182180dcfdd3b889c10cedce1b"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.96.0/forge-aarch64-apple-darwin"
    sha256 "99568658e59b7cd87e7a516fa14e23d759f8f3953baaaabbb0865c8929469cfa"
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
