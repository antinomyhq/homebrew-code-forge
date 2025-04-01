class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.53.5"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.53.5/forge-x86_64-apple-darwin"
    sha256 "068d0279510de9d703b34623a12b6dd4f2e9d4f163ab2bfd4871b7b30dccbd9b"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.53.5/forge-aarch64-apple-darwin"
    sha256 "20bca2c27e9ec02d36d8cb05a4599dcafe87d4fec84962f0ec78d077f1e7cbff"
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
