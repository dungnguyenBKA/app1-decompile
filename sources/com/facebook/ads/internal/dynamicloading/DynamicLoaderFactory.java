package com.facebook.ads.internal.dynamicloading;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.Keep;
import com.facebook.ads.AudienceNetworkAds;
import com.facebook.ads.BuildConfig;
import com.facebook.ads.internal.settings.MultithreadedBundleWrapper;
import com.facebook.ads.internal.util.common.ANActivityLifecycleCallbacksListener;
import com.facebook.ads.internal.util.common.Preconditions;
import com.vungle.warren.error.VungleException;
import dalvik.system.DexClassLoader;
import dalvik.system.InMemoryDexClassLoader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

@Keep
public class DynamicLoaderFactory {
    private static final String AUDIENCE_NETWORK_CODE_PATH = "audience_network";
    public static final String AUDIENCE_NETWORK_DEX = "audience_network.dex";
    private static final String CODE_CACHE_DIR = "code_cache";
    static final String DEX_LOADING_ERROR_MESSAGE = "Can't load Audience Network Dex. Please, check that audience_network.dex is inside of assets folder.";
    private static final int DEX_LOAD_RETRY_COUNT = 3;
    private static final int DEX_LOAD_RETRY_DELAY_MS = 200;
    private static final String DYNAMIC_LOADING_BUILD_TYPE = "releaseDL";
    public static final boolean LOAD_FROM_ASSETS = "releaseDL".equals(BuildConfig.BUILD_TYPE);
    private static final String OPTIMIZED_DEX_PATH = "optimized";
    private static final AtomicReference<DynamicLoader> sDynamicLoader = new AtomicReference<>();
    private static boolean sFallbackMode;
    private static final AtomicBoolean sInitializing = new AtomicBoolean();
    private static boolean sUseLegacyClassLoader = true;

    class a implements Runnable {
        final /* synthetic */ Context b;
        final /* synthetic */ boolean c;
        final /* synthetic */ MultithreadedBundleWrapper d;
        final /* synthetic */ AudienceNetworkAds.InitListener e;

        a(Context context, boolean z, MultithreadedBundleWrapper multithreadedBundleWrapper, AudienceNetworkAds.InitListener initListener) {
            this.b = context;
            this.c = z;
            this.d = multithreadedBundleWrapper;
            this.e = initListener;
        }

        @SuppressLint({"CatchGeneralException"})
        public void run() {
            DynamicLoader dynamicLoader;
            Throwable th;
            ANActivityLifecycleCallbacksListener.registerActivityCallbacks(this.b);
            synchronized (DynamicLoaderFactory.class) {
                dynamicLoader = null;
                th = null;
                for (int i = 0; i < 3; i++) {
                    try {
                        dynamicLoader = DynamicLoaderFactory.doMakeLoader(this.b, false);
                        break;
                    } catch (Throwable th2) {
                        if (i == 2) {
                            if (!this.c) {
                                DexLoadErrorReporter.reportDexLoadingIssue(this.b, DynamicLoaderFactory.createErrorMessage(th2), 0.1d);
                                DynamicLoaderFactory.setFallbackMode(true);
                            }
                            th = th2;
                        } else {
                            SystemClock.sleep(200);
                        }
                    }
                }
            }
            DynamicLoaderFactory.doCallInitialize(this.b, dynamicLoader, th, this.c, this.d, this.e);
            DynamicLoaderFactory.sInitializing.set(false);
        }
    }

    /* access modifiers changed from: package-private */
    public class b implements Runnable {
        final /* synthetic */ AudienceNetworkAds.InitListener b;
        final /* synthetic */ Throwable c;

        b(AudienceNetworkAds.InitListener initListener, Throwable th) {
            this.b = initListener;
            this.c = th;
        }

        public void run() {
            this.b.onInitialized(DynamicLoaderFactory.createErrorInitResult(this.c));
        }
    }

    /* access modifiers changed from: package-private */
    public class c implements AudienceNetworkAds.InitResult {
        final /* synthetic */ Throwable a;

        c(Throwable th) {
            this.a = th;
        }

        @Override // com.facebook.ads.AudienceNetworkAds.InitResult
        public String getMessage() {
            return DynamicLoaderFactory.createErrorMessage(this.a);
        }

        @Override // com.facebook.ads.AudienceNetworkAds.InitResult
        public boolean isSuccess() {
            return false;
        }
    }

    /* access modifiers changed from: private */
    public static AudienceNetworkAds.InitResult createErrorInitResult(Throwable th) {
        return new c(th);
    }

    /* access modifiers changed from: private */
    public static String createErrorMessage(Throwable th) {
        StringBuilder q = ic.q("Can't load Audience Network Dex. Please, check that audience_network.dex is inside of assets folder.\n");
        q.append(stackTraceToString(th));
        return q.toString();
    }

