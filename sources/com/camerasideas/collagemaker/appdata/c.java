package com.camerasideas.collagemaker.appdata;

public enum c {
    Settings("Settings"),
    MainProIcon("MainProIcon"),
    MainProBanner("MainProBanner"),
    SavePro("SavePro"),
    ResultBanner("ResultBanner"),
    StoreBanner("StoreBanner"),
    StorePro("StorePro"),
    StoreUnlock("StoreUnlock"),
    EditUnlock("EditUnlock"),
    EditPro("EditPro"),
    EditProNeon("EditProNeon"),
    EditProCutout("EditProCutBG"),
    EditProPortraitStyle("EditProPortraitStyle"),
    EditProPortraitColor("EditProPortraitColor"),
    EditProPortraitSticker("EditProPortraitSticker"),
    EditProCartoon("EditProCartoon");
    
    private final String b;

    private c(String str) {
        this.b = str;
    }

    public String toString() {
        return this.b;
    }
}
