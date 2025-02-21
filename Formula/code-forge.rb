class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.23.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.23.0/forge-x86_64-apple-darwin"
    sha256 "62cc888376ffc5207540cfd4a68e48dce78fcf2e1eff66ff5f47fc731e499061"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.23.0/forge-aarch64-apple-darwin"
    sha256 "ed918a90869f0ea8c76664a2af778c1936c852fb4a603684c927403f72272019"
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
