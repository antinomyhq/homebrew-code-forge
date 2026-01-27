class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v1.22.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v1.22.0/forge-x86_64-apple-darwin"
    sha256 "006dde800f7999d8be35e13870841bdd4a0943f2e7654d33dde918e740269074"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v1.22.0/forge-aarch64-apple-darwin"
    sha256 "9cf1be66e07c056aa546377aab78c84c3647f27924544532546d8254cbddeae0"
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
