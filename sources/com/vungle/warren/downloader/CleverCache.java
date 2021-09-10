package com.vungle.warren.downloader;

import android.util.Base64;
import com.vungle.warren.SizeProvider;
import com.vungle.warren.VungleLogger;
import com.vungle.warren.persistence.CacheManager;
import com.vungle.warren.utility.FileUtility;
import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.protocol.HTTP;

public class CleverCache implements DownloaderCache {
    static final String ASSETS_DIR = "assets";
    static final String CACHE_META = "meta";
    public static final String CACHE_TOUCH_JOURNAL = "cache_touch_timestamp";
    public static final String CC_DIR = "clever_cache";
    private static final String META_POSTFIX_EXT = ".vng_meta";
    private static final String TAG = "CleverCache";
    private final CacheManager cacheManager;
    private final HashMap<File, Long> cacheTouchTime = new HashMap<>();
    private final long expirationAge;
    private final CachePolicy<File> policy;
    private final SizeProvider sizeProvider;
    private Map<File, Integer> trackedFiles = new ConcurrentHashMap();

    public CleverCache(CacheManager cacheManager2, CachePolicy<File> cachePolicy, SizeProvider sizeProvider2, long j) {
        this.cacheManager = cacheManager2;
        this.policy = cachePolicy;
        this.sizeProvider = sizeProvider2;
        this.expirationAge = Math.max(0L, j);
    }

