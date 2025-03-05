class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.29.3"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.29.3/forge-x86_64-apple-darwin"
    sha256 "b86baed41ead6d5d2b0cd0535103e24d92fbfbd8451c69463bc97d7b960c1699"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.29.3/forge-aarch64-apple-darwin"
    sha256 "c4ea39c0bb4f5a69ad3bd7f8faaa230c3ee0a45ce50f54f4ef9d0bb52f7da061"
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
