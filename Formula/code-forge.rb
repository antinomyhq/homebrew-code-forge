class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.10.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.10.0/forge-x86_64-apple-darwin"
    sha256 "16e52fbc480c8e4197c388a98ca80a4878793f2e13d67ebca48dad14424ef296"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.10.0/forge-aarch64-apple-darwin"
    sha256 "fc50c8ed12fffe2472cefbbb55e63111860a66766fdd110fe7ac7603a77f297b"
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
