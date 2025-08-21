class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.110.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.110.1/forge-x86_64-apple-darwin"
    sha256 "44d4e325483ff535712935a24ac0afe8f561d0ed643457b925d37dd14097efe4"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.110.1/forge-aarch64-apple-darwin"
    sha256 "90609334a871a18381bfd054b2b4fc3b51b490f525b062b8b89ddde9838b2cca"
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
