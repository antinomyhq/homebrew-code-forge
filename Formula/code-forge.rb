class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.25.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.25.2/forge-x86_64-apple-darwin"
    sha256 "b388d9804d3e17cc436be9a7095ca0b40bda8d88c1a3652d86af9b9c5dfe7b9f"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.25.2/forge-aarch64-apple-darwin"
    sha256 "30638f12588c811d19df88dae0c0ff5b1da6269d40e9bd8c2597d01a9096791d"
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
