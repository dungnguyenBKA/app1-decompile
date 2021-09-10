package com.vungle.warren;

import android.text.TextUtils;
import android.util.Log;
import android.webkit.URLUtil;
import com.vungle.warren.AdConfig;
import com.vungle.warren.OperationSequence;
import com.vungle.warren.downloader.AssetDownloadListener;
import com.vungle.warren.downloader.DownloadRequest;
import com.vungle.warren.downloader.Downloader;
import com.vungle.warren.error.VungleException;
import com.vungle.warren.model.AdAsset;
import com.vungle.warren.model.Advertisement;
import com.vungle.warren.model.JsonUtil;
import com.vungle.warren.model.Placement;
import com.vungle.warren.network.Call;
import com.vungle.warren.network.Callback;
import com.vungle.warren.network.Response;
import com.vungle.warren.omsdk.OMInjector;
import com.vungle.warren.persistence.CacheManager;
import com.vungle.warren.persistence.DatabaseHelper;
import com.vungle.warren.persistence.Repository;
import com.vungle.warren.tasks.DownloadJob;
import com.vungle.warren.tasks.JobRunner;
import com.vungle.warren.ui.HackMraid;
import com.vungle.warren.utility.Executors;
import com.vungle.warren.utility.FileUtility;
import com.vungle.warren.utility.UnzipUtility;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public class AdLoader {
    private static final String DOWNLOAD_AD_CALLBACK_ON_DOWNLOAD_COMPLETED_CONTEXT = "AdLoader#DownloadAdCallback#onDownloadCompleted; loadAd sequence";
    private static final String DOWNNLOAD_AD_ASSETS_CONTEXT = "AdLoader#downnloadAdAssets; loadAd sequence";
    public static final long EXPONENTIAL_RATE = 2;
    private static final String FETCH_AD_METADATA_CONTEXT = "AdLoader#fetchAdMetadata; loadAd sequence";
    private static final String GET_ASSET_DOWNLOAD_LISTENER_CONTEXT = "AdLoader#getAssetDownloadListener; loadAd sequence";
    private static final String LOAD_AD_EXECUTE_CONTEXT = "AdLoader#loadAd#execute; loadAd sequence";
    private static final String NOT_A_DIR = "not a dir";
    private static final String ON_ASSET_DOWNLOAD_FINISHED_CONTEXT = "AdLoader#onAssetDownloadFinished; loadAd sequence";
    private static final String OP_ID_AND_ADVERTISEMENT_FORMAT = "op.id = %1$s; advertisement = %2$s";
    private static final String PLACEMENT_ID_AND_ADVERTISEMENT_FORMAT_2_3 = "placementId = %2$s; advertisement = %3$s";
    private static final String PLACEMENT_ID_AND_ADVERTISEMENT_FORMAT_3_4 = "placementId = %3$s; advertisement = %4$s";
    public static final int RETRY_COUNT = 5;
    public static final long RETRY_DELAY = 2000;
    private static final String STRING_AND_OP_ID_FORMAT = "%1$s; op.id = %2$s";
    private static final String TAG = "com.vungle.warren.AdLoader";
    private final CacheManager cacheManager;
    private final Downloader downloader;
    private AtomicReference<JobRunner> jobRunnerRef = new AtomicReference<>();
    private final Map<String, Operation> loadOperations = new ConcurrentHashMap();
    private final OMInjector omInjector;
    private final Map<String, Operation> pendingOperations = new ConcurrentHashMap();
    private final Repository repository;
    private final RuntimeValues runtimeValues;
    private final Executors sdkExecutors;
    private final OperationSequence sequence;
    private String sequenceLoadingId = null;
    private final List<Operation> startingOperations = new CopyOnWriteArrayList();
    private final VisionController visionController;
    private final VungleStaticApi vungleApi;
    private final VungleApiClient vungleApiClient;

    /* access modifiers changed from: private */
    public class DownloadAdCallback implements DownloadCallback {
        private DownloadAdCallback() {
        }

        @Override // com.vungle.warren.AdLoader.DownloadCallback
        public void onDownloadCompleted(String str, String str2) {
            Advertisement advertisement;
            String unused = AdLoader.TAG;
            Placement placement = (Placement) AdLoader.this.repository.load(str, Placement.class).get();
            if (placement == null) {
                VungleLogger.error(AdLoader.DOWNLOAD_AD_CALLBACK_ON_DOWNLOAD_COMPLETED_CONTEXT, String.format("loaded placement is null: placementId = %1$s; advertisementId = %2$s", str, str2));
                onDownloadFailed(new VungleException(13), str, str2);
                return;
            }
            if (TextUtils.isEmpty(str2)) {
                advertisement = null;
            } else {
                advertisement = (Advertisement) AdLoader.this.repository.load(str2, Advertisement.class).get();
            }
            if (advertisement == null) {
                VungleLogger.error(AdLoader.DOWNLOAD_AD_CALLBACK_ON_DOWNLOAD_COMPLETED_CONTEXT, String.format("advertisement is null: placementId = %1$s; advertisementId = %2$s", str, str2));
                onDownloadFailed(new VungleException(11), str, str2);
                return;
            }
            advertisement.setFinishedDownloadingTime(System.currentTimeMillis());
            try {
                AdLoader.this.repository.saveAndApplyState(advertisement, str, 1);
                onReady(str, placement, advertisement);
            } catch (DatabaseHelper.DBException e) {
                VungleLogger.error(AdLoader.DOWNLOAD_AD_CALLBACK_ON_DOWNLOAD_COMPLETED_CONTEXT, String.format("Can't save/apply state READY: exception = %1$s;placementId = %2$s; advertisement = %3$s", e, str, advertisement));
                onDownloadFailed(new VungleException(26), str, str2);
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:43:0x00c3 A[SYNTHETIC, Splitter:B:43:0x00c3] */
        /* JADX WARNING: Removed duplicated region for block: B:73:? A[ORIG_RETURN, RETURN, SYNTHETIC] */
        @Override // com.vungle.warren.AdLoader.DownloadCallback
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void onDownloadFailed(com.vungle.warren.error.VungleException r12, java.lang.String r13, java.lang.String r14) {
            /*
            // Method dump skipped, instructions count: 337
            */
            throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.AdLoader.DownloadAdCallback.onDownloadFailed(com.vungle.warren.error.VungleException, java.lang.String, java.lang.String):void");
        }

        @Override // com.vungle.warren.AdLoader.DownloadCallback
        public void onReady(String str, Placement placement, Advertisement advertisement) {
            AdLoader.this.setLoading(str, false);
            HeaderBiddingCallback headerBiddingCallback = AdLoader.this.runtimeValues.headerBiddingCallback.get();
            if (placement.isHeaderBidding() && headerBiddingCallback != null) {
                headerBiddingCallback.adAvailableForBidToken(str, advertisement.getBidToken());
            }
            String str2 = AdLoader.TAG;
            Log.i(str2, "found already cached valid adv, calling onAdLoad " + str + " callback ");
            InitCallback initCallback = AdLoader.this.runtimeValues.initCallback.get();
            if (placement.isAutoCached() && initCallback != null) {
                initCallback.onAutoCacheAdAvailable(str);
            }
            Operation operation = (Operation) AdLoader.this.loadOperations.remove(str);
            if (operation != null) {
                placement.setAdSize(operation.size);
                try {
                    AdLoader.this.repository.save(placement);
                } catch (DatabaseHelper.DBException e) {
                    VungleLogger.error("AdLoader#DownloadAdCallback#onReady; loadAd sequence", String.format("Can't save placement: exception = %1$s;placement = %2$s; advertisement = %3$s", e, placement, advertisement));
                    onDownloadFailed(new VungleException(26), str, advertisement.getId());
                }
                for (LoadAdCallback loadAdCallback : operation.loadAdCallbacks) {
                    loadAdCallback.onAdLoad(str);
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public interface DownloadCallback {
        void onDownloadCompleted(String str, String str2);

        void onDownloadFailed(VungleException vungleException, String str, String str2);

        void onReady(String str, Placement placement, Advertisement advertisement);
    }

    public static class Operation {
        long delay;
        final String id;
        final Set<LoadAdCallback> loadAdCallbacks;
        final AtomicBoolean loading;
        boolean logError;
        int policy;
        @Priority
        int priority;
        List<DownloadRequest> requests = new CopyOnWriteArrayList();
        int retry;
        long retryDelay;
        int retryLimit;
        final AdConfig.AdSize size;

        Operation(String str, AdConfig.AdSize adSize, long j, long j2, int i, int i2, int i3, boolean z, @Priority int i4, LoadAdCallback... loadAdCallbackArr) {
            CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
            this.loadAdCallbacks = copyOnWriteArraySet;
            this.id = str;
            this.delay = j;
            this.retryDelay = j2;
            this.retryLimit = i;
            this.policy = i2;
            this.retry = i3;
            this.loading = new AtomicBoolean();
            this.size = adSize;
            this.logError = z;
            this.priority = i4;
            if (loadAdCallbackArr != null) {
                copyOnWriteArraySet.addAll(Arrays.asList(loadAdCallbackArr));
            }
        }

        /* access modifiers changed from: package-private */
        public Operation delay(long j) {
            return new Operation(this.id, this.size, j, this.retryDelay, this.retryLimit, this.policy, this.retry, this.logError, this.priority, (LoadAdCallback[]) this.loadAdCallbacks.toArray(new LoadAdCallback[0]));
        }

        /* access modifiers changed from: package-private */
        public void merge(Operation operation) {
            this.delay = Math.min(this.delay, operation.delay);
            this.retryDelay = Math.min(this.retryDelay, operation.retryDelay);
            this.retryLimit = Math.min(this.retryLimit, operation.retryLimit);
            int i = operation.policy;
            if (i != 0) {
                i = this.policy;
            }
            this.policy = i;
            this.retry = Math.min(this.retry, operation.retry);
            this.logError |= operation.logError;
            this.priority = Math.min(this.priority, operation.priority);
            this.loadAdCallbacks.addAll(operation.loadAdCallbacks);
        }

        /* access modifiers changed from: package-private */
        public Operation retry(int i) {
            return new Operation(this.id, this.size, this.delay, this.retryDelay, this.retryLimit, this.policy, i, this.logError, this.priority, (LoadAdCallback[]) this.loadAdCallbacks.toArray(new LoadAdCallback[0]));
        }

        /* access modifiers changed from: package-private */
        public Operation retryDelay(long j) {
            return new Operation(this.id, this.size, this.delay, j, this.retryLimit, this.policy, this.retry, this.logError, this.priority, (LoadAdCallback[]) this.loadAdCallbacks.toArray(new LoadAdCallback[0]));
        }

        public String toString() {
            StringBuilder q = ic.q("id=");
            q.append(this.id);
            q.append(" size=");
            q.append(this.size.toString());
            q.append(" priority=");
            q.append(this.priority);
            q.append(" policy=");
            q.append(this.policy);
            q.append(" retry=");
            q.append(this.retry);
            q.append("/");
            q.append(this.retryLimit);
            q.append(" delay=");
            q.append(this.delay);
            q.append("->");
            q.append(this.retryDelay);
            q.append(" log=");
            q.append(this.logError);
            return q.toString();
        }
    }

    public @interface Priority {
        public static final int HIGH = 1;
        public static final int HIGHEST = 0;
        public static final int LOWEST = Integer.MAX_VALUE;
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ReschedulePolicy {
        public static final int EXPONENTIAL = 0;
        public static final int EXPONENTIAL_ENDLESS_AD = 1;
    }

    public AdLoader(Executors executors, Repository repository2, VungleApiClient vungleApiClient2, CacheManager cacheManager2, Downloader downloader2, RuntimeValues runtimeValues2, VungleStaticApi vungleStaticApi, VisionController visionController2, OperationSequence operationSequence, OMInjector oMInjector) {
        this.sdkExecutors = executors;
        this.repository = repository2;
        this.vungleApiClient = vungleApiClient2;
        this.cacheManager = cacheManager2;
        this.downloader = downloader2;
        this.runtimeValues = runtimeValues2;
        this.vungleApi = vungleStaticApi;
        this.visionController = visionController2;
        this.sequence = operationSequence;
        this.omInjector = oMInjector;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private boolean canReDownload(Advertisement advertisement) {
        List<AdAsset> list;
        if (advertisement == null || (!(advertisement.getState() == 0 || advertisement.getState() == 1) || (list = this.repository.loadAllAdAssets(advertisement.getId()).get()) == null || list.size() == 0)) {
            return false;
        }
        for (AdAsset adAsset : list) {
            if (adAsset.fileType == 1) {
                if (!fileIsValid(new File(adAsset.localPath), adAsset)) {
                    return false;
                }
            } else if (TextUtils.isEmpty(adAsset.serverPath)) {
                return false;
            }
        }
        return true;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    /* JADX WARNING: Removed duplicated region for block: B:3:0x0021  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void downloadAdAssets(com.vungle.warren.AdLoader.Operation r12, com.vungle.warren.model.Advertisement r13, com.vungle.warren.AdLoader.DownloadCallback r14) {
        /*
        // Method dump skipped, instructions count: 482
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.AdLoader.downloadAdAssets(com.vungle.warren.AdLoader$Operation, com.vungle.warren.model.Advertisement, com.vungle.warren.AdLoader$DownloadCallback):void");
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void fetchAdMetadata(final Operation operation, Placement placement, final DownloadCallback downloadCallback) {
        final HeaderBiddingCallback headerBiddingCallback = this.runtimeValues.headerBiddingCallback.get();
        final long currentTimeMillis = System.currentTimeMillis();
        this.vungleApiClient.requestAd(operation.id, AdConfig.AdSize.isBannerAdSize(operation.size) ? operation.size.getName() : "", placement.isHeaderBidding(), this.visionController.isEnabled() ? this.visionController.getPayload() : null).enqueue(new Callback<s60>() {
            /* class com.vungle.warren.AdLoader.AnonymousClass4 */

            @Override // com.vungle.warren.network.Callback
            public void onFailure(Call<s60> call, Throwable th) {
                VungleLogger.error(AdLoader.FETCH_AD_METADATA_CONTEXT, String.format("failed to request ad, id = %1$s, throwable = %2$s", operation.id, th));
                downloadCallback.onDownloadFailed(AdLoader.this.retrofitToVungleException(th), operation.id, null);
            }

            @Override // com.vungle.warren.network.Callback
            public void onResponse(Call<s60> call, final Response<s60> response) {
                AdLoader.this.sdkExecutors.getBackgroundExecutor().execute(new Runnable() {
                    /* class com.vungle.warren.AdLoader.AnonymousClass4.AnonymousClass1 */

                    public void run() {
                        AnonymousClass4 r0;
                        HeaderBiddingCallback headerBiddingCallback;
                        int state;
                        Placement placement = (Placement) AdLoader.this.repository.load(operation.id, Placement.class).get();
                        if (placement == null) {
                            Log.e(AdLoader.TAG, "Placement metadata not found for requested advertisement.");
                            VungleLogger.error(AdLoader.FETCH_AD_METADATA_CONTEXT, "Placement metadata not found for requested advertisement. id = " + operation.id);
                            downloadCallback.onDownloadFailed(new VungleException(2), operation.id, null);
                        } else if (!response.isSuccessful()) {
                            long retryAfterHeaderValue = AdLoader.this.vungleApiClient.getRetryAfterHeaderValue(response);
                            if (retryAfterHeaderValue <= 0 || !placement.isAutoCached()) {
                                Log.e(AdLoader.TAG, "Failed to retrieve advertisement information");
                                VungleLogger.error(AdLoader.FETCH_AD_METADATA_CONTEXT, String.format("Response was not successful, not retrying;id = %1$s; responseCode = %2$s", operation.id, Integer.valueOf(response.code())));
                                AnonymousClass4 r02 = AnonymousClass4.this;
                                downloadCallback.onDownloadFailed(AdLoader.this.reposeCodeToVungleException(response.code()), operation.id, null);
                                return;
                            }
                            AnonymousClass4 r4 = AnonymousClass4.this;
                            AdLoader.this.loadEndless(placement, operation.size, retryAfterHeaderValue);
                            VungleLogger.error(AdLoader.FETCH_AD_METADATA_CONTEXT, "Response was not successful, retrying; id = " + operation.id);
                            downloadCallback.onDownloadFailed(new VungleException(14), operation.id, null);
                        } else {
                            s60 s60 = (s60) response.body();
                            String unused = AdLoader.TAG;
                            String str = "Ads Response: " + s60;
                            if (s60 != null && s60.q("ads")) {
                                p60 n = s60.n("ads");
                                Objects.requireNonNull(n);
                                if (!(n instanceof r60)) {
                                    m60 o = s60.o("ads");
                                    if (o == null || o.size() == 0) {
                                        StringBuilder q = ic.q("Response was successful, but no ads; id = ");
                                        q.append(operation.id);
                                        VungleLogger.error(AdLoader.FETCH_AD_METADATA_CONTEXT, q.toString());
                                        downloadCallback.onDownloadFailed(new VungleException(1), operation.id, null);
                                        return;
                                    }
                                    s60 e = o.k(0).e();
                                    try {
                                        Advertisement advertisement = new Advertisement(e);
                                        if (AdLoader.this.visionController.isEnabled()) {
                                            s60 p = e.p("ad_markup");
                                            if (JsonUtil.hasNonNull(p, "data_science_cache")) {
                                                AdLoader.this.visionController.setDataScienceCache(p.n("data_science_cache").h());
                                            } else {
                                                AdLoader.this.visionController.setDataScienceCache(null);
                                            }
                                        }
                                        Advertisement advertisement2 = (Advertisement) AdLoader.this.repository.load(advertisement.getId(), Advertisement.class).get();
                                        if (advertisement2 == null || !((state = advertisement2.getState()) == 0 || state == 1 || state == 2)) {
                                            if (placement.isHeaderBidding() && (headerBiddingCallback = headerBiddingCallback) != null) {
                                                headerBiddingCallback.onBidTokenAvailable(operation.id, advertisement.getBidToken());
                                            }
                                            AdLoader.this.repository.deleteAdvertisement(advertisement.getId());
                                            Set<Map.Entry<String, String>> entrySet = advertisement.getDownloadableUrls().entrySet();
                                            File destinationDir = AdLoader.this.getDestinationDir(advertisement);
                                            if (destinationDir != null) {
                                                if (destinationDir.isDirectory()) {
                                                    for (Map.Entry<String, String> entry : entrySet) {
                                                        if (!URLUtil.isHttpsUrl(entry.getValue())) {
                                                            if (!URLUtil.isHttpUrl(entry.getValue())) {
                                                                VungleLogger.error(AdLoader.FETCH_AD_METADATA_CONTEXT, String.format("Response was successful, but one of downloadable urls is neither http nor https : url = %1$s; op.id = %2$s, ad.getId() = %3$s", entry.getValue(), operation.id, advertisement.getId()));
                                                                downloadCallback.onDownloadFailed(new VungleException(11), operation.id, advertisement.getId());
                                                                return;
                                                            }
                                                        }
                                                        AdLoader.this.saveAsset(advertisement, destinationDir, entry.getKey(), entry.getValue());
                                                    }
                                                    if (placement.getPlacementAdType() != 1 || (advertisement.getAdType() == 1 && "banner".equals(advertisement.getTemplateType()))) {
                                                        advertisement.getAdConfig().setAdSize(operation.size);
                                                        advertisement.setAdRequestStartTime(currentTimeMillis);
                                                        advertisement.setAssetDownloadStartTime(System.currentTimeMillis());
                                                        AdLoader.this.repository.saveAndApplyState(advertisement, operation.id, 0);
                                                        AnonymousClass4 r03 = AnonymousClass4.this;
                                                        AdLoader.this.downloadAdAssets(operation, advertisement, downloadCallback);
                                                        return;
                                                    }
                                                    Object[] objArr = new Object[3];
                                                    objArr[0] = advertisement.getAdType() != 1 ? "ad type is not MRAID" : "advertisement template type is not banner";
                                                    objArr[1] = operation.id;
                                                    objArr[2] = advertisement.getId();
                                                    VungleLogger.error(AdLoader.FETCH_AD_METADATA_CONTEXT, String.format("Response was successful, but placement is banner while %1$s; op.id = %2$s, ad.getId() = %3$s", objArr));
                                                    downloadCallback.onDownloadFailed(new VungleException(1), operation.id, advertisement.getId());
                                                    return;
                                                }
                                            }
                                            Object[] objArr2 = new Object[3];
                                            objArr2[0] = destinationDir == null ? "null" : AdLoader.NOT_A_DIR;
                                            objArr2[1] = operation.id;
                                            objArr2[2] = advertisement.getId();
                                            VungleLogger.error(AdLoader.FETCH_AD_METADATA_CONTEXT, String.format("Response was successful, but adv directory is %1$s; op.id = %2$s, ad.getId() = %3$s", objArr2));
                                            downloadCallback.onDownloadFailed(new VungleException(26), operation.id, advertisement.getId());
                                            return;
                                        }
                                        String unused2 = AdLoader.TAG;
                                        downloadCallback.onDownloadFailed(new VungleException(25), operation.id, null);
                                        return;
                                    } catch (IllegalArgumentException unused3) {
                                        s60 p2 = e.p("ad_markup");
                                        if (p2.q("sleep")) {
                                            long d = (long) p2.n("sleep").d();
                                            placement.snooze(d);
                                            try {
                                                VungleLogger.warn(AdLoader.FETCH_AD_METADATA_CONTEXT, String.format("badAd - snoozed placement %1$s; op.id = %2$s", placement, operation.id));
                                                AdLoader.this.repository.save(placement);
                                                if (placement.isAutoCached()) {
                                                    AnonymousClass4 r3 = AnonymousClass4.this;
                                                    AdLoader.this.loadEndless(placement, operation.size, d * 1000);
                                                }
                                            } catch (DatabaseHelper.DBException unused4) {
                                                VungleLogger.error(AdLoader.FETCH_AD_METADATA_CONTEXT, String.format("badAd - can't save snoozed placement %1$s; op.id = %2$s", placement, operation.id));
                                                downloadCallback.onDownloadFailed(new VungleException(26), operation.id, null);
                                                return;
                                            }
                                        }
                                        VungleLogger.error(AdLoader.FETCH_AD_METADATA_CONTEXT, String.format("badAd; can't proceed %1$s; op.id = %2$s", placement, operation.id));
                                        downloadCallback.onDownloadFailed(new VungleException(1), operation.id, null);
                                        return;
                                    } catch (DatabaseHelper.DBException e2) {
                                        VungleLogger.error(AdLoader.FETCH_AD_METADATA_CONTEXT, String.format("BadAd - DBException; can't proceed; placement = %1$s; op.id = %2$s; exception = %3$s", placement, operation.id, e2));
                                        downloadCallback.onDownloadFailed(new VungleException(26), operation.id, null);
                                        return;
                                    }
                                }
                            }
                            VungleLogger.error(AdLoader.FETCH_AD_METADATA_CONTEXT, String.format("Response has no ads; placement = %1$s;op.id = %2$s; response = %3$s", placement, operation.id, s60));
                            downloadCallback.onDownloadFailed(new VungleException(1), operation.id, null);
                        }
                    }
                });
            }
        });
    }

    private boolean fileIsValid(File file, AdAsset adAsset) {
        return file.exists() && file.length() == adAsset.fileSize;
    }

    private AssetDownloadListener getAssetDownloadListener(Advertisement advertisement, Operation operation, DownloadCallback downloadCallback) {
        return new AssetDownloadListener(operation, downloadCallback, advertisement) {
            /* class com.vungle.warren.AdLoader.AnonymousClass5 */
            AtomicLong downloadCount;
            List<AssetDownloadListener.DownloadError> errors = Collections.synchronizedList(new ArrayList());
            final /* synthetic */ Advertisement val$advertisement;
            final /* synthetic */ DownloadCallback val$callback;
            final /* synthetic */ Operation val$op;

            {
                this.val$op = r2;
                this.val$callback = r3;
                this.val$advertisement = r4;
                this.downloadCount = new AtomicLong((long) r2.requests.size());
            }

            @Override // com.vungle.warren.downloader.AssetDownloadListener
            public void onError(final AssetDownloadListener.DownloadError downloadError, final DownloadRequest downloadRequest) {
                AdLoader.this.sdkExecutors.getBackgroundExecutor().execute(new Runnable() {
                    /* class com.vungle.warren.AdLoader.AnonymousClass5.AnonymousClass1 */

                    public void run() {
                        AdAsset adAsset;
                        Log.e(AdLoader.TAG, "Download Failed");
                        DownloadRequest downloadRequest = downloadRequest;
                        if (downloadRequest != null) {
                            String str = downloadRequest.cookieString;
                            if (TextUtils.isEmpty(str)) {
                                adAsset = null;
                            } else {
                                adAsset = (AdAsset) AdLoader.this.repository.load(str, AdAsset.class).get();
                            }
                            if (adAsset != null) {
                                AnonymousClass5.this.errors.add(downloadError);
                                adAsset.status = 2;
                                try {
                                    AdLoader.this.repository.save(adAsset);
                                } catch (DatabaseHelper.DBException unused) {
                                    AnonymousClass5.this.errors.add(new AssetDownloadListener.DownloadError(-1, new VungleException(26), 4));
                                }
                            } else {
                                AnonymousClass5.this.errors.add(new AssetDownloadListener.DownloadError(-1, new IOException("Downloaded file not found!"), 1));
                            }
                        } else {
                            AnonymousClass5.this.errors.add(new AssetDownloadListener.DownloadError(-1, new RuntimeException("error in request"), 4));
                        }
                        if (AnonymousClass5.this.downloadCount.decrementAndGet() <= 0) {
                            AnonymousClass5 r0 = AnonymousClass5.this;
                            AdLoader.this.onAssetDownloadFinished(r0.val$op.id, r0.val$callback, r0.val$advertisement, r0.errors);
                        }
                    }
                });
            }

            @Override // com.vungle.warren.downloader.AssetDownloadListener
            public void onProgress(AssetDownloadListener.Progress progress, DownloadRequest downloadRequest) {
            }

            @Override // com.vungle.warren.downloader.AssetDownloadListener
            public void onSuccess(final File file, final DownloadRequest downloadRequest) {
                AdLoader.this.sdkExecutors.getBackgroundExecutor().execute(new Runnable() {
                    /* class com.vungle.warren.AdLoader.AnonymousClass5.AnonymousClass2 */

                    public void run() {
                        AdAsset adAsset;
                        if (!file.exists()) {
                            VungleLogger.error(AdLoader.GET_ASSET_DOWNLOAD_LISTENER_CONTEXT, String.format("Downloaded file %1$s doesn't exist", file.getPath()));
                            AnonymousClass5.this.onError(new AssetDownloadListener.DownloadError(-1, new IOException("Downloaded file not found!"), 3), downloadRequest);
                            return;
                        }
                        String str = downloadRequest.cookieString;
                        if (str == null) {
                            adAsset = null;
                        } else {
                            adAsset = (AdAsset) AdLoader.this.repository.load(str, AdAsset.class).get();
                        }
                        if (adAsset == null) {
                            Object[] objArr = new Object[2];
                            objArr[0] = str == null ? "id is null" : "repository returned null";
                            objArr[1] = downloadRequest;
                            VungleLogger.error(AdLoader.GET_ASSET_DOWNLOAD_LISTENER_CONTEXT, String.format("adAsset is null because %1$s, downloadRequest = %2$s", objArr));
                            AnonymousClass5.this.onError(new AssetDownloadListener.DownloadError(-1, new IOException("Downloaded file not found!"), 1), downloadRequest);
                            return;
                        }
                        adAsset.fileType = AdLoader.this.isZip(file) ? 0 : 2;
                        adAsset.fileSize = file.length();
                        adAsset.status = 3;
                        try {
                            AdLoader.this.repository.save(adAsset);
                            if (AnonymousClass5.this.downloadCount.decrementAndGet() <= 0) {
                                AnonymousClass5 r0 = AnonymousClass5.this;
                                AdLoader.this.onAssetDownloadFinished(r0.val$op.id, r0.val$callback, r0.val$advertisement, r0.errors);
                            }
                        } catch (DatabaseHelper.DBException e) {
                            VungleLogger.error(AdLoader.GET_ASSET_DOWNLOAD_LISTENER_CONTEXT, String.format("Can't save adAsset %1$s; exception = %2$s", adAsset, e));
                            AnonymousClass5.this.onError(new AssetDownloadListener.DownloadError(-1, new VungleException(26), 4), downloadRequest);
                        }
                    }
                });
            }
        };
    }

    @DownloadRequest.Priority
    private int getAssetPriority(@Priority int i) {
        return Math.max(-2147483646, i);
    }

    private DownloadRequest getDownloadRequest(AdAsset adAsset, @Priority int i) {
        return new DownloadRequest(3, getAssetPriority(i), adAsset.serverPath, adAsset.localPath, false, adAsset.identifier);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private boolean isSizeInvalid(Placement placement, AdConfig.AdSize adSize) {
        if (placement.getPlacementAdType() == 1 && !AdConfig.AdSize.isBannerAdSize(adSize)) {
            return true;
        }
        if (placement.getPlacementAdType() != 0 || !AdConfig.AdSize.isBannerAdSize(adSize)) {
            return false;
        }
        return true;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private boolean isZip(File file) {
        return file.getName().equals(Advertisement.KEY_POSTROLL) || file.getName().equals(Advertisement.KEY_TEMPLATE);
    }

    private void loadAd(final Operation operation, final DownloadCallbackWrapper downloadCallbackWrapper) {
        final long currentTimeMillis = System.currentTimeMillis();
        this.sdkExecutors.getBackgroundExecutor().execute(new Runnable() {
            /* class com.vungle.warren.AdLoader.AnonymousClass3 */

            public void run() {
                if (!AdLoader.this.vungleApi.isInitialized()) {
                    VungleLogger.error(AdLoader.LOAD_AD_EXECUTE_CONTEXT, "Vungle is not initialized");
                    downloadCallbackWrapper.onDownloadFailed(new VungleException(9), operation.id, null);
                    return;
                }
                Placement placement = (Placement) AdLoader.this.repository.load(operation.id, Placement.class).get();
                if (placement == null) {
                    StringBuilder q = ic.q("placement not found for id");
                    q.append(operation.id);
                    VungleLogger.error(AdLoader.LOAD_AD_EXECUTE_CONTEXT, q.toString());
                    downloadCallbackWrapper.onDownloadFailed(new VungleException(13), operation.id, null);
                } else if (!placement.isValid()) {
                    downloadCallbackWrapper.onDownloadFailed(new VungleException(5), operation.id, null);
                } else if (AdLoader.this.isSizeInvalid(placement, operation.size)) {
                    StringBuilder q2 = ic.q("size is invalid, size = ");
                    q2.append(operation.size);
                    VungleLogger.error(AdLoader.LOAD_AD_EXECUTE_CONTEXT, q2.toString());
                    downloadCallbackWrapper.onDownloadFailed(new VungleException(28), operation.id, null);
                } else {
                    Advertisement advertisement = AdLoader.this.repository.findValidAdvertisementForPlacement(placement.getId()).get();
                    if (!(placement.getPlacementAdType() != 1 || advertisement == null || advertisement.getAdConfig().getAdSize() == operation.size)) {
                        try {
                            AdLoader.this.repository.deleteAdvertisement(advertisement.getId());
                        } catch (DatabaseHelper.DBException unused) {
                            StringBuilder q3 = ic.q("cannot delete advertisement, id = ");
                            q3.append(operation.id);
                            VungleLogger.error(AdLoader.LOAD_AD_EXECUTE_CONTEXT, q3.toString());
                            downloadCallbackWrapper.onDownloadFailed(new VungleException(26), operation.id, null);
                            return;
                        }
                    }
                    if (advertisement != null && AdLoader.this.canPlayAd(advertisement)) {
                        AdLoader.this.tryLoadNextInQueue(operation.id);
                        downloadCallbackWrapper.onReady(operation.id, placement, advertisement);
                    } else if (AdLoader.this.canReDownload(advertisement)) {
                        String unused2 = AdLoader.TAG;
                        VungleSettings vungleSettings = AdLoader.this.runtimeValues.settings.get();
                        if (vungleSettings == null || AdLoader.this.cacheManager.getBytesAvailable() < vungleSettings.getMinimumSpaceForAd()) {
                            if (advertisement.getState() != 4) {
                                try {
                                    AdLoader.this.repository.saveAndApplyState(advertisement, operation.id, 4);
                                } catch (DatabaseHelper.DBException unused3) {
                                    StringBuilder q4 = ic.q("cannot save/apply ERROR state, id = ");
                                    q4.append(operation.id);
                                    VungleLogger.error("AdLoader#loadAd#execute; loadAd sequence; canReDownload branch", q4.toString());
                                    downloadCallbackWrapper.onDownloadFailed(new VungleException(26), operation.id, null);
                                    return;
                                }
                            }
                            StringBuilder q5 = ic.q("failed to download assets, no space; id = ");
                            q5.append(operation.id);
                            VungleLogger.error(AdLoader.LOAD_AD_EXECUTE_CONTEXT, q5.toString());
                            downloadCallbackWrapper.onDownloadFailed(new VungleException(19), operation.id, null);
                            return;
                        }
                        AdLoader.this.setLoading(operation.id, true);
                        if (advertisement.getState() != 0) {
                            try {
                                AdLoader.this.repository.saveAndApplyState(advertisement, operation.id, 0);
                            } catch (DatabaseHelper.DBException unused4) {
                                StringBuilder q6 = ic.q("cannot save/apply NEW state, id = ");
                                q6.append(operation.id);
                                VungleLogger.error("AdLoader#loadAd#execute; loadAd sequence; canReDownload branch", q6.toString());
                                downloadCallbackWrapper.onDownloadFailed(new VungleException(26), operation.id, null);
                                return;
                            }
                        }
                        advertisement.setAdRequestStartTime(currentTimeMillis);
                        advertisement.setAssetDownloadStartTime(System.currentTimeMillis());
                        AdLoader.this.downloadAdAssets(operation, advertisement, downloadCallbackWrapper);
                    } else if (placement.getWakeupTime() > System.currentTimeMillis()) {
                        downloadCallbackWrapper.onDownloadFailed(new VungleException(1), operation.id, null);
                        VungleLogger.warn("AdLoader#loadAd#execute; loadAd sequence; snoozed branch", String.format("Placement with id %s is snoozed ", placement.getId()));
                        String str = AdLoader.TAG;
                        StringBuilder q7 = ic.q("Placement ");
                        q7.append(placement.getId());
                        q7.append(" is  snoozed");
                        Log.w(str, q7.toString());
                        if (placement.isAutoCached()) {
                            String unused5 = AdLoader.TAG;
                            placement.getId();
                            AdLoader.this.loadEndless(placement, operation.size, placement.getWakeupTime() - System.currentTimeMillis());
                        }
                    } else {
                        String str2 = AdLoader.TAG;
                        StringBuilder q8 = ic.q("didn't find cached adv for ");
                        q8.append(operation.id);
                        q8.append(" downloading ");
                        Log.i(str2, q8.toString());
                        if (advertisement != null) {
                            try {
                                AdLoader.this.repository.saveAndApplyState(advertisement, operation.id, 4);
                            } catch (DatabaseHelper.DBException unused6) {
                                StringBuilder q9 = ic.q("cannot save/apply ERROR state, id = ");
                                q9.append(operation.id);
                                VungleLogger.error("AdLoader#loadAd#execute; loadAd sequence; last else branch", q9.toString());
                                downloadCallbackWrapper.onDownloadFailed(new VungleException(26), operation.id, null);
                                return;
                            }
                        }
                        VungleSettings vungleSettings2 = AdLoader.this.runtimeValues.settings.get();
                        if (vungleSettings2 == null || AdLoader.this.cacheManager.getBytesAvailable() >= vungleSettings2.getMinimumSpaceForAd()) {
                            String unused7 = AdLoader.TAG;
                            placement.getId();
                            AdLoader.this.setLoading(operation.id, true);
                            AdLoader.this.fetchAdMetadata(operation, placement, downloadCallbackWrapper);
                            return;
                        }
                        VungleLogger.error("AdLoader#loadAd#execute; loadAd sequence; last else branch", String.format("no space to load, isAutoCached = %1$s, id = %2$s", Boolean.valueOf(placement.isAutoCached()), operation.id));
                        downloadCallbackWrapper.onDownloadFailed(new VungleException(placement.isAutoCached() ? 18 : 17), operation.id, null);
                    }
                }
            }
        });
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    /* JADX WARNING: Removed duplicated region for block: B:97:0x0248 A[EDGE_INSN: B:97:0x0248->B:86:0x0248 ?: BREAK  , SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void onAssetDownloadFinished(java.lang.String r17, com.vungle.warren.AdLoader.DownloadCallback r18, com.vungle.warren.model.Advertisement r19, java.util.List<com.vungle.warren.downloader.AssetDownloadListener.DownloadError> r20) {
        /*
        // Method dump skipped, instructions count: 592
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.AdLoader.onAssetDownloadFinished(java.lang.String, com.vungle.warren.AdLoader$DownloadCallback, com.vungle.warren.model.Advertisement, java.util.List):void");
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void onChangePriority(Operation operation) {
        for (DownloadRequest downloadRequest : operation.requests) {
            downloadRequest.setPriority(getAssetPriority(operation.priority));
            this.downloader.updatePriority(downloadRequest);
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void onError(Operation operation, @VungleException.ExceptionCode int i) {
        Object[] objArr = new Object[2];
        objArr[0] = new VungleException(i);
        objArr[1] = operation != null ? operation : "null";
        VungleLogger.error("AdLoader#onError; loadAd sequence", String.format("Error %1$s occured; operation is %2$s", objArr));
        if (operation != null) {
            for (LoadAdCallback loadAdCallback : operation.loadAdCallbacks) {
                loadAdCallback.onError(operation.id, new VungleException(i));
            }
        }
    }

    private boolean recoverableServerCode(int i) {
        return i == 408 || (500 <= i && i < 600);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private VungleException reposeCodeToVungleException(int i) {
        if (recoverableServerCode(i)) {
            return new VungleException(22);
        }
        return new VungleException(21);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private VungleException retrofitToVungleException(Throwable th) {
        if (th instanceof UnknownHostException) {
            return new VungleException(11);
        }
        if (th instanceof IOException) {
            return new VungleException(20);
        }
        return new VungleException(11);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void setLoading(String str, boolean z) {
        Operation operation = this.loadOperations.get(str);
        if (operation != null) {
            operation.loading.set(z);
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void startLoading(Operation operation) {
        this.loadOperations.put(operation.id, operation);
        loadAd(operation, new DownloadCallbackWrapper(this.sdkExecutors.getBackgroundExecutor(), new DownloadAdCallback()));
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void tryLoadNextInQueue(String str) {
        String str2 = this.sequenceLoadingId;
        if (str2 == null || str2.equals(str)) {
            this.sequenceLoadingId = null;
            OperationSequence.Entry poll = this.sequence.poll();
            if (poll != null) {
                Operation operation = poll.operation;
                this.sequenceLoadingId = operation.id;
                startLoading(operation);
            }
        }
    }

    private void unzipFile(Advertisement advertisement, AdAsset adAsset, final File file, List<AdAsset> list) {
        final ArrayList arrayList = new ArrayList();
        for (AdAsset adAsset2 : list) {
            if (adAsset2.fileType == 2) {
                arrayList.add(adAsset2.localPath);
            }
        }
        File destinationDir = getDestinationDir(advertisement);
        if (destinationDir == null || !destinationDir.isDirectory()) {
            Object[] objArr = new Object[2];
            objArr[0] = destinationDir == null ? "null" : NOT_A_DIR;
            objArr[1] = advertisement;
            VungleLogger.error("AdLoader#unzipFile; loadAd sequence", String.format("Can't unzip file: destination dir is %1$s; advertisement = %2$s", objArr));
            throw new IOException("Unable to access Destination Directory");
        }
        List<File> unzip = UnzipUtility.unzip(file.getPath(), destinationDir.getPath(), new UnzipUtility.Filter() {
            /* class com.vungle.warren.AdLoader.AnonymousClass6 */

            @Override // com.vungle.warren.utility.UnzipUtility.Filter
            public boolean matches(String str) {
                File file = new File(str);
                for (String str2 : arrayList) {
                    File file2 = new File(str2);
                    if (file2.equals(file)) {
                        return false;
                    }
                    String path = file.getPath();
                    if (path.startsWith(file2.getPath() + File.separator)) {
                        return false;
                    }
                }
                return true;
            }
        });
        if (file.getName().equals(Advertisement.KEY_TEMPLATE)) {
            StringBuilder sb = new StringBuilder();
            sb.append(destinationDir.getPath());
            File file2 = new File(ic.l(sb, File.separator, "mraid.js"));
            if (file2.exists()) {
                PrintWriter printWriter = new PrintWriter(new BufferedWriter(new FileWriter(file2, true)));
                HackMraid.apply(printWriter);
                printWriter.close();
            }
        }
        for (File file3 : unzip) {
            AdAsset adAsset3 = new AdAsset(advertisement.getId(), null, file3.getPath());
            adAsset3.fileSize = file3.length();
            adAsset3.fileType = 1;
            adAsset3.parentId = adAsset.identifier;
            adAsset3.status = 3;
            this.repository.save(adAsset3);
        }
        String str = "Uzipped " + destinationDir;
        FileUtility.printDirectoryTree(destinationDir);
        adAsset.status = 4;
        this.repository.save(adAsset, new Repository.SaveCallback() {
            /* class com.vungle.warren.AdLoader.AnonymousClass7 */

            @Override // com.vungle.warren.persistence.Repository.SaveCallback
            public void onError(Exception exc) {
            }

            @Override // com.vungle.warren.persistence.Repository.SaveCallback
            public void onSaved() {
                AdLoader.this.sdkExecutors.getBackgroundExecutor().execute(new Runnable() {
                    /* class com.vungle.warren.AdLoader.AnonymousClass7.AnonymousClass1 */

                    public void run() {
                        try {
                            FileUtility.delete(file);
                        } catch (IOException e) {
                            Log.e(AdLoader.TAG, "Error on deleting zip assets archive", e);
                        }
                    }
                });
            }
        });
    }

    public boolean canPlayAd(Advertisement advertisement) {
        if (advertisement == null || advertisement.getState() != 1) {
            return false;
        }
        return hasAssetsFor(advertisement.getId());
    }

    public boolean canRenderAd(Advertisement advertisement) {
        if (advertisement == null) {
            return false;
        }
        if (advertisement.getState() == 1 || advertisement.getState() == 2) {
            return hasAssetsFor(advertisement.getId());
        }
        return false;
    }

    public void clear() {
        HashSet hashSet = new HashSet();
        hashSet.addAll(this.loadOperations.keySet());
        hashSet.addAll(this.pendingOperations.keySet());
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            Operation remove = this.loadOperations.remove(str);
            this.startingOperations.remove(remove);
            onError(remove, 25);
            onError(this.pendingOperations.remove(str), 25);
        }
        for (Operation operation : this.startingOperations) {
            this.startingOperations.remove(operation);
            onError(operation, 25);
        }
        this.sdkExecutors.getBackgroundExecutor().submit(new Runnable() {
            /* class com.vungle.warren.AdLoader.AnonymousClass1 */

            public void run() {
                for (OperationSequence.Entry entry : AdLoader.this.sequence.removeAll()) {
                    AdLoader.this.onError(entry.operation, 25);
                }
            }
        });
    }

    public void dropCache(String str) {
        List<AdAsset> list = this.repository.loadAllAdAssets(str).get();
        if (list == null) {
            Log.w(TAG, "No assets found in ad cache to cleanup");
            return;
        }
        for (AdAsset adAsset : list) {
            this.downloader.dropCache(adAsset.serverPath);
        }
    }

    /* access modifiers changed from: package-private */
    public File getDestinationDir(Advertisement advertisement) {
        return this.repository.getAdvertisementAssetDirectory(advertisement.getId()).get();
    }

    /* access modifiers changed from: package-private */
    public Collection<Operation> getPendingOperations() {
        return this.pendingOperations.values();
    }

    /* access modifiers changed from: package-private */
    public Collection<Operation> getRunningOperations() {
        return this.loadOperations.values();
    }

    /* access modifiers changed from: package-private */
    public boolean hasAssetsFor(String str) {
        List<AdAsset> list = this.repository.loadAllAdAssets(str).get();
        if (list == null || list.size() == 0) {
            return false;
        }
        for (AdAsset adAsset : list) {
            if (adAsset.fileType == 0) {
                if (adAsset.status != 4) {
                    return false;
                }
            } else if (adAsset.status != 3 || !fileIsValid(new File(adAsset.localPath), adAsset)) {
                return false;
            }
        }
        return true;
    }

    public void init(JobRunner jobRunner) {
        this.jobRunnerRef.set(jobRunner);
        this.downloader.init();
    }

    public boolean isLoading(String str) {
        Operation operation = this.loadOperations.get(str);
        return operation != null && operation.loading.get();
    }

    public void load(final Operation operation) {
        JobRunner jobRunner = this.jobRunnerRef.get();
        if (jobRunner == null) {
            VungleLogger.error("AdLoader#load; loadAd sequence", String.format("Cannot load operation %s; job runner is null", operation));
            onError(operation, 9);
            return;
        }
        Operation remove = this.pendingOperations.remove(operation.id);
        if (remove != null) {
            operation.merge(remove);
        }
        if (operation.delay <= 0) {
            this.startingOperations.add(operation);
            this.sdkExecutors.getBackgroundExecutor().execute(new Runnable() {
                /* class com.vungle.warren.AdLoader.AnonymousClass2 */

                public void run() {
                    if (AdLoader.this.startingOperations.contains(operation)) {
                        Operation operation = operation;
                        Operation operation2 = (Operation) AdLoader.this.loadOperations.get(operation.id);
                        if (operation2 != null) {
                            int i = operation2.priority;
                            operation2.merge(operation);
                            if (operation2.priority < i) {
                                AdLoader.this.onChangePriority(operation2);
                            }
                        } else {
                            OperationSequence.Entry remove = AdLoader.this.sequence.remove(operation.id);
                            if (remove != null) {
                                remove.operation.merge(operation);
                                operation = remove.operation;
                            }
                            if (operation.priority <= 0) {
                                AdLoader.this.startLoading(operation);
                            } else {
                                OperationSequence operationSequence = AdLoader.this.sequence;
                                if (remove == null) {
                                    remove = new OperationSequence.Entry(operation);
                                }
                                operationSequence.offer(remove);
                                AdLoader.this.tryLoadNextInQueue(null);
                            }
                        }
                        AdLoader.this.startingOperations.remove(operation);
                    }
                }
            });
            return;
        }
        this.pendingOperations.put(operation.id, operation);
        jobRunner.execute(DownloadJob.makeJobInfo(operation.id).setDelay(operation.delay).setUpdateCurrent(true));
    }

    public void loadEndless(Placement placement, AdConfig.AdSize adSize, long j) {
        if (!isSizeInvalid(placement, adSize)) {
            load(new Operation(placement.getId(), adSize, j, RETRY_DELAY, 5, 1, 0, false, placement.getAutoCachePriority(), new LoadAdCallback[0]));
        }
    }

    public void loadPendingInternal(String str) {
        Operation remove = this.pendingOperations.remove(str);
        if (remove != null) {
            load(remove.delay(0));
        }
    }

    /* access modifiers changed from: package-private */
    public void saveAsset(Advertisement advertisement, File file, String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(file.getPath());
        String l = ic.l(sb, File.separator, str);
        int i = (l.endsWith(Advertisement.KEY_POSTROLL) || l.endsWith(Advertisement.KEY_TEMPLATE)) ? 0 : 2;
        AdAsset adAsset = new AdAsset(advertisement.getId(), str2, l);
        adAsset.status = 0;
        adAsset.fileType = i;
        try {
            this.repository.save(adAsset);
        } catch (DatabaseHelper.DBException e) {
            VungleLogger.error("AdLoader#saveAsset; loadAd sequence", String.format("Can't save adAsset %1$s; exception = %2$s", adAsset, e));
            throw e;
        }
    }

    public void loadEndless(Placement placement, long j) {
        loadEndless(placement, placement.getAdSize(), j);
    }

    public void load(String str, LoadAdCallback loadAdCallback) {
        load(new Operation(str, AdConfig.AdSize.VUNGLE_DEFAULT, 0, RETRY_DELAY, 5, 0, 0, true, 0, loadAdCallback));
    }

    public void load(String str, AdConfig adConfig, LoadAdCallback loadAdCallback) {
        load(new Operation(str, adConfig.getAdSize(), 0, RETRY_DELAY, 5, 0, 0, true, 0, loadAdCallback));
    }
}
