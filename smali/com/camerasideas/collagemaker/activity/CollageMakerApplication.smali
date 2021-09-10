.class public Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;
.super Landroidx/multidex/MultiDexApplication;
.source "SourceFile"


# static fields
.field private static b:Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;

.field private static c:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static b()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->c:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b:Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->c:Landroid/content/Context;

    .line 5
    :goto_0
    sget-object v0, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->c:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 6
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 7
    :cond_1
    sget-object v0, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->c:Landroid/content/Context;

    return-object v0
.end method

.method private c()V
    .locals 1

    .line 1
    invoke-static {p0}, Lmr;->c(Landroid/app/Application;)V

    .line 2
    invoke-static {}, Lcom/camerasideas/collagemaker/network/b;->a()Lcom/camerasideas/collagemaker/network/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/camerasideas/collagemaker/network/b;->b(Landroid/content/Context;)V

    .line 3
    new-instance v0, Lcom/camerasideas/collagemaker/activity/g;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/g;-><init>(Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private d()V
    .locals 3

    .line 1
    sget-object v0, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->c:Landroid/content/Context;

    const-string v1, "test"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcc0;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private e()V
    .locals 1

    .line 1
    invoke-static {p0}, Lc2;->w(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lem;->p(Z)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 15

    const/4 v0, 0x1

    .line 1
    :try_start_0
    sget-object v1, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->c:Landroid/content/Context;

    invoke-static {v1}, Lc2;->w(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v0}, Lem;->p(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    :cond_0
    :goto_0
    sget-object v1, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->c:Landroid/content/Context;

    .line 5
    invoke-static {v1}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "MaxTextureSize"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_3

    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd33

    const/4 v5, 0x0

    const/16 v6, 0x15

    if-ge v1, v6, :cond_1

    new-array v0, v0, [I

    .line 7
    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 8
    aget v3, v0, v5

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    .line 10
    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v12

    const/4 v6, 0x2

    new-array v6, v6, [I

    .line 11
    invoke-interface {v1, v12, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/4 v6, 0x7

    new-array v8, v6, [I

    .line 12
    fill-array-data v8, :array_0

    new-array v13, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v14, v0, [I

    const/4 v10, 0x1

    move-object v6, v1

    move-object v7, v12

    move-object v9, v13

    move-object v11, v14

    .line 13
    invoke-interface/range {v6 .. v11}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 14
    aget v6, v14, v5

    if-nez v6, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    aget-object v3, v13, v5

    const/4 v6, 0x5

    new-array v6, v6, [I

    .line 16
    fill-array-data v6, :array_1

    .line 17
    invoke-interface {v1, v12, v3, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [I

    .line 18
    fill-array-data v7, :array_2

    .line 19
    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v12, v3, v8, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    .line 20
    invoke-interface {v1, v12, v6, v6, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    new-array v0, v0, [I

    .line 21
    invoke-static {v4, v0, v5}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    .line 22
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v12, v4, v4, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 23
    invoke-interface {v1, v12, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 24
    invoke-interface {v1, v12, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 25
    invoke-interface {v1, v12}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 26
    aget v3, v0, v5

    :goto_1
    if-lez v3, :cond_3

    .line 27
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x303f
        0x308e
        0x3029
        0x0
        0x3033
        0x1
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3057
        0x40
        0x3056
        0x40
        0x3038
    .end array-data

    :array_2
    .array-data 4
        0x3098
        0x1
        0x3038
    .end array-data
.end method

.method private synthetic h(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/google/firebase/remoteconfig/f;->e()Lcom/google/firebase/remoteconfig/f;

    move-result-object p1

    const-string v0, "common_config"

    invoke-virtual {p1, v0}, Lcom/google/firebase/remoteconfig/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->l(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 5

    .line 1
    new-instance v0, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication$b;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication$b;-><init>(Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Void;

    .line 2
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    const/4 v2, 0x1

    :try_start_0
    new-array v3, v2, [Ljava/lang/Class;

    .line 3
    const-class v4, Ljava/util/concurrent/Executor;

    aput-object v4, v3, v1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "setDefaultExecutor"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x5

    .line 6
    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private l(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "store_base_url"

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-static {p1}, Lcom/camerasideas/collagemaker/appdata/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/camerasideas/baseutils/a;->b()Lcom/camerasideas/baseutils/a;

    move-result-object v0

    sget-object v1, Lcom/camerasideas/collagemaker/activity/d;->a:Lcom/camerasideas/collagemaker/activity/d;

    invoke-virtual {v0, v1}, Lcom/camerasideas/baseutils/a;->c(Lcom/camerasideas/baseutils/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lxq;->e(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 2
    invoke-super {p0, p1}, Landroidx/multidex/MultiDexApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {}, Ljp;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    const-string v1, "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TGFuZHJvaWQvdXRpbC9Mb2c7ABFMamF2YS9sYW5nL0NsYXNzOwAUTGphdmEvbGFuZy9DbGFzczwqPjsAEkxqYXZhL2xhbmcvT2JqZWN0OwASTGphdmEvbGFuZy9TdHJpbmc7ABJMamF2YS9sYW5nL1N5c3RlbTsAFUxqYXZhL2xhbmcvVGhyb3dhYmxlOwAaTGphdmEvbGFuZy9yZWZsZWN0L01ldGhvZDsAJkxtZS93ZWlzaHUvZnJlZXJlZmxlY3Rpb24vQnVpbGRDb25maWc7ACVMbWUvd2Vpc2h1L3JlZmxlY3Rpb24vQm9vdHN0cmFwQ2xhc3M7ACFMbWUvd2Vpc2h1L3JlZmxlY3Rpb24vUmVmbGVjdGlvbjsAClJlZmxlY3Rpb24AD1JlZmxlY3Rpb24uamF2YQAHU0RLX0lOVAADVEFHAAFWAAxWRVJTSU9OX0NPREUADFZFUlNJT05fTkFNRQACVkwAAVoAAlpMABJbTGphdmEvbGFuZy9DbGFzczsAE1tMamF2YS9sYW5nL09iamVjdDsAE1tMamF2YS9sYW5nL1N0cmluZzsAB2NvbnRleHQAF2RhbHZpay5zeXN0ZW0uVk1SdW50aW1lAAFlAAZleGVtcHQACWV4ZW1wdEFsbAAHZm9yTmFtZQAPZnJlZS1yZWZsZWN0aW9uABJnZXRBcHBsaWNhdGlvbkluZm8AEWdldERlY2xhcmVkTWV0aG9kAApnZXRSdW50aW1lAAZpbnZva2UAC2xvYWRMaWJyYXJ5ABhtZS53ZWlzaHUuZnJlZXJlZmxlY3Rpb24ABm1ldGhvZAAHbWV0aG9kcwAZcmVmbGVjdCBib290c3RyYXAgZmFpbGVkOgAHcmVsZWFzZQAKc1ZtUnVudGltZQAWc2V0SGlkZGVuQXBpRXhlbXB0aW9ucwAQdGFyZ2V0U2RrVmVyc2lvbgAEdGhpcwAGdW5zZWFsAAx1bnNlYWxOYXRpdmUADnZtUnVudGltZUNsYXNzAAYABw4AFgAHDmr/AwEyCwEVEAMCNQvwBAREBhcBEg8DAzYLARsPqQUCBQMFBBkeAwAvCgAOAAcOACwBOgcOADYBOwcsnRriAQEDAC8KHgBIAAcOAA0ABw4AEwEtBx1yGWtaAAYXOBc8HxcABAEXAQEXBgEXHwYAAQACGQEZARkBGQEZARkGgYAEiAcDAAUACBoBCgEKB4iABKAHAYGABLQJAQnMCQGJAfQJAQnMCgEAAwALGgyBgAT4CgEJkAsBigIAAAAADgAAAAAAAAABAAAAAAAAAAEAAABEAAAAcAAAAAIAAAATAAAAgAEAAAMAAAALAAAAzAEAAAQAAAAMAAAAUAIAAAUAAAAPAAAAsAIAAAYAAAADAAAAKAMAAAEgAAAIAAAAiAMAAAEQAAAHAAAA3AUAAAIgAABEAAAAFgYAAAMgAAAIAAAAAwoAAAUgAAADAAAAZgoAAAAgAAADAAAAeAoAAAAQAAABAAAAyAoAAA=="

    .line 5
    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object p1

    .line 7
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".dex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 11
    new-instance p1, Ldalvik/system/DexFile;

    invoke-direct {p1, v2}, Ldalvik/system/DexFile;-><init>(Ljava/io/File;)V

    .line 12
    const-class v0, Ljp;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "exemptAll"

    new-array v3, v1, [Ljava/lang/Class;

    .line 13
    invoke-virtual {p1, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    .line 14
    invoke-virtual {p1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 15
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public synthetic g()V
    .locals 0

    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->f()V

    return-void
.end method

.method public synthetic i(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->h(Z)V

    return-void
.end method

.method public synthetic j()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->d()V

    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    sput-object p0, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b:Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;

    .line 3
    invoke-static {p0}, Ldq;->e(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->d(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 7
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "OpenTime"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "PlayLottieAnimation"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 9
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->k()V

    .line 10
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->e()V

    .line 11
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->c:Landroid/content/Context;

    .line 12
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 14
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->c()V

    .line 15
    invoke-static {p0}, Lrq;->e(Landroid/content/Context;)V

    .line 16
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->m()V

    .line 17
    sput-boolean v2, Lcom/zjsoft/baseadlib/b;->a:Z

    .line 18
    new-instance v1, Lcom/camerasideas/collagemaker/activity/e;

    invoke-direct {v1, p0}, Lcom/camerasideas/collagemaker/activity/e;-><init>(Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;)V

    invoke-static {v1}, Lcom/zjsoft/baseadlib/b;->c(Lbc0$a;)V

    .line 19
    new-instance v1, Lcom/camerasideas/collagemaker/activity/f;

    invoke-direct {v1, p0}, Lcom/camerasideas/collagemaker/activity/f;-><init>(Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 20
    sget-object v1, Lfd0;->i:Lfd0;

    new-instance v2, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication$a;

    invoke-direct {v2, p0, v0}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication$a;-><init>(Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;I)V

    sget-boolean v0, Lcom/camerasideas/collagemaker/appdata/e;->f:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v1, v2, v0}, Linshot/collage/adconfig/a;->e(Landroid/content/Context;Lfd0;Linshot/collage/adconfig/b;Z)V

    return-void
.end method
