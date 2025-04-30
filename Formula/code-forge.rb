class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.79.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.79.2/forge-x86_64-apple-darwin"
    sha256 "d5e7f9698931939e5b94afd487a806766cab13f407cb8d1a1649065ca737763d"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.79.2/forge-aarch64-apple-darwin"
    sha256 "2aa59650606e87f586001c46103cbd3572e7d7420ee13e73c54add232f2cb485"
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
