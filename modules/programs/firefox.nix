{ config, pkgs, ... }:

{

# Install Firefox ESR and configure it a bit
programs.firefox = {
package = pkgs.firefox-esr;
enable = true;
policies = {
"DisableFirefoxStudies" = true;
"HardwareAcceleration" = false;
"OfferToSaveLoginsDefault" = false;
};
preferences = {
# Allow CSS theming
"toolkit.legacyUserProfileCustomizations.stylesheets" = true;
"svg.context-properties.content.enabled" = true;
# Disable AI features
"browser.ml.chat.enabled" = false;
"browser.ml.chat.sidebar" = false;
"browser.ml.enable" = false;
"browser.tabs.groups.smart.enabled" = false;
"browser.tabs.groups.smart.userEnabled" = false;
# Enable profiles
"browser.profiles.enabled" = true;
# Do not trim URLs
"browser.urlbar.trimURLs" = false;
# Configure the download behavior
"browser.download.useDownloadDir" = false;
"browser.download.manager.addToRecentDocs" = false;
"browser.download.always_ask_before_handling_new_types" = true;
# Disable annoying stuff like sponsored part
"browser.aboutConfig.showWarning" = false;
"general.smoothScroll" = false; # I don't want this enabled.
"browser.preferences.moreFromMozilla" = false;
"browser.aboutwelcome.enabled" = false;
"browser.startup.homepage_override.mstone" = "ignore";
"extensions.getAddons.showPane" = false;
"extensions.htmlaboutaddons.recommendations.enabled" = false;
"browser.newtabpage.activity-stream.showSponsored" = false;
"browser.newtabpage.activity-stream.showSponsoredCheckboxes" = false;
"browser.newtabpage.activity-stream.showSponsoredTopSites" = false;
"browser.shell.checkDefaultBrowser" = false;
"layout.word_select.eat_space_to_next_word" = false;
# Unload tabs on low memory
"browser.tabs.unloadOnLowMemory" = true;
};
};



}
