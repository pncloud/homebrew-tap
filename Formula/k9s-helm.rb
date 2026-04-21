# typed: false
# frozen_string_literal: true

# This file is auto-updated by GoReleaser on each release.
# Manual edits will be overwritten.
class K9sHelm < Formula
  desc "A terminal UI for Kubernetes with first-class Helm support — history, rollback, and revision diffs"
  homepage "https://github.com/pncloud/k9s-helm"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pncloud/k9s-helm/releases/download/v0.1.0/k9s-helm_0.1.0_darwin_arm64.tar.gz"
      sha256 "4d54b6f199871095ce3815d245e4fe9ea0a401ce097749472e26e835b3b1e4ab"
    else
      url "https://github.com/pncloud/k9s-helm/releases/download/v0.1.0/k9s-helm_0.1.0_darwin_amd64.tar.gz"
      sha256 "183e7935e1401beb91c6566acf37c62ec6a9321184353e464d591ae76c7edb06"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pncloud/k9s-helm/releases/download/v0.1.0/k9s-helm_0.1.0_linux_arm64.tar.gz"
      sha256 "94ca919ccea8b5d7c81fdc68f52330af246a66938b11223c8bd55ed5998e41b6"
    else
      url "https://github.com/pncloud/k9s-helm/releases/download/v0.1.0/k9s-helm_0.1.0_linux_amd64.tar.gz"
      sha256 "54400e1af88832e6c7064163ac4955c4dd72f507940e1f6f2c6b0fed71af6efe"
    end
  end

  def install
    bin.install "k9s-helm"
  end

  test do
    system "#{bin}/k9s-helm --help"
  end
end
