class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.30.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.30.0/forge-x86_64-apple-darwin"
    sha256 "8c627b8249730c34e78928a60681853e3e38a4d182d89361193a0d8b1d56ca58"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.30.0/forge-aarch64-apple-darwin"
    sha256 "34c8861935f4e6f9c9cf798137c5254da20fe17da07dfb08287437dca2b6698b"
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
