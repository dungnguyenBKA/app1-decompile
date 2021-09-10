package com.camerasideas.collagemaker.activity;

import android.content.Context;
import android.opengl.GLES10;
import android.opengl.GLES20;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.text.TextUtils;
import android.util.Base64;
import androidx.multidex.MultiDexApplication;
import com.camerasideas.collagemaker.appdata.e;
import com.camerasideas.collagemaker.appdata.f;
import dalvik.system.DexFile;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import org.json.JSONObject;

public class CollageMakerApplication extends MultiDexApplication {
    private static CollageMakerApplication b;
    private static Context c;

    class a implements inshot.collage.adconfig.b {
        final /* synthetic */ int a;

        a(CollageMakerApplication collageMakerApplication, int i) {
            this.a = i;
        }

        @Override // inshot.collage.adconfig.b
        public boolean a() {
            boolean z;
            try {
                int f = f.f(CollageMakerApplication.c) + 1;
                String j = cc0.j(CollageMakerApplication.c, "showWelcomeSubCount", "");
                if (TextUtils.isEmpty(j) || !j.contains(",")) {
                    if (f != 2) {
                        if (f == 4) {
                        }
                    }
                    z = true;
                    if (f.g(CollageMakerApplication.c).getBoolean("EnableShowWelcomeSub", true) || !z || androidx.core.app.b.d0(CollageMakerApplication.c)) {
                        return uq.b(CollageMakerApplication.c, true);
                    }
                    return true;
                }
                for (String str : j.split(",")) {
                    if (f == Integer.parseInt(str.trim())) {
                        z = true;
                        break;
                    }
                }
                z = false;
                if (f.g(CollageMakerApplication.c).getBoolean("EnableShowWelcomeSub", true)) {
                }
                return uq.b(CollageMakerApplication.c, true);
            } catch (Throwable th) {
                th.printStackTrace();
                return false;
            }
        }

        @Override // inshot.collage.adconfig.b
        public boolean b() {
            return this.a == 1;
        }

        @Override // inshot.collage.adconfig.b
        public boolean c() {
            return androidx.core.app.b.g(CollageMakerApplication.c);
        }
    }

    /* access modifiers changed from: package-private */
    public class b extends AsyncTask<Void, Void, Void> {
        b(CollageMakerApplication collageMakerApplication) {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object[]] */
        /* access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public /* bridge */ /* synthetic */ Void doInBackground(Void[] voidArr) {
            return null;
        }
    }

    public static Context b() {
        if (c == null) {
            CollageMakerApplication collageMakerApplication = b;
            if (collageMakerApplication == null) {
                Process.killProcess(Process.myPid());
            } else {
                c = collageMakerApplication.getApplicationContext();
            }
            if (c == null) {
                Process.killProcess(Process.myPid());
            }
        }
        return c;
    }

    private void c() {
        mr.c(this);
        com.camerasideas.collagemaker.network.b.a().b(this);
        AsyncTask.execute(new g(this));
    }

    /* access modifiers changed from: private */
    /* renamed from: d */
    public void j() {
        cc0.j(c, "test", "");
    }

