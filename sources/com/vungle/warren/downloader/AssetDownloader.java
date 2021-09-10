package com.vungle.warren.downloader;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.text.TextUtils;
import android.util.Log;
import com.vungle.warren.VungleLogger;
import com.vungle.warren.downloader.AssetDownloadListener;
import com.vungle.warren.downloader.DownloadRequest;
import com.vungle.warren.error.VungleException;
import com.vungle.warren.utility.FileUtility;
import com.vungle.warren.utility.NetworkProvider;
import defpackage.gh0;
import defpackage.jh0;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.ssl.SSLException;

@SuppressLint({"LogNotTimber"})
public class AssetDownloader implements Downloader {
    private static final String ACCEPT_ENCODING = "Accept-Encoding";
    private static final String ACCEPT_RANGES = "Accept-Ranges";
    private static final String BYTES = "bytes";
    private static final int CONNECTION_RETRY_TIMEOUT = 300;
    private static final String CONTENT_ENCODING = "Content-Encoding";
    private static final String CONTENT_RANGE = "Content-Range";
    private static final String CONTENT_TYPE = "Content-Type";
    private static final int DOWNLOAD_CHUNK_SIZE = 2048;
    static final String DOWNLOAD_COMPLETE = "DOWNLOAD_COMPLETE";
    static final String DOWNLOAD_URL = "Download_URL";
    static final String ETAG = "ETag";
    private static final String GZIP = "gzip";
    private static final String IDENTITY = "identity";
    private static final String IF_MODIFIED_SINCE = "If-Modified-Since";
    private static final String IF_NONE_MATCH = "If-None-Match";
    private static final String IF_RANGE = "If-Range";
    static final String LAST_CACHE_VERIFICATION = "Last-Cache-Verification";
    static final String LAST_DOWNLOAD = "Last-Download";
    static final String LAST_MODIFIED = "Last-Modified";
    private static final String LOAD_CONTEXT = "AssetDownloader#load; loadAd sequence";
    private static final long MAX_PERCENT = 100;
    private static final int MAX_RECONNECT_ATTEMPTS = 10;
    private static final String META_POSTFIX_EXT = ".vng_meta";
    private static final int PROGRESS_STEP = 5;
    private static final String RANGE = "Range";
    private static final int RANGE_NOT_SATISFIABLE = 416;
    private static final int RETRY_COUNT_ON_CONNECTION_LOST = 5;
    private static final String TAG = AssetDownloader.class.getSimpleName();
    private static final int TIMEOUT = 30;
    public static final long VERIFICATION_WINDOW = TimeUnit.HOURS.toMillis(24);
    private final Object addLock;
    private final DownloaderCache cache;
    private final ThreadPoolExecutor downloadExecutor;
    private boolean isCacheEnabled;
    int maxReconnectAttempts;
    private Map<String, DownloadRequestMediator> mediators;
    private final NetworkProvider.NetworkListener networkListener;
    private final NetworkProvider networkProvider;
    private final gh0 okHttpClient;
    private volatile int progressStep;
    int reconnectTimeout;
    int retryCountOnConnectionLost;
    private final long timeWindow;
    private List<DownloadRequest> transitioning;
    private final ExecutorService uiExecutor;

    public @interface NetworkType {
        public static final int ANY = 3;
        public static final int CELLULAR = 1;
        public static final int WIFI = 2;
    }

    public AssetDownloader(int i, NetworkProvider networkProvider2, ExecutorService executorService) {
        this(null, 0, i, networkProvider2, executorService);
    }

