class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.29.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.29.2/forge-x86_64-apple-darwin"
    sha256 "f90d2a9f7e6d185920de8e2a8b029278072ef711516d62531c181b892259ef5a"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.29.2/forge-aarch64-apple-darwin"
    sha256 "82ca6acd3d3a4fe83edfee0197414e8d7079df930b22ae927a68ac780038f754"
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