    private void e() {
        if (c2.w(this)) {
            em.p(true);
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: f */
    public void g() {
        try {
            if (c2.w(c)) {
                em.p(true);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        int i = -1;
        if (f.g(c).getInt("MaxTextureSize", -1) < 0) {
            if (Build.VERSION.SDK_INT < 21) {
                int[] iArr = new int[1];
                GLES20.glGetIntegerv(3379, iArr, 0);
                i = iArr[0];
            } else {
                EGL10 egl10 = (EGL10) EGLContext.getEGL();
                EGLDisplay eglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
                egl10.eglInitialize(eglGetDisplay, new int[2]);
                EGLConfig[] eGLConfigArr = new EGLConfig[1];
                int[] iArr2 = new int[1];
                egl10.eglChooseConfig(eglGetDisplay, new int[]{12351, 12430, 12329, 0, 12339, 1, 12344}, eGLConfigArr, 1, iArr2);
                if (iArr2[0] != 0) {
                    EGLConfig eGLConfig = eGLConfigArr[0];
                    EGLSurface eglCreatePbufferSurface = egl10.eglCreatePbufferSurface(eglGetDisplay, eGLConfig, new int[]{12375, 64, 12374, 64, 12344});
                    EGLContext eglCreateContext = egl10.eglCreateContext(eglGetDisplay, eGLConfig, EGL10.EGL_NO_CONTEXT, new int[]{12440, 1, 12344});
                    egl10.eglMakeCurrent(eglGetDisplay, eglCreatePbufferSurface, eglCreatePbufferSurface, eglCreateContext);
                    int[] iArr3 = new int[1];
                    GLES10.glGetIntegerv(3379, iArr3, 0);
                    EGLSurface eGLSurface = EGL10.EGL_NO_SURFACE;
                    egl10.eglMakeCurrent(eglGetDisplay, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT);
                    egl10.eglDestroySurface(eglGetDisplay, eglCreatePbufferSurface);
                    egl10.eglDestroyContext(eglGetDisplay, eglCreateContext);
                    egl10.eglTerminate(eglGetDisplay);
                    i = iArr3[0];
                }
            }
            if (i > 0) {
                f.g(this).edit().putInt("MaxTextureSize", i).apply();
            }
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ void i(boolean z) {
        if (z) {
            l(com.google.firebase.remoteconfig.f.e().f("common_config"));
        }
    }

    private void k() {
        try {
            Method method = new b(this).execute(new Void[0]).getClass().getMethod("setDefaultExecutor", Executor.class);
            method.setAccessible(true);
            method.invoke(null, Executors.newFixedThreadPool(5));
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        } catch (IllegalArgumentException e3) {
            e3.printStackTrace();
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
        }
    }

    private void l(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("store_base_url")) {
                    String optString = jSONObject.optString("store_base_url", null);
                    if (!TextUtils.isEmpty(optString)) {
                        com.camerasideas.collagemaker.appdata.b.a(optString);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private void m() {
        try {
            com.camerasideas.baseutils.a.b().c(d.a);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.multidex.MultiDexApplication
    public void attachBaseContext(Context context) {
        Context e = xq.e(context);
        super.attachBaseContext(e);
        if (Build.VERSION.SDK_INT >= 28 && !jp.a()) {
            byte[] decode = Base64.decode("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TGFuZHJvaWQvdXRpbC9Mb2c7ABFMamF2YS9sYW5nL0NsYXNzOwAUTGphdmEvbGFuZy9DbGFzczwqPjsAEkxqYXZhL2xhbmcvT2JqZWN0OwASTGphdmEvbGFuZy9TdHJpbmc7ABJMamF2YS9sYW5nL1N5c3RlbTsAFUxqYXZhL2xhbmcvVGhyb3dhYmxlOwAaTGphdmEvbGFuZy9yZWZsZWN0L01ldGhvZDsAJkxtZS93ZWlzaHUvZnJlZXJlZmxlY3Rpb24vQnVpbGRDb25maWc7ACVMbWUvd2Vpc2h1L3JlZmxlY3Rpb24vQm9vdHN0cmFwQ2xhc3M7ACFMbWUvd2Vpc2h1L3JlZmxlY3Rpb24vUmVmbGVjdGlvbjsAClJlZmxlY3Rpb24AD1JlZmxlY3Rpb24uamF2YQAHU0RLX0lOVAADVEFHAAFWAAxWRVJTSU9OX0NPREUADFZFUlNJT05fTkFNRQACVkwAAVoAAlpMABJbTGphdmEvbGFuZy9DbGFzczsAE1tMamF2YS9sYW5nL09iamVjdDsAE1tMamF2YS9sYW5nL1N0cmluZzsAB2NvbnRleHQAF2RhbHZpay5zeXN0ZW0uVk1SdW50aW1lAAFlAAZleGVtcHQACWV4ZW1wdEFsbAAHZm9yTmFtZQAPZnJlZS1yZWZsZWN0aW9uABJnZXRBcHBsaWNhdGlvbkluZm8AEWdldERlY2xhcmVkTWV0aG9kAApnZXRSdW50aW1lAAZpbnZva2UAC2xvYWRMaWJyYXJ5ABhtZS53ZWlzaHUuZnJlZXJlZmxlY3Rpb24ABm1ldGhvZAAHbWV0aG9kcwAZcmVmbGVjdCBib290c3RyYXAgZmFpbGVkOgAHcmVsZWFzZQAKc1ZtUnVudGltZQAWc2V0SGlkZGVuQXBpRXhlbXB0aW9ucwAQdGFyZ2V0U2RrVmVyc2lvbgAEdGhpcwAGdW5zZWFsAAx1bnNlYWxOYXRpdmUADnZtUnVudGltZUNsYXNzAAYABw4AFgAHDmr/AwEyCwEVEAMCNQvwBAREBhcBEg8DAzYLARsPqQUCBQMFBBkeAwAvCgAOAAcOACwBOgcOADYBOwcsnRriAQEDAC8KHgBIAAcOAA0ABw4AEwEtBx1yGWtaAAYXOBc8HxcABAEXAQEXBgEXHwYAAQACGQEZARkBGQEZARkGgYAEiAcDAAUACBoBCgEKB4iABKAHAYGABLQJAQnMCQGJAfQJAQnMCgEAAwALGgyBgAT4CgEJkAsBigIAAAAADgAAAAAAAAABAAAAAAAAAAEAAABEAAAAcAAAAAIAAAATAAAAgAEAAAMAAAALAAAAzAEAAAQAAAAMAAAAUAIAAAUAAAAPAAAAsAIAAAYAAAADAAAAKAMAAAEgAAAIAAAAiAMAAAEQAAAHAAAA3AUAAAIgAABEAAAAFgYAAAMgAAAIAAAAAwoAAAUgAAADAAAAZgoAAAAgAAADAAAAeAoAAAAQAAABAAAAyAoAAA==", 2);
            try {
                File codeCacheDir = e.getCodeCacheDir();
                File file = new File(codeCacheDir, System.currentTimeMillis() + ".dex");
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    fileOutputStream.write(decode);
                    fileOutputStream.close();
                    ((Boolean) new DexFile(file).loadClass(jp.class.getCanonicalName(), null).getDeclaredMethod("exemptAll", new Class[0]).invoke(null, new Object[0])).booleanValue();
                    return;
                } catch (Throwable th) {
                    th.addSuppressed(th);
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
                return;
            }
        } else {
            return;
        }
        throw th;
    }

    public void onCreate() {
        super.onCreate();
        b = this;
        dq.e(this);
        if (getResources() == null) {
            Process.killProcess(Process.myPid());
        }
        int d = f.d(this) + 1;
        f.g(this).edit().putInt("OpenTime", d).apply();
        f.g(this).edit().putBoolean("PlayLottieAnimation", false).apply();
        k();
        e();
        c = getApplicationContext();
        new Handler(Looper.getMainLooper());
        Process.myTid();
        c();
        rq.e(this);
        m();
        com.zjsoft.baseadlib.b.a = false;
        com.zjsoft.baseadlib.b.c(new e(this));
        AsyncTask.execute(new f(this));
        inshot.collage.adconfig.a.e(this, fd0.BackgroundEraser, new a(this, d), !e.f);
    }
}