    private void addNetworkListener() {
        this.networkProvider.addListener(this.networkListener);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void appendHeaders(long j, File file, HashMap<String, String> hashMap, jh0.a aVar) {
        aVar.a("Accept-Encoding", "identity");
        if (file.exists() && !hashMap.isEmpty()) {
            String str = hashMap.get("ETag");
            String str2 = hashMap.get("Last-Modified");
            if (Boolean.parseBoolean(hashMap.get(DOWNLOAD_COMPLETE))) {
                if (!TextUtils.isEmpty(str)) {
                    aVar.a("If-None-Match", str);
                }
                if (!TextUtils.isEmpty(str2)) {
                    aVar.a("If-Modified-Since", str2);
                }
            } else if (BYTES.equalsIgnoreCase(hashMap.get("Accept-Ranges"))) {
                if (hashMap.get("Content-Encoding") == null || "identity".equalsIgnoreCase(hashMap.get("Content-Encoding"))) {
                    aVar.a("Range", "bytes=" + j + "-");
                    if (!TextUtils.isEmpty(str)) {
                        aVar.a("If-Range", str);
                    } else if (!TextUtils.isEmpty(str2)) {
                        aVar.a("If-Range", str2);
                    }
                }
            }
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void checkEncoding(File file, File file2, ch0 ch0) {
        String c = ch0.c("Content-Encoding");
        if (c != null && !GZIP.equalsIgnoreCase(c) && !"identity".equalsIgnoreCase(c)) {
            deleteFileAndMeta(file, file2, false);
            VungleLogger.error("AssetDownloader#checkEncoding; loadAd sequence", String.format("unknown %1$s %2$s ", "Content-Encoding", c));
            throw new IOException("Unknown Content-Encoding");
        }
    }

    private void copyToDestination(File file, File file2, j2<DownloadRequest, AssetDownloadListener> j2Var) {
        Throwable th;
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream;
        IOException e;
        if (file2.exists()) {
            FileUtility.deleteAndLogIfFailed(file2);
        }
        if (file2.getParentFile() != null && !file2.getParentFile().exists()) {
            file2.getParentFile().mkdirs();
        }
        FileInputStream fileInputStream2 = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(file2);
            } catch (IOException e2) {
                fileOutputStream = null;
                e = e2;
                try {
                    VungleLogger.error("AssetDownloader#copyToDestination; loadAd sequence", String.format("cannot copy from %1$s(%2$s) to %3$s due to %4$s", file.getPath(), j2Var.a.url, file2.getPath(), e));
                    deliverError(j2Var.a, j2Var.b, new AssetDownloadListener.DownloadError(-1, e, 2));
                    String str = j2Var.a.url;
                    file2.getPath();
                    FileUtility.closeQuietly(fileInputStream);
                    FileUtility.closeQuietly(fileOutputStream);
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
                fileInputStream2 = fileInputStream;
                FileUtility.closeQuietly(fileInputStream2);
                FileUtility.closeQuietly(fileOutputStream);
                throw th;
            }
            try {
                FileChannel channel = fileInputStream.getChannel();
                channel.transferTo(0, channel.size(), fileOutputStream.getChannel());
                String str2 = j2Var.a.url;
                file2.getPath();
            } catch (IOException e3) {
                e = e3;
                VungleLogger.error("AssetDownloader#copyToDestination; loadAd sequence", String.format("cannot copy from %1$s(%2$s) to %3$s due to %4$s", file.getPath(), j2Var.a.url, file2.getPath(), e));
                deliverError(j2Var.a, j2Var.b, new AssetDownloadListener.DownloadError(-1, e, 2));
                String str3 = j2Var.a.url;
                file2.getPath();
                FileUtility.closeQuietly(fileInputStream);
                FileUtility.closeQuietly(fileOutputStream);
            }
        } catch (IOException e4) {
            fileOutputStream = null;
            e = e4;
            fileInputStream = null;
            VungleLogger.error("AssetDownloader#copyToDestination; loadAd sequence", String.format("cannot copy from %1$s(%2$s) to %3$s due to %4$s", file.getPath(), j2Var.a.url, file2.getPath(), e));
            deliverError(j2Var.a, j2Var.b, new AssetDownloadListener.DownloadError(-1, e, 2));
            String str32 = j2Var.a.url;
            file2.getPath();
            FileUtility.closeQuietly(fileInputStream);
            FileUtility.closeQuietly(fileOutputStream);
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
            FileUtility.closeQuietly(fileInputStream2);
            FileUtility.closeQuietly(fileOutputStream);
            throw th;
        }
        FileUtility.closeQuietly(fileInputStream);
        FileUtility.closeQuietly(fileOutputStream);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private String debugString(DownloadRequestMediator downloadRequestMediator) {
        StringBuilder q = ic.q(", mediator url - ");
        q.append(downloadRequestMediator.url);
        q.append(", path - ");
        q.append(downloadRequestMediator.filePath);
        q.append(", th - ");
        q.append(Thread.currentThread().getName());
        q.append("id ");
        q.append(downloadRequestMediator);
        return q.toString();
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private mh0 decodeGzipIfNeeded(lh0 lh0) {
        if (!GZIP.equalsIgnoreCase(lh0.V("Content-Encoding")) || !ii0.b(lh0) || lh0.j() == null) {
            return lh0.j();
        }
        return new ki0(lh0.V("Content-Type"), -1, ik0.c(new gk0(lh0.j().source())));
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void deleteFileAndMeta(File file, File file2, boolean z) {
        if (file != null) {
            FileUtility.deleteAndLogIfFailed(file);
            if (file2 != null) {
                FileUtility.deleteAndLogIfFailed(file2);
            }
            if (this.cache != null && isCacheEnabled()) {
                if (z) {
                    this.cache.deleteAndRemove(file);
                } else {
                    this.cache.deleteContents(file);
                }
            }
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void deliverError(final DownloadRequest downloadRequest, final AssetDownloadListener assetDownloadListener, final AssetDownloadListener.DownloadError downloadError) {
        Object[] objArr = new Object[2];
        objArr[0] = downloadError;
        objArr[1] = downloadRequest != null ? debugString(downloadRequest) : "null";
        VungleLogger.error("AssetDownloader#deliverError; loadAd sequence", String.format("Delivering error %1$s; request %2$s", objArr));
        if (assetDownloadListener != null) {
            this.uiExecutor.execute(new Runnable() {
                /* class com.vungle.warren.downloader.AssetDownloader.AnonymousClass4 */

                public void run() {
                    assetDownloadListener.onError(downloadError, downloadRequest);
                }
            });
        }
    }

    private void deliverProgress(final AssetDownloadListener.Progress progress, final DownloadRequest downloadRequest, final AssetDownloadListener assetDownloadListener) {
        if (assetDownloadListener != null) {
            this.uiExecutor.execute(new Runnable() {
                /* class com.vungle.warren.downloader.AssetDownloader.AnonymousClass5 */

                public void run() {
                    String unused = AssetDownloader.TAG;
                    StringBuilder q = ic.q("On progress ");
                    q.append(downloadRequest);
                    q.toString();
                    assetDownloadListener.onProgress(progress, downloadRequest);
                }
            });
        }
    }

    private void deliverSuccess(j2<DownloadRequest, AssetDownloadListener> j2Var, File file) {
        S s = j2Var.b;
        if (s != null) {
            s.onSuccess(file, j2Var.a);
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private HashMap<String, String> extractMeta(File file) {
        return FileUtility.readMap(file.getPath());
    }

    private synchronized DownloadRequestMediator findMediatorForCancellation(DownloadRequest downloadRequest) {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(this.mediators.get(getCacheableKey(downloadRequest)));
        arrayList.add(this.mediators.get(getNonCacheableKey(downloadRequest)));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            DownloadRequestMediator downloadRequestMediator = (DownloadRequestMediator) it.next();
            if (downloadRequestMediator != null) {
                for (DownloadRequest downloadRequest2 : downloadRequestMediator.requests()) {
                    if (downloadRequest2.equals(downloadRequest)) {
                        return downloadRequestMediator;
                    }
                }
                continue;
            }
        }
        return null;
    }

    private String getCacheableKey(DownloadRequest downloadRequest) {
        return downloadRequest.url;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private long getContentLength(lh0 lh0) {
        if (lh0 == null) {
            return -1;
        }
        String c = lh0.b0().c("Content-Length");
        if (TextUtils.isEmpty(c)) {
            return -1;
        }
        try {
            return Long.parseLong(c);
        } catch (Throwable unused) {
            return -1;
        }
    }

    private String getNonCacheableKey(DownloadRequest downloadRequest) {
        return downloadRequest.url + " " + downloadRequest.path;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private boolean isAnyConnected(DownloadRequestMediator downloadRequestMediator) {
        for (DownloadRequest downloadRequest : downloadRequestMediator.requests()) {
            if (downloadRequest != null && isConnected(downloadRequest)) {
                return true;
            }
        }
        return false;
    }

    @TargetApi(VungleException.SERVER_ERROR)
    private boolean isConnected(DownloadRequest downloadRequest) {
        int i;
        int currentNetworkType = this.networkProvider.getCurrentNetworkType();
        boolean z = true;
        if (currentNetworkType >= 0 && downloadRequest.networkType == 3) {
            return true;
        }
        if (currentNetworkType != 0) {
            if (currentNetworkType != 1) {
                if (currentNetworkType != 4) {
                    if (currentNetworkType != 9) {
                        if (currentNetworkType != 17) {
                            if (currentNetworkType != 6) {
                                if (currentNetworkType != 7) {
                                    i = -1;
                                    if (i <= 0 || (downloadRequest.networkType & i) != i) {
                                        z = false;
                                    }
                                    debugString(downloadRequest);
                                    return z;
                                }
                            }
                        }
                    }
                }
            }
            i = 2;
            z = false;
            debugString(downloadRequest);
            return z;
        }
        i = 1;
        z = false;
        debugString(downloadRequest);
        return z;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    /* JADX WARNING: Code restructure failed: missing block: B:19:?, code lost:
        r1.lock();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0053, code lost:
        monitor-enter(r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:?, code lost:
        r7.transitioning.remove(r8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x005e, code lost:
        if (r1.is(6) != false) goto L_0x00aa;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0064, code lost:
        if (r1.is(3) == false) goto L_0x006d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x006a, code lost:
        if (r8.isCancelled() != false) goto L_0x006d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x006f, code lost:
        if (r1.isCacheable == false) goto L_0x007f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0071, code lost:
        r1.add(r8, r9);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x0079, code lost:
        if (r1.is(2) == false) goto L_0x00b8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x007b, code lost:
        load(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x007f, code lost:
        com.vungle.warren.VungleLogger.warn("AssetDownloader#launchRequest; loadAd sequence", "request " + r8 + " is already running");
        deliverError(r8, r9, new com.vungle.warren.downloader.AssetDownloadListener.DownloadError(-1, new java.lang.IllegalArgumentException("DownloadRequest is already running"), 1));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00aa, code lost:
        r8 = makeNewMediator(r8, r9);
        r7.mediators.put(r1.key, r8);
        load(r8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00b8, code lost:
        monitor-exit(r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x00bd, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x00c1, code lost:
        r8 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00c2, code lost:
        r1.unlock();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00c5, code lost:
        throw r8;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void launchRequest(com.vungle.warren.downloader.DownloadRequest r8, com.vungle.warren.downloader.AssetDownloadListener r9) {
        /*
        // Method dump skipped, instructions count: 204
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.downloader.AssetDownloader.launchRequest(com.vungle.warren.downloader.DownloadRequest, com.vungle.warren.downloader.AssetDownloadListener):void");
    }

    private synchronized void load(final DownloadRequestMediator downloadRequestMediator) {
        addNetworkListener();
        downloadRequestMediator.set(1);
        this.downloadExecutor.execute(new DownloadPriorityRunnable(downloadRequestMediator) {
            /* class com.vungle.warren.downloader.AssetDownloader.AnonymousClass2 */

            /* JADX DEBUG: Failed to insert an additional move for type inference into block B:92:0x0258 */
            /* JADX DEBUG: Failed to insert an additional move for type inference into block B:565:0x0a82 */
            /* JADX DEBUG: Multi-variable search result rejected for r11v16, resolved type: com.vungle.warren.downloader.DownloadRequestMediator */
            /* JADX DEBUG: Multi-variable search result rejected for r11v25, resolved type: com.vungle.warren.downloader.DownloadRequestMediator */
            /* JADX DEBUG: Multi-variable search result rejected for r4v35, resolved type: yj0 */
            /* JADX DEBUG: Multi-variable search result rejected for r11v39, resolved type: com.vungle.warren.downloader.DownloadRequestMediator */
            /* JADX DEBUG: Multi-variable search result rejected for r11v41, resolved type: com.vungle.warren.downloader.DownloadRequestMediator */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r3v1, types: [com.vungle.warren.downloader.AssetDownloadListener$Progress] */
            /* JADX WARN: Type inference failed for: r8v0 */
            /* JADX WARN: Type inference failed for: r24v1 */
            /* JADX WARN: Type inference failed for: r3v2 */
            /* JADX WARN: Type inference failed for: r24v2 */
            /* JADX WARN: Type inference failed for: r3v3 */
            /* JADX WARN: Type inference failed for: r21v6 */
            /* JADX WARN: Type inference failed for: r13v10, types: [int] */
            /* JADX WARN: Type inference failed for: r24v19 */
            /* JADX WARN: Type inference failed for: r21v14 */
            /* JADX WARN: Type inference failed for: r13v17 */
            /* JADX WARN: Type inference failed for: r11v19 */
            /* JADX WARN: Type inference failed for: r8v23 */
            /* JADX WARN: Type inference failed for: r3v74 */
            /* JADX WARN: Type inference failed for: r24v23, types: [long] */
            /* JADX WARN: Type inference failed for: r21v20 */
            /* JADX WARN: Type inference failed for: r13v28 */
            /* JADX WARN: Type inference failed for: r24v28 */
            /* JADX WARN: Type inference failed for: r8v31 */
            /* JADX WARN: Type inference failed for: r3v82 */
            /* JADX WARN: Type inference failed for: r21v21 */
            /* JADX WARN: Type inference failed for: r8v58 */
            /* JADX WARN: Type inference failed for: r8v59 */
            /* JADX WARN: Type inference failed for: r3v131 */
            /* JADX WARN: Type inference failed for: r3v132 */
            /* JADX WARN: Type inference failed for: r21v35 */
            /* JADX WARN: Type inference failed for: r24v61 */
            /* JADX WARN: Type inference failed for: r24v62 */
            /* JADX WARNING: Code restructure failed: missing block: B:425:0x0935, code lost:
                r0 = com.vungle.warren.downloader.AssetDownloader.TAG;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:427:?, code lost:
                r3.setConnected(true);
                r3.set(1);
             */
            /* JADX WARNING: Code restructure failed: missing block: B:428:0x0943, code lost:
                r11 = r0;
                r16 = false;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:429:0x0948, code lost:
                r0 = th;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:430:0x0949, code lost:
                r8 = r4;
                r17 = false;
             */
            /* JADX WARNING: Removed duplicated region for block: B:246:0x055d A[SYNTHETIC] */
            /* JADX WARNING: Removed duplicated region for block: B:361:0x0807 A[SYNTHETIC, Splitter:B:361:0x0807] */
            /* JADX WARNING: Removed duplicated region for block: B:366:0x0815  */
            /* JADX WARNING: Removed duplicated region for block: B:440:0x0964  */
            /* JADX WARNING: Removed duplicated region for block: B:461:0x09aa  */
            /* JADX WARNING: Removed duplicated region for block: B:471:0x09db  */
            /* JADX WARNING: Removed duplicated region for block: B:474:0x09ea  */
            /* JADX WARNING: Removed duplicated region for block: B:488:0x0a2d  */
            /* JADX WARNING: Removed duplicated region for block: B:491:0x0a3a A[SYNTHETIC] */
            /* JADX WARNING: Removed duplicated region for block: B:518:0x0a9d  */
            /* JADX WARNING: Removed duplicated region for block: B:521:0x0aac  */
            /* JADX WARNING: Removed duplicated region for block: B:535:0x0aef  */
            /* JADX WARNING: Removed duplicated region for block: B:538:0x0afc A[SYNTHETIC] */
            /* JADX WARNING: Unknown variable types count: 5 */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void run() {
                /*
                // Method dump skipped, instructions count: 2881
                */
                throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.downloader.AssetDownloader.AnonymousClass2.run():void");
            }
        });
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private HashMap<String, String> makeMeta(File file, ch0 ch0, String str) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(DOWNLOAD_URL, str);
        hashMap.put("ETag", ch0.c("ETag"));
        hashMap.put("Last-Modified", ch0.c("Last-Modified"));
        hashMap.put("Accept-Ranges", ch0.c("Accept-Ranges"));
        hashMap.put("Content-Encoding", ch0.c("Content-Encoding"));
        saveMeta(file, hashMap);
        return hashMap;
    }

    private DownloadRequestMediator makeNewMediator(DownloadRequest downloadRequest, AssetDownloadListener assetDownloadListener) {
        String str;
        boolean z;
        File file;
        File file2;
        if (!isCacheEnabled()) {
            file2 = new File(downloadRequest.path);
            file = new File(file2.getPath() + META_POSTFIX_EXT);
            str = downloadRequest.url + " " + downloadRequest.path;
            z = false;
        } else {
            file2 = this.cache.getFile(downloadRequest.url);
            file = this.cache.getMetaFile(file2);
            str = downloadRequest.url;
            z = true;
        }
        file2.getPath();
        return new DownloadRequestMediator(downloadRequest, assetDownloadListener, file2.getPath(), file.getPath(), z, str);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private int mapExceptionToReason(Throwable th, boolean z) {
        if (th instanceof RuntimeException) {
            return 4;
        }
        if (!z || (th instanceof SocketException) || (th instanceof SocketTimeoutException)) {
            return 0;
        }
        return ((th instanceof UnknownHostException) || (th instanceof SSLException)) ? 1 : 2;
    }

    private String mediatorKeyFromRequest(DownloadRequest downloadRequest) {
        if (isCacheEnabled()) {
            return getCacheableKey(downloadRequest);
        }
        return getNonCacheableKey(downloadRequest);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private boolean notModified(File file, lh0 lh0, DownloadRequestMediator downloadRequestMediator, HashMap<String, String> hashMap) {
        if (lh0 != null && file.exists() && file.length() > 0 && downloadRequestMediator.isCacheable) {
            int L = lh0.L();
            if (Boolean.parseBoolean(hashMap.get(DOWNLOAD_COMPLETE)) && L == 304) {
                debugString(downloadRequestMediator);
                return true;
            }
        }
        return false;
    }

    private void onCancelled(DownloadRequest downloadRequest) {
        F f;
        if (!downloadRequest.isCancelled()) {
            downloadRequest.cancel();
            DownloadRequestMediator findMediatorForCancellation = findMediatorForCancellation(downloadRequest);
            if (!(findMediatorForCancellation == null || findMediatorForCancellation.getStatus() == 3)) {
                j2<DownloadRequest, AssetDownloadListener> remove = findMediatorForCancellation.remove(downloadRequest);
                S s = null;
                if (remove == null) {
                    f = null;
                } else {
                    f = remove.a;
                }
                if (remove != null) {
                    s = remove.b;
                }
                if (findMediatorForCancellation.values().isEmpty()) {
                    findMediatorForCancellation.set(3);
                }
                if (f != null) {
                    AssetDownloadListener.Progress progress = new AssetDownloadListener.Progress();
                    progress.status = 3;
                    deliverProgress(progress, f, s);
                } else {
                    return;
                }
            }
            removeNetworkListener();
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private synchronized void onCancelledMediator(DownloadRequestMediator downloadRequestMediator) {
        for (DownloadRequest downloadRequest : downloadRequestMediator.requests()) {
            onCancelled(downloadRequest);
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void onErrorMediator(AssetDownloadListener.DownloadError downloadError, DownloadRequestMediator downloadRequestMediator) {
        VungleLogger.error("AssetDownloader#onErrorMediator; loadAd sequence", String.format("Error %1$s occured; mediator %2$s", downloadError, debugString(downloadRequestMediator)));
        if (downloadError == null) {
            downloadError = new AssetDownloadListener.DownloadError(-1, new RuntimeException(), 4);
        }
        try {
            downloadRequestMediator.lock();
            for (j2<DownloadRequest, AssetDownloadListener> j2Var : downloadRequestMediator.values()) {
                deliverError(j2Var.a, j2Var.b, downloadError);
            }
            removeMediator(downloadRequestMediator);
            downloadRequestMediator.set(6);
        } finally {
            downloadRequestMediator.unlock();
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private synchronized void onNetworkChanged(int i) {
        this.mediators.values().size();
        for (DownloadRequestMediator downloadRequestMediator : this.mediators.values()) {
            if (!downloadRequestMediator.is(3)) {
                boolean isAnyConnected = isAnyConnected(downloadRequestMediator);
                downloadRequestMediator.setConnected(isAnyConnected);
                if (downloadRequestMediator.isPausable() && isAnyConnected && downloadRequestMediator.is(2)) {
                    load(downloadRequestMediator);
                    String str = "resumed " + downloadRequestMediator.key + " " + downloadRequestMediator;
                }
            }
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void onProgressMediator(DownloadRequestMediator downloadRequestMediator, AssetDownloadListener.Progress progress) {
        if (downloadRequestMediator != null) {
            AssetDownloadListener.Progress copy = AssetDownloadListener.Progress.copy(progress);
            StringBuilder q = ic.q("Progress ");
            q.append(progress.progressPercent);
            q.append(" status ");
            q.append(progress.status);
            q.append(" ");
            q.append(downloadRequestMediator);
            q.append(" ");
            q.append(downloadRequestMediator.filePath);
            q.toString();
            for (j2<DownloadRequest, AssetDownloadListener> j2Var : downloadRequestMediator.values()) {
                deliverProgress(copy, j2Var.a, j2Var.b);
            }
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void onSuccessMediator(File file, DownloadRequestMediator downloadRequestMediator) {
        String str = "OnComplete - Removing connections and listener " + downloadRequestMediator;
        try {
            downloadRequestMediator.lock();
            List<j2<DownloadRequest, AssetDownloadListener>> values = downloadRequestMediator.values();
            if (!file.exists()) {
                VungleLogger.error("AssetDownloader#onSuccessMediator; loadAd sequence", String.format("File %1$s does not exist; mediator %2$s ", file.getPath(), debugString(downloadRequestMediator)));
                onErrorMediator(new AssetDownloadListener.DownloadError(-1, new IOException("File is deleted"), 2), downloadRequestMediator);
                return;
            }
            DownloaderCache downloaderCache = this.cache;
            if (downloaderCache != null && downloadRequestMediator.isCacheable) {
                downloaderCache.onCacheHit(file, (long) values.size());
                this.cache.setCacheLastUpdateTimestamp(file, System.currentTimeMillis());
            }
            for (j2<DownloadRequest, AssetDownloadListener> j2Var : values) {
                File file2 = new File(j2Var.a.path);
                if (!file2.equals(file)) {
                    copyToDestination(file, file2, j2Var);
                } else {
                    file2 = file;
                }
                String str2 = j2Var.a.url;
                file2.getPath();
                deliverSuccess(j2Var, file2);
            }
            removeMediator(downloadRequestMediator);
            downloadRequestMediator.set(6);
            debugString(downloadRequestMediator);
            downloadRequestMediator.unlock();
        } finally {
            downloadRequestMediator.unlock();
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private boolean partialMalformed(long j, int i, lh0 lh0, DownloadRequestMediator downloadRequestMediator) {
        return (i == 206 && !satisfiesPartialDownload(lh0, j, downloadRequestMediator)) || i == 416;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private boolean pause(DownloadRequestMediator downloadRequestMediator, AssetDownloadListener.Progress progress, AssetDownloadListener.DownloadError downloadError) {
        boolean z = false;
        if (!downloadRequestMediator.is(3) && !isAnyConnected(downloadRequestMediator)) {
            progress.status = 2;
            AssetDownloadListener.Progress copy = AssetDownloadListener.Progress.copy(progress);
            for (j2<DownloadRequest, AssetDownloadListener> j2Var : downloadRequestMediator.values()) {
                F f = j2Var.a;
                if (f != null) {
                    if (!f.pauseOnConnectionLost) {
                        downloadRequestMediator.remove(f);
                        deliverError(f, j2Var.b, downloadError);
                    } else {
                        downloadRequestMediator.set(2);
                        z = true;
                        debugString((DownloadRequest) f);
                        deliverProgress(copy, j2Var.a, j2Var.b);
                    }
                }
            }
            if (!z) {
                downloadRequestMediator.set(5);
            }
            downloadRequestMediator.getStatus();
        }
        return z;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private synchronized void removeMediator(DownloadRequestMediator downloadRequestMediator) {
        this.mediators.remove(downloadRequestMediator.key);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void removeNetworkListener() {
        if (this.mediators.isEmpty()) {
            this.networkProvider.removeListener(this.networkListener);
        }
    }

    private boolean responseVersionMatches(lh0 lh0, HashMap<String, String> hashMap) {
        ch0 b0 = lh0.b0();
        String c = b0.c("ETag");
        String c2 = b0.c("Last-Modified");
        if (c != null && !c.equals(hashMap.get("ETag"))) {
            hashMap.get("ETag");
            return false;
        } else if (c2 == null || c2.equals(hashMap.get("Last-Modified"))) {
            return true;
        } else {
            hashMap.get("Last-Modified");
            return false;
        }
    }

    private boolean satisfiesPartialDownload(lh0 lh0, long j, DownloadRequestMediator downloadRequestMediator) {
        boolean z;
        RangeResponse rangeResponse = new RangeResponse(lh0.b0().c("Content-Range"));
        if (lh0.L() == 206 && BYTES.equalsIgnoreCase(rangeResponse.dimension)) {
            long j2 = rangeResponse.rangeStart;
            if (j2 >= 0 && j == j2) {
                z = true;
                debugString(downloadRequestMediator);
                return z;
            }
        }
        z = false;
        debugString(downloadRequestMediator);
        return z;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void saveMeta(File file, HashMap<String, String> hashMap) {
        FileUtility.writeMap(file.getPath(), hashMap);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void sleep(long j) {
        try {
            Thread.sleep(Math.max(0L, j));
        } catch (InterruptedException e) {
            Log.e(TAG, "InterruptedException ", e);
            Thread.currentThread().interrupt();
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private boolean useCacheOnFail(DownloadRequestMediator downloadRequestMediator, File file, Map<String, String> map, int i) {
        return this.cache != null && downloadRequestMediator.isCacheable && i != 200 && i != 416 && i != 206 && Boolean.parseBoolean(map.get(DOWNLOAD_COMPLETE)) && file.exists() && file.length() > 0;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private boolean useCacheWithoutVerification(DownloadRequestMediator downloadRequestMediator, File file, Map<String, String> map) {
        String str;
        if (map == null || this.cache == null || !downloadRequestMediator.isCacheable || (str = map.get(LAST_CACHE_VERIFICATION)) == null || !file.exists() || !Boolean.parseBoolean(map.get(DOWNLOAD_COMPLETE))) {
            return false;
        }
        try {
            long parseLong = Long.parseLong(str);
            long j = this.timeWindow;
            if (j >= Long.MAX_VALUE - parseLong || parseLong + j >= System.currentTimeMillis()) {
                return true;
            }
            return false;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    @Override // com.vungle.warren.downloader.Downloader
    public synchronized void cancel(DownloadRequest downloadRequest) {
        if (downloadRequest != null) {
            onCancelled(downloadRequest);
        }
    }

    @Override // com.vungle.warren.downloader.Downloader
    public synchronized void cancelAll() {
        for (DownloadRequest downloadRequest : this.transitioning) {
            String str = downloadRequest.url;
            cancel(downloadRequest);
        }
        this.mediators.values().size();
        for (DownloadRequestMediator downloadRequestMediator : this.mediators.values()) {
            String str2 = downloadRequestMediator.key;
            onCancelledMediator(downloadRequestMediator);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0037, code lost:
        sleep(10);
     */
    @Override // com.vungle.warren.downloader.Downloader
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean cancelAndAwait(com.vungle.warren.downloader.DownloadRequest r6, long r7) {
        /*
            r5 = this;
            r0 = 0
            if (r6 != 0) goto L_0x0004
            return r0
        L_0x0004:
            r5.cancel(r6)
            long r1 = java.lang.System.currentTimeMillis()
            r3 = 0
            long r7 = java.lang.Math.max(r3, r7)
            long r7 = r7 + r1
        L_0x0012:
            long r1 = java.lang.System.currentTimeMillis()
            int r3 = (r1 > r7 ? 1 : (r1 == r7 ? 0 : -1))
            if (r3 >= 0) goto L_0x0040
            com.vungle.warren.downloader.DownloadRequestMediator r1 = r5.findMediatorForCancellation(r6)
            monitor-enter(r5)
            java.util.List<com.vungle.warren.downloader.DownloadRequest> r2 = r5.transitioning     // Catch:{ all -> 0x003d }
            boolean r2 = r2.contains(r6)     // Catch:{ all -> 0x003d }
            if (r2 != 0) goto L_0x0036
            if (r1 == 0) goto L_0x0033
            java.util.List r1 = r1.requests()     // Catch:{ all -> 0x003d }
            boolean r1 = r1.contains(r6)     // Catch:{ all -> 0x003d }
            if (r1 != 0) goto L_0x0036
        L_0x0033:
            r6 = 1
            monitor-exit(r5)     // Catch:{ all -> 0x003d }
            return r6
        L_0x0036:
            monitor-exit(r5)     // Catch:{ all -> 0x003d }
            r1 = 10
            r5.sleep(r1)
            goto L_0x0012
        L_0x003d:
            r6 = move-exception
            monitor-exit(r5)
            throw r6
        L_0x0040:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.downloader.AssetDownloader.cancelAndAwait(com.vungle.warren.downloader.DownloadRequest, long):boolean");
    }

    @Override // com.vungle.warren.downloader.Downloader
    public synchronized void clearCache() {
        DownloaderCache downloaderCache = this.cache;
        if (downloaderCache != null) {
            downloaderCache.clear();
        }
    }

    @Override // com.vungle.warren.downloader.Downloader
    public synchronized void download(final DownloadRequest downloadRequest, final AssetDownloadListener assetDownloadListener) {
        if (downloadRequest == null) {
            VungleLogger.error("AssetDownloader#download; loadAd sequence", "downloadRequest is null");
            if (assetDownloadListener != null) {
                deliverError(null, assetDownloadListener, new AssetDownloadListener.DownloadError(-1, new IllegalArgumentException("DownloadRequest is null"), 1));
            }
            return;
        }
        this.transitioning.add(downloadRequest);
        this.downloadExecutor.execute(new DownloadPriorityRunnable(DownloadRequest.Priority.CRITICAL) {
            /* class com.vungle.warren.downloader.AssetDownloader.AnonymousClass1 */

            public void run() {
                try {
                    AssetDownloader.this.launchRequest(downloadRequest, assetDownloadListener);
                } catch (IOException e) {
                    VungleLogger.error("AssetDownloader#download; loadAd sequence", "cannot launch request due to " + e);
                    Log.e(AssetDownloader.TAG, "Error on launching request", e);
                    AssetDownloader.this.deliverError(downloadRequest, assetDownloadListener, new AssetDownloadListener.DownloadError(-1, e, 1));
                }
            }
        });
    }

    @Override // com.vungle.warren.downloader.Downloader
    public boolean dropCache(String str) {
        DownloaderCache downloaderCache = this.cache;
        if (!(downloaderCache == null || str == null)) {
            try {
                File file = downloaderCache.getFile(str);
                file.getPath();
                return this.cache.deleteAndRemove(file);
            } catch (IOException e) {
                VungleLogger.error("AssetDownloader#dropCache; loadAd sequence", String.format("Error %1$s occured", e));
                Log.e(TAG, "There was an error to get file", e);
            }
        }
        return false;
    }

    @Override // com.vungle.warren.downloader.Downloader
    public synchronized List<DownloadRequest> getAllRequests() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator it = new ArrayList(this.mediators.values()).iterator();
        while (it.hasNext()) {
            arrayList.addAll(((DownloadRequestMediator) it.next()).requests());
        }
        arrayList.addAll(this.transitioning);
        return arrayList;
    }

    @Override // com.vungle.warren.downloader.Downloader
    public synchronized void init() {
        DownloaderCache downloaderCache = this.cache;
        if (downloaderCache != null) {
            downloaderCache.init();
        }
    }

    @Override // com.vungle.warren.downloader.Downloader
    public synchronized boolean isCacheEnabled() {
        return this.cache != null && this.isCacheEnabled;
    }

    @Override // com.vungle.warren.downloader.Downloader
    public synchronized void setCacheEnabled(boolean z) {
        this.isCacheEnabled = z;
    }

    /* access modifiers changed from: package-private */
    public synchronized void setDownloadedForTests(boolean z, String str, String str2) {
        ArrayList arrayList = new ArrayList(2);
        DownloaderCache downloaderCache = this.cache;
        if (downloaderCache != null) {
            try {
                arrayList.add(downloaderCache.getMetaFile(downloaderCache.getFile(str)));
            } catch (IOException e) {
                Log.e(TAG, "Cannot add or get meta file", e);
                throw new RuntimeException("Failed to get file for request");
            }
        }
        arrayList.add(new File(str2 + META_POSTFIX_EXT));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            File file = (File) it.next();
            HashMap<String, String> extractMeta = extractMeta(file);
            extractMeta.put(DOWNLOAD_COMPLETE, Boolean.valueOf(z).toString());
            FileUtility.writeSerializable(file, extractMeta);
        }
    }

    @Override // com.vungle.warren.downloader.Downloader
    public void setProgressStep(int i) {
        if (i != 0) {
            this.progressStep = i;
        }
    }

    /* access modifiers changed from: package-private */
    public synchronized void shutdown() {
        cancel(null);
        this.transitioning.clear();
        this.mediators.clear();
        this.uiExecutor.shutdownNow();
        this.downloadExecutor.shutdownNow();
        try {
            ThreadPoolExecutor threadPoolExecutor = this.downloadExecutor;
            TimeUnit timeUnit = TimeUnit.SECONDS;
            threadPoolExecutor.awaitTermination(2, timeUnit);
            this.uiExecutor.awaitTermination(2, timeUnit);
        } catch (InterruptedException e) {
            Log.e(TAG, "InterruptedException ", e);
            Thread.currentThread().interrupt();
        }
    }

    @Override // com.vungle.warren.downloader.Downloader
    public void updatePriority(DownloadRequest downloadRequest) {
        Runnable runnable;
        DownloadRequestMediator findMediatorForCancellation = findMediatorForCancellation(downloadRequest);
        if (findMediatorForCancellation != null && (runnable = findMediatorForCancellation.getRunnable()) != null && this.downloadExecutor.remove(runnable)) {
            findMediatorForCancellation.getPriority();
            this.downloadExecutor.execute(runnable);
        }
    }

    public AssetDownloader(DownloaderCache downloaderCache, long j, int i, NetworkProvider networkProvider2, ExecutorService executorService) {
        this.retryCountOnConnectionLost = 5;
        this.maxReconnectAttempts = 10;
        this.reconnectTimeout = 300;
        this.mediators = new ConcurrentHashMap();
        this.transitioning = new ArrayList();
        this.addLock = new Object();
        this.progressStep = 5;
        this.isCacheEnabled = true;
        this.networkListener = new NetworkProvider.NetworkListener() {
            /* class com.vungle.warren.downloader.AssetDownloader.AnonymousClass3 */

            @Override // com.vungle.warren.utility.NetworkProvider.NetworkListener
            public void onChanged(int i) {
                String unused = AssetDownloader.TAG;
                AssetDownloader.this.onNetworkChanged(i);
            }
        };
        this.cache = downloaderCache;
        int max = Math.max(i, 1);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(max, max, 1, timeUnit, new PriorityBlockingQueue());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.timeWindow = j;
        this.downloadExecutor = threadPoolExecutor;
        this.networkProvider = networkProvider2;
        this.uiExecutor = executorService;
        gh0.b bVar = new gh0.b();
        bVar.g(30, timeUnit);
        bVar.d(30, timeUnit);
        bVar.c(null);
        bVar.e(true);
        bVar.f(true);
        this.okHttpClient = bVar.b();
    }

    private String debugString(DownloadRequest downloadRequest) {
        StringBuilder q = ic.q(", single request url - ");
        q.append(downloadRequest.url);
        q.append(", path - ");
        q.append(downloadRequest.path);
        q.append(", th - ");
        q.append(Thread.currentThread().getName());
        q.append("id ");
        q.append(downloadRequest.id);
        return q.toString();
    }

    public static abstract class DownloadPriorityRunnable implements Comparable, Runnable {
        private static final AtomicInteger seq = new AtomicInteger();
        private final DownloadRequestMediator mediator;
        private final int order = seq.incrementAndGet();
        private final int priority;

        DownloadPriorityRunnable(DownloadRequestMediator downloadRequestMediator) {
            this.mediator = downloadRequestMediator;
            this.priority = 0;
            downloadRequestMediator.setRunnable(this);
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            if (!(obj instanceof DownloadPriorityRunnable)) {
                return -1;
            }
            DownloadPriorityRunnable downloadPriorityRunnable = (DownloadPriorityRunnable) obj;
            int compareTo = getPriority().compareTo(downloadPriorityRunnable.getPriority());
            return compareTo == 0 ? Integer.valueOf(this.order).compareTo(Integer.valueOf(downloadPriorityRunnable.order)) : compareTo;
        }

        /* access modifiers changed from: package-private */
        public Integer getPriority() {
            DownloadRequestMediator downloadRequestMediator = this.mediator;
            return Integer.valueOf(downloadRequestMediator != null ? downloadRequestMediator.getPriority() : this.priority);
        }

        DownloadPriorityRunnable(@DownloadRequest.Priority int i) {
            this.priority = i;
            this.mediator = null;
        }
    }
}
