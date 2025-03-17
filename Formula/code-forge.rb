class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.46.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.46.2/forge-x86_64-apple-darwin"
    sha256 "f7a1128acfe970be647d2ceeb7d091d0853ca4a827b21154de39c883300df644"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.46.2/forge-aarch64-apple-darwin"
    sha256 "fe096f3d16ea1f811659025b055e6681ecfbe9e1052c0dee3a9aac7d432cd4b1"
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
