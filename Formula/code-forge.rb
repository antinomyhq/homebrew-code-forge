class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.58.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.58.1/forge-x86_64-apple-darwin"
    sha256 "afa21b2e20c48270c2d9179a3bdfd6037a876e09d6935baca8ec2b48cc67fe28"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.58.1/forge-aarch64-apple-darwin"
    sha256 "3d6e33bd03752289c823dc25b4e7d84acae991e35f075c1c4a22c36be7ad1932"
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