    private synchronized void expirationCleanup() {
        long currentTimeMillis = System.currentTimeMillis() - this.expirationAge;
        File[] listFiles = getAssetsDir().listFiles();
        HashSet hashSet = new HashSet(this.cacheTouchTime.keySet());
        if (listFiles != null && listFiles.length > 0) {
            for (File file : listFiles) {
                long cacheUpdateTimestamp = getCacheUpdateTimestamp(file);
                hashSet.remove(file);
                if (!isProtected(file)) {
                    if (cacheUpdateTimestamp == 0 || cacheUpdateTimestamp <= currentTimeMillis) {
                        if (deleteContents(file)) {
                            this.cacheTouchTime.remove(file);
                            this.policy.remove(file);
                        }
                        String str = "Deleted expired file " + file;
                    }
                }
            }
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                this.cacheTouchTime.remove((File) it.next());
            }
            this.policy.save();
            saveTouchTimestamps();
        }
    }

    private File getCacheDir() {
        File file = new File(this.cacheManager.getCache(), CC_DIR);
        if (!file.isDirectory()) {
            FileUtility.deleteAndLogIfFailed(file);
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    private File getTouchTimestampsFile() {
        return new File(getCacheDir(), CACHE_TOUCH_JOURNAL);
    }

    private void integrityCleanup(List<File> list) {
        File metaDir = getMetaDir();
        File[] listFiles = getAssetsDir().listFiles();
        if (listFiles != null) {
            ArrayList arrayList = new ArrayList(Arrays.asList(listFiles));
            arrayList.removeAll(list);
            arrayList.remove(metaDir);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                File file = (File) it.next();
                deleteContents(file);
                String str = "Deleted non tracked file " + file;
            }
        }
    }

    private boolean isProtected(File file) {
        Integer num = this.trackedFiles.get(file);
        if (num == null || num.intValue() <= 0) {
            return false;
        }
        String str = "File is tracked and protected : " + file;
        return true;
    }

    private void loadTouchTimestamps() {
        Serializable serializable = (Serializable) FileUtility.readSerializable(getTouchTimestampsFile());
        if (serializable instanceof HashMap) {
            try {
                this.cacheTouchTime.putAll((HashMap) serializable);
            } catch (ClassCastException e) {
                VungleLogger.error("CleverCache#loadTouchTimestamps; loadAd sequence", String.format("Error %1$s occured; old map is not File -> Long", e));
                FileUtility.deleteAndLogIfFailed(getTouchTimestampsFile());
            }
        }
    }

    private void saveTouchTimestamps() {
        FileUtility.writeSerializable(getTouchTimestampsFile(), new HashMap(this.cacheTouchTime));
    }

    @Override // com.vungle.warren.downloader.DownloaderCache
    public synchronized void clear() {
        List<File> orderedCacheItems = this.policy.getOrderedCacheItems();
        int i = 0;
        integrityCleanup(orderedCacheItems);
        for (File file : orderedCacheItems) {
            if (file != null) {
                if (!isProtected(file)) {
                    if (deleteContents(file)) {
                        i++;
                        this.policy.remove(file);
                        this.cacheTouchTime.remove(file);
                    }
                }
            }
        }
        if (i > 0) {
            this.policy.save();
            saveTouchTimestamps();
        }
    }

    @Override // com.vungle.warren.downloader.DownloaderCache
    public synchronized boolean deleteAndRemove(File file) {
        if (!deleteContents(file)) {
            return false;
        }
        this.cacheTouchTime.remove(file);
        this.policy.remove(file);
        this.policy.save();
        saveTouchTimestamps();
        return true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x001f  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0022  */
    @Override // com.vungle.warren.downloader.DownloaderCache
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized boolean deleteContents(java.io.File r8) {
        /*
            r7 = this;
            monitor-enter(r7)
            r0 = 1
            r1 = 0
            com.vungle.warren.utility.FileUtility.delete(r8)     // Catch:{ IOException -> 0x0014 }
            java.io.File r2 = r7.getMetaFile(r8)     // Catch:{ IOException -> 0x000f }
            com.vungle.warren.utility.FileUtility.delete(r2)     // Catch:{ IOException -> 0x000f }
            monitor-exit(r7)
            return r0
        L_0x000f:
            r2 = move-exception
            r3 = 1
            goto L_0x0016
        L_0x0012:
            r8 = move-exception
            goto L_0x0038
        L_0x0014:
            r2 = move-exception
            r3 = 0
        L_0x0016:
            java.lang.String r4 = "CleverCache#deleteContents; loadAd sequence"
            java.lang.String r5 = "Cannot delete %1$s for file %2$s; Error %3$s occured"
            r6 = 3
            java.lang.Object[] r6 = new java.lang.Object[r6]     // Catch:{ all -> 0x0012 }
            if (r3 == 0) goto L_0x0022
            java.lang.String r3 = "meta"
            goto L_0x0024
        L_0x0022:
            java.lang.String r3 = "file"
        L_0x0024:
            r6[r1] = r3     // Catch:{ all -> 0x0012 }
            java.lang.String r8 = r8.getPath()     // Catch:{ all -> 0x0012 }
            r6[r0] = r8     // Catch:{ all -> 0x0012 }
            r8 = 2
            r6[r8] = r2     // Catch:{ all -> 0x0012 }
            java.lang.String r8 = java.lang.String.format(r5, r6)     // Catch:{ all -> 0x0012 }
            com.vungle.warren.VungleLogger.error(r4, r8)     // Catch:{ all -> 0x0012 }
            monitor-exit(r7)
            return r1
        L_0x0038:
            monitor-exit(r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.downloader.CleverCache.deleteContents(java.io.File):boolean");
    }

    public synchronized File getAssetsDir() {
        File file;
        file = new File(getCacheDir(), ASSETS_DIR);
        if (!file.isDirectory()) {
            FileUtility.deleteAndLogIfFailed(file);
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    @Override // com.vungle.warren.downloader.DownloaderCache
    public synchronized long getCacheUpdateTimestamp(File file) {
        Long l;
        l = this.cacheTouchTime.get(file);
        return l == null ? file.lastModified() : l.longValue();
    }

    @Override // com.vungle.warren.downloader.DownloaderCache
    public synchronized File getFile(String str) {
        File file;
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-256");
            instance.update(str.getBytes(HTTP.UTF_8));
            file = new File(getAssetsDir(), Base64.encodeToString(instance.digest(), 10));
            this.policy.put(file, 0);
        } catch (UnsupportedEncodingException e) {
            VungleLogger.error("CleverCache#getFile; loadAd sequence", "cannot encode url with charset = UTF-8");
            throw new IOException(e);
        } catch (NoSuchAlgorithmException e2) {
            VungleLogger.error("CleverCache#getFile; loadAd sequence", "cannot get instance of MessageDigest with algorithm " + "SHA-256");
            throw new IOException(e2);
        }
        return file;
    }

    public synchronized File getMetaDir() {
        File file;
        file = new File(getAssetsDir(), CACHE_META);
        if (!file.isDirectory()) {
            FileUtility.deleteAndLogIfFailed(file);
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    @Override // com.vungle.warren.downloader.DownloaderCache
    public synchronized File getMetaFile(File file) {
        File metaDir;
        metaDir = getMetaDir();
        return new File(metaDir, file.getName() + META_POSTFIX_EXT);
    }

    @Override // com.vungle.warren.downloader.DownloaderCache
    public synchronized void init() {
        this.policy.load();
        loadTouchTimestamps();
        expirationCleanup();
    }

    @Override // com.vungle.warren.downloader.DownloaderCache
    public synchronized void onCacheHit(File file, long j) {
        this.policy.put(file, j);
        this.policy.save();
        String str = "Cache hit " + file + " cache touch updated";
        purge();
    }

    @Override // com.vungle.warren.downloader.DownloaderCache
    public synchronized List<File> purge() {
        long targetSize = this.sizeProvider.getTargetSize();
        if (FileUtility.size(getAssetsDir()) < targetSize) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        List<File> orderedCacheItems = this.policy.getOrderedCacheItems();
        integrityCleanup(orderedCacheItems);
        long size = FileUtility.size(getAssetsDir());
        if (size < targetSize) {
            return Collections.emptyList();
        }
        for (File file : orderedCacheItems) {
            if (file != null && !isProtected(file)) {
                long length = file.length();
                if (deleteContents(file)) {
                    size -= length;
                    arrayList.add(file);
                    file.getName();
                    this.policy.remove(file);
                    this.cacheTouchTime.remove(file);
                    if (size < targetSize) {
                        targetSize = this.sizeProvider.getTargetSize();
                        if (size < targetSize) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            }
        }
        if (arrayList.size() > 0) {
            this.policy.save();
            saveTouchTimestamps();
        }
        return arrayList;
    }

    @Override // com.vungle.warren.downloader.DownloaderCache
    public synchronized void setCacheLastUpdateTimestamp(File file, long j) {
        this.cacheTouchTime.put(file, Long.valueOf(j));
        saveTouchTimestamps();
    }

    @Override // com.vungle.warren.downloader.DownloaderCache
    public synchronized void startTracking(File file) {
        int i;
        Integer num = this.trackedFiles.get(file);
        this.policy.put(file, 0);
        this.policy.save();
        if (num != null) {
            if (num.intValue() > 0) {
                i = Integer.valueOf(num.intValue() + 1);
                this.trackedFiles.put(file, i);
                String str = "Start tracking file: " + file + " ref count " + i;
            }
        }
        i = 1;
        this.trackedFiles.put(file, i);
        String str2 = "Start tracking file: " + file + " ref count " + i;
    }

    @Override // com.vungle.warren.downloader.DownloaderCache
    public synchronized void stopTracking(File file) {
        Integer num = this.trackedFiles.get(file);
        if (num == null) {
            this.trackedFiles.remove(file);
            return;
        }
        Integer valueOf = Integer.valueOf(num.intValue() - 1);
        if (valueOf.intValue() <= 0) {
            this.trackedFiles.remove(file);
        }
        String str = "Stop tracking file: " + file + " ref count " + valueOf;
    }
}
