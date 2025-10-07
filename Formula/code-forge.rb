class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.123.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.123.2/forge-x86_64-apple-darwin"
    sha256 "1dfc545044aa9e3a207e9ae12b2e2eec985ae530e3bae80f4400d99b0764eac2"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.123.2/forge-aarch64-apple-darwin"
    sha256 "be729d12663a126923ebb5b0717e36ac217653937d04b6bc029a2fbd075b0bba"
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
