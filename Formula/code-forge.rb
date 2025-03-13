class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.39.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.39.0/forge-x86_64-apple-darwin"
    sha256 "3044a9c6901cf4b78ede0c66fd72a4bef38de03950474153ed1ffda822f541dd"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.39.0/forge-aarch64-apple-darwin"
    sha256 "9328e73c22d606b57d0f8eec943fa1e63a2a2750257ff8d1c2e5b84ec530fd33"
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
