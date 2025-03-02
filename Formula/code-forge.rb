class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.27.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.27.0/forge-x86_64-apple-darwin"
    sha256 "f8c809eb298a16b4f87bf495d10b07e80f41c14f863181cc8cb7de62dd56f9c7"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.27.0/forge-aarch64-apple-darwin"
    sha256 "49ef70b060fb5a5f1b6ec9c7928621693a9f3b898d1d410c5d130731551d4ffb"
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
