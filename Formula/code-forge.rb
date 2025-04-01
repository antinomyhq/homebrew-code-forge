class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.53.6"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.53.6/forge-x86_64-apple-darwin"
    sha256 "9413b9543a4b3e69de17853b9055abc9ff0e945b3cc9787654b674260de037c5"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.53.6/forge-aarch64-apple-darwin"
    sha256 "cdbb5813d4989f9c81890ef7d280ac8bd3305ba1962270b0d45ce1462f133568"
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
