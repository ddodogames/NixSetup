{ config, pkgs, ... }:


{

nixpkgs.overlays = [
  (import (builtins.fetchTarball "https://github.com/mozilla/nixpkgs-mozilla/archive/master.tar.gz"))
];

  # Install Firefox Beta and configure it a bit
  programs.firefox = {
    package = pkgs.latest.firefox-beta-bin;
    enable = true;
    nativeMessagingHosts.packages = [ pkgs.firefoxpwa ];
    policies = {
      "DisableFirefoxStudies" = true;
      "OfferToSaveLoginsDefault" = false;
    };
    preferences = {
      # Allow CSS theming
      "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
      "svg.context-properties.content.enabled" = true;
      # Enable Nova redesign
      "browser.nova.enabled" = true;
      "browser.newtabpage.activity-stream.nova.enabled" = true;
      "browser.urlbar.quicksuggest.ampTopPickUseNovaIconSize" = true;
      "browser.compactmode.show" = true;
      # Disable AI features
      "browser.ml.chat.enabled" = false;
      "browser.ml.chat.sidebar" = false;
      "browser.ml.enable" = false;
      "browser.tabs.groups.smart.enabled" = false;
      "browser.tabs.groups.smart.userEnabled" = false;
      "browser.ai.control.default" = "blocked";
      "browser.ai.control.linkPreviewKeyPoints" = "blocked";
      "browser.ai.control.pdfjsAltText" = "blocked";
      "browser.ai.control.sidebarChatbot" = "blocked";
      "browser.ai.control.smartTabGroups" = "blocked";
      "browser.ai.control.smartWindow" = "blocked";
      "browser.ai.control.translations" = "blocked";
      # Do not trim URLs
      "browser.urlbar.trimURLs" = false;
      "browser.urlbar.trimHttps" = false;
      # Configure the download behavior
      "browser.download.useDownloadDir" = false;
      "browser.download.manager.addToRecentDocs" = false;
      "browser.download.always_ask_before_handling_new_types" = true;
      # Allow viewing image information
      "browser.menu.showViewImageInfo" = true;
      # Disable annoying stuff like sponsored part (and others that i don't want)
      "browser.aboutConfig.showWarning" = false;
      "general.smoothScroll" = false;
      "layers.acceleration.disabled" = true;
      "gfx.webrender.all" = false; # Always disabled by default in all of my installations
      "browser.preferences.defaultPerformanceSettings.enabled" = false;
      "browser.preferences.moreFromMozilla" = false;
      "browser.aboutwelcome.enabled" = false;
      "extensions.getAddons.showPane" = false;
      "extensions.htmlaboutaddons.recommendations.enabled" = false;
      "browser.newtabpage.activity-stream.showSponsored" = false;
      "browser.newtabpage.activity-stream.showSponsoredCheckboxes" = false;
      "browser.newtabpage.activity-stream.showSponsoredTopSites" = false;
      "browser.shell.checkDefaultBrowser" = false;
      "layout.word_select.eat_space_to_next_word" = false;
      "browser.settings-redesign.promo.dismissed" = true;
      # Unload tabs on low memory after one hour of inactivity
      "browser.tabs.unloadOnLowMemory" = true;
      "browser.low_commit_space_threshold_percent" = 100;
      "browser.tabs.min_inactive_duration_before_unload" = 3600000;
    };
  };

}
