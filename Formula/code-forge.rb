class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.65.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.65.0/forge-x86_64-apple-darwin"
    sha256 "74ececeee562d52be25abff1bfe97290d9167ddfc3a2bb26479186541e44133b"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.65.0/forge-aarch64-apple-darwin"
    sha256 "b66c0291089b65c518c5822a937a946715e1c09d534b2d2a0947342c46eb5be2"
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
