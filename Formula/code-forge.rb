class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.53.3"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.53.3/forge-x86_64-apple-darwin"
    sha256 "046a0da55ca31c2b4144132be089959bd0d5c786e3416b93f3e7478fc49b59cc"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.53.3/forge-aarch64-apple-darwin"
    sha256 "58d9fb9dec3cf20b3fe6b8d6ece482cc51c1b0201277e84294bfc8b46f635b65"
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
