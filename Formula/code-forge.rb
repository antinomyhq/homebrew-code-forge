class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.121.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.121.0/forge-x86_64-apple-darwin"
    sha256 "7ae6063871f0a95c4e341ffd61f98a6bc328bd1df5c7d3783541dbaa3c57bed6"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.121.0/forge-aarch64-apple-darwin"
    sha256 "c502f3adbf93d0873eac84cc743e0dd83938df0da958d091c5580966270f865d"
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
