class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.85.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.85.2/forge-x86_64-apple-darwin"
    sha256 "b1156526c96643548d248225e8f265b769ce5a1ec7e1737528b59330c21c414b"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.85.2/forge-aarch64-apple-darwin"
    sha256 "4d8f991b6adaef250bf06670d1ed1e87990941b8c65da95a8ae484674657cc9a"
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
