class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v1.6.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v1.6.0/forge-x86_64-apple-darwin"
    sha256 "fc6ce526dcde3967ac8d826ca0f4edb52376746859ecf08a32286d6a02b40072"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v1.6.0/forge-aarch64-apple-darwin"
    sha256 "184b2bf7583f5848baae65e5b5f2210d63953726082b8ac68681035618b37398"
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
