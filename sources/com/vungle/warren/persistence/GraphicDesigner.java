package com.vungle.warren.persistence;

import android.util.Log;
import com.vungle.warren.persistence.CacheManager;
import com.vungle.warren.utility.FileUtility;
import java.io.File;
import java.io.IOException;

public class GraphicDesigner implements Designer, CacheManager.Listener {
    private static final String FOLDER_NAME = "vungle";
    private static final String TAG = "GraphicDesigner";
    private CacheManager cacheManager;

    public GraphicDesigner(CacheManager cacheManager2) {
        this.cacheManager = cacheManager2;
        cacheManager2.addListener(this);
        FileUtility.printDirectoryTree(getCacheDirectory());
    }

    @Override // com.vungle.warren.persistence.Designer
    public void clearCache() {
        CacheManager cacheManager2 = this.cacheManager;
        if (cacheManager2 != null && cacheManager2.getCache() != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.cacheManager.getCache().getPath());
            File file = new File(ic.l(sb, File.separator, FOLDER_NAME));
            if (file.exists()) {
                try {
                    FileUtility.delete(file);
                } catch (IOException e) {
                    String str = TAG;
                    StringBuilder q = ic.q("Failed to delete cached files. Reason: ");
                    q.append(e.getLocalizedMessage());
                    Log.e(str, q.toString());
                }
            }
            if (!file.exists()) {
                file.mkdir();
            }
        }
    }

    @Override // com.vungle.warren.persistence.Designer
    public void deleteAssets(String str) {
        File[] listFiles = getCacheDirectory().listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.isDirectory() && file.getName().equals(str)) {
                    FileUtility.delete(file);
                }
            }
        }
    }

    @Override // com.vungle.warren.persistence.Designer
    public File getAssetDirectory(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(getCacheDirectory().getPath());
        File file = new File(ic.l(sb, File.separator, str));
        if (!file.exists()) {
            file.mkdir();
        }
        return file;
    }

    @Override // com.vungle.warren.persistence.Designer
    public File getCacheDirectory() {
        if (this.cacheManager != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.cacheManager.getCache());
            File file = new File(ic.l(sb, File.separator, FOLDER_NAME));
            if (!file.exists()) {
                file.mkdir();
            }
            return file;
        }
        throw new IllegalStateException("Context has expired, cannot continue.");
    }

    @Override // com.vungle.warren.persistence.CacheManager.Listener
    public void onCacheChanged() {
        CacheManager cacheManager2 = this.cacheManager;
        if (cacheManager2 != null) {
            for (File file : cacheManager2.getOldCaches()) {
                try {
                    FileUtility.delete(new File(file.getPath() + File.separator + FOLDER_NAME));
                } catch (IOException e) {
                    String str = TAG;
                    StringBuilder q = ic.q("Failed to delete cached files. Reason: ");
                    q.append(e.getLocalizedMessage());
                    Log.e(str, q.toString());
                }
            }
        }
    }
}
