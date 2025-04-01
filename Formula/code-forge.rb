class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.55.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.55.0/forge-x86_64-apple-darwin"
    sha256 "a7b993d7bb05d3be0c98a17dbb42bc179c76146b49ab499766d7d21af32558e5"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.55.0/forge-aarch64-apple-darwin"
    sha256 "84c6464e2dd606616bec3ba8d5a66e02b2d8c45d1a8c1cf3ab00f9b38936c940"
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
