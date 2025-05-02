class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.80.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.80.0/forge-x86_64-apple-darwin"
    sha256 "4f74a5c9d72f70d74b37ccd9237dab4120977431f0fce12d25198797e59ead44"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.80.0/forge-aarch64-apple-darwin"
    sha256 "980cc6862935979edae45528d4a5c12480c288b7915a83ea8164d6ef4465eb82"
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