    @TargetApi(VungleException.DB_ERROR)
    private static ClassLoader createInMemoryClassLoader(Context context) {
        InputStream open = context.getAssets().open(AUDIENCE_NETWORK_DEX);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int read = open.read(bArr);
            if (read > 0) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                open.close();
                byteArrayOutputStream.flush();
                byteArrayOutputStream.close();
                return new InMemoryDexClassLoader(ByteBuffer.wrap(byteArrayOutputStream.toByteArray()), DynamicLoaderFactory.class.getClassLoader());
            }
        }
    }

    /* access modifiers changed from: private */
    public static void doCallInitialize(Context context, DynamicLoader dynamicLoader, Throwable th, boolean z, MultithreadedBundleWrapper multithreadedBundleWrapper, AudienceNetworkAds.InitListener initListener) {
        if (th != null) {
            if (initListener != null) {
                new Handler(Looper.getMainLooper()).postDelayed(new b(initListener, th), 100);
            } else {
                Log.e(AudienceNetworkAds.TAG, DEX_LOADING_ERROR_MESSAGE, th);
            }
        } else if (dynamicLoader == null) {
        } else {
            if (z) {
                dynamicLoader.createAudienceNetworkAdsApi().onContentProviderCreated(context);
            } else {
                dynamicLoader.createAudienceNetworkAdsApi().initialize(context, multithreadedBundleWrapper, initListener);
            }
        }
    }

    /* access modifiers changed from: private */
    public static DynamicLoader doMakeLoader(Context context, boolean z) {
        AtomicReference<DynamicLoader> atomicReference = sDynamicLoader;
        DynamicLoader dynamicLoader = atomicReference.get();
        if (dynamicLoader == null) {
            if (!LOAD_FROM_ASSETS) {
                dynamicLoader = (DynamicLoader) Class.forName("com.facebook.ads.internal.dynamicloading.DynamicLoaderImpl").newInstance();
            } else {
                System.currentTimeMillis();
                dynamicLoader = (DynamicLoader) makeAdsSdkClassLoader(context.getApplicationContext()).loadClass("com.facebook.ads.internal.dynamicloading.DynamicLoaderImpl").newInstance();
                System.currentTimeMillis();
            }
            if (z) {
                dynamicLoader.maybeInitInternally(context);
            }
            atomicReference.set(dynamicLoader);
        }
        return dynamicLoader;
    }

    @SuppressLint({"PrivateApi", "CatchGeneralException"})
    private static Context getApplicationContextViaReflection() {
        try {
            return (Context) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, null);
        } catch (Throwable th) {
            Log.e(AudienceNetworkAds.TAG, "Failed to fetch Context from  ActivityThread. Audience Network SDK won't work unless you call AudienceNetworkAds.buildInitSettings().withListener(InitListener).initialize().", th);
            return null;
        }
    }

    private static File getCacheCodeDirLegacy(Context context, File file) {
        File file2 = new File(file, CODE_CACHE_DIR);
        try {
            mkdirChecked(file2);
            return file2;
        } catch (IOException unused) {
            File dir = context.getDir(CODE_CACHE_DIR, 0);
            mkdirChecked(dir);
            return dir;
        }
    }

    private static File getCodeCacheDir(Context context, File file) {
        if (Build.VERSION.SDK_INT >= 21) {
            return context.getCodeCacheDir();
        }
        return getCacheCodeDirLegacy(context, file);
    }

    public static DynamicLoader getDynamicLoader() {
        return sDynamicLoader.get();
    }

    private static File getSecondaryDir(File file) {
        File file2 = new File(file, AUDIENCE_NETWORK_CODE_PATH);
        mkdirChecked(file2);
        return file2;
    }

    public static void initialize(Context context, MultithreadedBundleWrapper multithreadedBundleWrapper, AudienceNetworkAds.InitListener initListener, boolean z) {
        if (z || !sInitializing.getAndSet(true)) {
            new Thread(new a(context, z, multithreadedBundleWrapper, initListener)).start();
        }
    }

    public static synchronized boolean isFallbackMode() {
        boolean z;
        synchronized (DynamicLoaderFactory.class) {
            z = sFallbackMode;
        }
        return z;
    }

    private static ClassLoader makeAdsSdkClassLoader(Context context) {
        if (Build.VERSION.SDK_INT >= 30) {
            return createInMemoryClassLoader(context);
        }
        if (sUseLegacyClassLoader) {
            return makeLegacyAdsSdkClassLoader(context);
        }
        File secondaryDir = getSecondaryDir(getCodeCacheDir(context, new File(context.getApplicationInfo().dataDir)));
        StringBuilder sb = new StringBuilder();
        sb.append(secondaryDir.getPath());
        String l = ic.l(sb, File.separator, AUDIENCE_NETWORK_DEX);
        InputStream open = context.getAssets().open(AUDIENCE_NETWORK_DEX);
        FileOutputStream fileOutputStream = new FileOutputStream(l);
        byte[] bArr = new byte[1024];
        while (true) {
            int read = open.read(bArr);
            if (read > 0) {
                fileOutputStream.write(bArr, 0, read);
            } else {
                open.close();
                fileOutputStream.flush();
                fileOutputStream.close();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(secondaryDir.getPath());
                File file = new File(ic.l(sb2, File.separator, OPTIMIZED_DEX_PATH));
                mkdirChecked(file);
                return new DexClassLoader(l, file.getPath(), null, context.getClassLoader());
            }
        }
    }

    private static DexClassLoader makeLegacyAdsSdkClassLoader(Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append(context.getFilesDir().getPath());
        String l = ic.l(sb, File.separator, AUDIENCE_NETWORK_DEX);
        InputStream open = context.getAssets().open(AUDIENCE_NETWORK_DEX);
        FileOutputStream fileOutputStream = new FileOutputStream(l);
        byte[] bArr = new byte[1024];
        while (true) {
            int read = open.read(bArr);
            if (read > 0) {
                fileOutputStream.write(bArr, 0, read);
            } else {
                open.close();
                fileOutputStream.flush();
                fileOutputStream.close();
                return new DexClassLoader(l, context.getDir(OPTIMIZED_DEX_PATH, 0).getPath(), null, DynamicLoaderFactory.class.getClassLoader());
            }
        }
    }

    public static synchronized DynamicLoader makeLoader(Context context) {
        DynamicLoader makeLoader;
        synchronized (DynamicLoaderFactory.class) {
            makeLoader = makeLoader(context, true);
        }
        return makeLoader;
    }

    @SuppressLint({"CatchGeneralException"})
    public static synchronized DynamicLoader makeLoaderUnsafe() {
        synchronized (DynamicLoaderFactory.class) {
            AtomicReference<DynamicLoader> atomicReference = sDynamicLoader;
            if (atomicReference.get() == null) {
                Context applicationContextViaReflection = getApplicationContextViaReflection();
                if (applicationContextViaReflection != null) {
                    return makeLoader(applicationContextViaReflection, true);
                }
                throw new RuntimeException("You must call AudienceNetworkAds.buildInitSettings(Context).initialize() before you can use Audience Network SDK.");
            }
            return atomicReference.get();
        }
    }

    private static void mkdirChecked(File file) {
        String str;
        file.mkdir();
        if (!file.isDirectory()) {
            File parentFile = file.getParentFile();
            if (parentFile == null) {
                StringBuilder q = ic.q("Failed to create dir ");
                q.append(file.getPath());
                q.append(". Parent file is null.");
                str = q.toString();
            } else {
                StringBuilder q2 = ic.q("Failed to create dir ");
                q2.append(file.getPath());
                q2.append(". parent file is a dir ");
                q2.append(parentFile.isDirectory());
                q2.append(", a file ");
                q2.append(parentFile.isFile());
                q2.append(", exists ");
                q2.append(parentFile.exists());
                q2.append(", readable ");
                q2.append(parentFile.canRead());
                q2.append(", writable ");
                q2.append(parentFile.canWrite());
                str = q2.toString();
            }
            Log.e(AudienceNetworkAds.TAG, str);
            StringBuilder q3 = ic.q("Failed to create directory ");
            q3.append(file.getPath());
            q3.append(", detailed message: ");
            q3.append(str);
            throw new IOException(q3.toString());
        }
    }

    public static synchronized void setFallbackMode(boolean z) {
        synchronized (DynamicLoaderFactory.class) {
            if (z) {
                sDynamicLoader.set(DynamicLoaderFallback.makeFallbackLoader());
                sFallbackMode = true;
            } else {
                sDynamicLoader.set(null);
                sFallbackMode = false;
            }
        }
    }

    public static void setUseLegacyClassLoader(boolean z) {
        sUseLegacyClassLoader = z;
    }

    private static String stackTraceToString(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    @SuppressLint({"CatchGeneralException"})
    public static synchronized DynamicLoader makeLoader(Context context, boolean z) {
        DynamicLoader doMakeLoader;
        synchronized (DynamicLoaderFactory.class) {
            Preconditions.checkNotNull(context, "Context can not be null.");
            try {
                doMakeLoader = doMakeLoader(context, z);
            } catch (Throwable th) {
                Log.e(AudienceNetworkAds.TAG, DEX_LOADING_ERROR_MESSAGE, th);
                DexLoadErrorReporter.reportDexLoadingIssue(context, createErrorMessage(th), 0.1d);
                DynamicLoader makeFallbackLoader = DynamicLoaderFallback.makeFallbackLoader();
                sDynamicLoader.set(makeFallbackLoader);
                sFallbackMode = true;
                return makeFallbackLoader;
            }
        }
        return doMakeLoader;
    }
}
