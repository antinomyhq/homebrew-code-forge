class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.53.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.53.2/forge-x86_64-apple-darwin"
    sha256 "7bbf4dbda8342d8bfeaa5cc3b7f7a3a7aa2980da1370706bcc93b1c1e2e9e1b6"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.53.2/forge-aarch64-apple-darwin"
    sha256 "d6ecc076008378afc735c787445405254f2d695667968b33bf9a538bcc7e6634"
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
