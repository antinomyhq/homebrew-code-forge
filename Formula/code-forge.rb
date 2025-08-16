class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.108.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.108.0/forge-x86_64-apple-darwin"
    sha256 "20a8007067d87789cd7449205d958a7ae6174f1cb0e12b79ed30d18ffca49a25"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.108.0/forge-aarch64-apple-darwin"
    sha256 "6517412bd1eabcfddd04e37c22deaf13482134c5956e77e003d6fe19bb62b417"
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
