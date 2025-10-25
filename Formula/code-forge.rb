class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v1.0.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v1.0.0/forge-x86_64-apple-darwin"
    sha256 "ed74041763b4738f39dad10d71a6ab2ddec6b8aa6d314c4fe164c7ed18451913"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v1.0.0/forge-aarch64-apple-darwin"
    sha256 "0bab761bfa0e3820102d1c798ce21fdf31acca707bdff282cdb66c8607bf7111"
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
