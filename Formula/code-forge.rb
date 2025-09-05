class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.114.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.114.0/forge-x86_64-apple-darwin"
    sha256 "0e9500b52e9e93534c374084f1bd0ccd737cdd9fb24f2f0a1c8783747631bc78"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.114.0/forge-aarch64-apple-darwin"
    sha256 "6b121c397762acec5e2b300eb28537ba3e62b131b10f4fd1744d7a48f6b0a624"
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
