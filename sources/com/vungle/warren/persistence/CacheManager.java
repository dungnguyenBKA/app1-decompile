package com.vungle.warren.persistence;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Environment;
import android.os.FileObserver;
import android.os.StatFs;
import android.util.Log;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class CacheManager {
    private static final String COM_VUNGLE_SDK = "com.vungle.sdk";
    private static final String PATH_ID = "cache_path";
    private static final String PATH_IDS = "cache_paths";
    private static final String TAG = "CacheManager";
    static final long UNKNOWN_SIZE = -1;
    private static final String VUNGLE_DIR = "vungle_cache";
    private boolean changed;
    private final Context context;
    private File current;
    private Set<Listener> listeners = new HashSet();
    private List<FileObserver> observers = new ArrayList();
    private List<File> old = new ArrayList();
    private final SharedPreferences prefs;

    public interface Listener {
        void onCacheChanged();
    }

    public CacheManager(Context context2) {
        this.context = context2;
        this.prefs = context2.getSharedPreferences(COM_VUNGLE_SDK, 0);
    }

    private void check() {
        File file = this.current;
        if (file == null || !file.exists() || !this.current.isDirectory() || !this.current.canWrite()) {
            selectFileDest();
        }
    }

    private synchronized void observeDirectory(File file) {
        if (file != null) {
            this.observers.clear();
            this.observers.add(new FileObserver(file.getPath(), 1024) {
                /* class com.vungle.warren.persistence.CacheManager.AnonymousClass1 */

                public void onEvent(int i, String str) {
                    stopWatching();
                    CacheManager.this.selectFileDest();
                }
            });
            while (file.getParent() != null) {
                final String name = file.getName();
                this.observers.add(new FileObserver(file.getParent(), 256) {
                    /* class com.vungle.warren.persistence.CacheManager.AnonymousClass2 */

                    public void onEvent(int i, String str) {
                        stopWatching();
                        if (name.equals(str)) {
                            CacheManager.this.selectFileDest();
                        }
                    }
                });
                file = file.getParentFile();
            }
            for (FileObserver fileObserver : this.observers) {
                fileObserver.startWatching();
            }
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private synchronized void selectFileDest() {
        File file;
        boolean z;
        File file2 = null;
        if (this.current == null) {
            String string = this.prefs.getString(PATH_ID, null);
            this.current = string != null ? new File(string) : null;
        }
        File externalFilesDir = this.context.getExternalFilesDir(null);
        File filesDir = this.context.getFilesDir();
        File[] fileArr = new File[2];
        fileArr[0] = new File(Environment.getExternalStorageState().equals("mounted") && externalFilesDir != null ? externalFilesDir : filesDir, VUNGLE_DIR);
        fileArr[1] = new File(filesDir, VUNGLE_DIR);
        Iterator it = Arrays.asList(fileArr).iterator();
        boolean z2 = false;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            File file3 = (File) it.next();
            if (file3.exists() && file3.isFile() && !file3.delete()) {
                break;
            }
            if (!file3.exists()) {
                z2 = file3.mkdirs();
                z = z2;
                continue;
            } else if (!file3.isDirectory() || !file3.canWrite()) {
                z = false;
                continue;
            } else {
                z = true;
                continue;
            }
            if (z) {
                file2 = file3;
                break;
            }
        }
        File cacheDir = this.context.getCacheDir();
        Set<String> stringSet = this.prefs.getStringSet(PATH_IDS, new HashSet());
        if (file2 != null) {
            stringSet.add(file2.getPath());
        }
        stringSet.add(cacheDir.getPath());
        this.prefs.edit().putStringSet(PATH_IDS, stringSet).apply();
        this.old.clear();
        for (String str : stringSet) {
            if (file2 == null || !file2.getPath().equals(str)) {
                this.old.add(new File(str));
            }
        }
        if (z2 || ((file2 != null && !file2.equals(this.current)) || ((file = this.current) != null && !file.equals(file2)))) {
            this.current = file2;
            if (file2 != null) {
                this.prefs.edit().putString(PATH_ID, this.current.getPath()).apply();
            }
            for (Listener listener : this.listeners) {
                listener.onCacheChanged();
            }
            this.changed = true;
        }
        observeDirectory(externalFilesDir);
    }

    public synchronized void addListener(Listener listener) {
        check();
        this.listeners.add(listener);
        if (this.changed) {
            listener.onCacheChanged();
        }
    }

    public long getBytesAvailable() {
        return getBytesAvailable(1);
    }

    public synchronized File getCache() {
        check();
        return this.current;
    }

    public synchronized List<File> getOldCaches() {
        check();
        return this.old;
    }

    public synchronized void removeListener(Listener listener) {
        this.listeners.remove(listener);
    }

    private long getBytesAvailable(int i) {
        File cache = getCache();
        if (cache == null) {
            return -1;
        }
        StatFs statFs = null;
        try {
            statFs = new StatFs(cache.getPath());
        } catch (IllegalArgumentException e) {
            Log.w(TAG, "Failed to get available bytes", e);
            if (i > 0) {
                return getBytesAvailable(i - 1);
            }
        }
        if (statFs == null) {
            return -1;
        }
        return statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
    }
}
