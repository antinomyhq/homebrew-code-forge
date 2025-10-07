class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.123.3"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.123.3/forge-x86_64-apple-darwin"
    sha256 "a7e7a91088d5b1f8af673d7446349bf6d7654f2f8cca99d516250bc8f7b554eb"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.123.3/forge-aarch64-apple-darwin"
    sha256 "0e356ad88139971e925e0693fb93c02d2744e9a3def2857fffd45262234d67f9"
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
