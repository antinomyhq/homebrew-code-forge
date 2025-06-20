class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.96.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.96.2/forge-x86_64-apple-darwin"
    sha256 "8737cc143eb60ed8bb7c397d8d98e28fdebb65e0773c65cd23cd74d29cb11601"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.96.2/forge-aarch64-apple-darwin"
    sha256 "402789afc40ac70995ae22ccc33bbdb4eabf068bd621e21f8ef4f67b56923ecd"
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
