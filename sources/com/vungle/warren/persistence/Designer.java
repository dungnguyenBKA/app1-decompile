package com.vungle.warren.persistence;

import java.io.File;

public interface Designer {
    void clearCache();

    void deleteAssets(String str);

    File getAssetDirectory(String str);

    File getCacheDirectory();
}
