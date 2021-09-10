.class public final Linshot/collage/adconfig/h$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linshot/collage/adconfig/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const-string v0, "msg"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {}, Linshot/collage/adconfig/a;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_1
    sget-object v1, Linshot/collage/adconfig/a;->a:Landroid/content/Context;

    if-eqz v1, :cond_2

    const-string v2, "AD_AvailableSpace"

    const/16 v3, 0x32

    .line 3
    invoke-static {v1, v2, v3}, Lcc0;->h(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 4
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "Environment.getExternalStorageDirectory()"

    invoke-static {v3, v4}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v5

    mul-long v3, v3, v5

    mul-int/lit16 v1, v1, 0x400

    mul-int/lit16 v1, v1, 0x400

    int-to-long v1, v1

    cmp-long v5, v3, v1

    if-ltz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "context"

    .line 6
    invoke-static {v1}, Lgg0;->j(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v1

    .line 7
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-nez v0, :cond_3

    return-void

    .line 8
    :cond_3
    invoke-static {}, Linshot/collage/adconfig/i;->values()[Linshot/collage/adconfig/i;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    aget-object p1, v0, p1

    .line 9
    sget-object v0, Linshot/collage/adconfig/h;->g:Linshot/collage/adconfig/h;

    invoke-static {v0}, Linshot/collage/adconfig/h;->e(Linshot/collage/adconfig/h;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "CardAd"

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage hasPaused type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_4
    invoke-static {v0}, Linshot/collage/adconfig/h;->b(Linshot/collage/adconfig/h;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linshot/collage/adconfig/h$b;

    if-eqz v1, :cond_5

    .line 12
    invoke-virtual {v1}, Linshot/collage/adconfig/h$b;->a()Lpb0;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {}, Linshot/collage/adconfig/a;->d()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpb0;->g(Landroid/app/Activity;)V

    .line 13
    :cond_5
    new-instance v1, Linshot/collage/adconfig/h$b;

    invoke-direct {v1, p1}, Linshot/collage/adconfig/h$b;-><init>(Linshot/collage/adconfig/i;)V

    .line 14
    invoke-static {v0}, Linshot/collage/adconfig/h;->b(Linshot/collage/adconfig/h;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {}, Linshot/collage/adconfig/a;->d()Landroid/app/Activity;

    move-result-object p1

    invoke-static {v0, p1, v1}, Linshot/collage/adconfig/h;->f(Linshot/collage/adconfig/h;Landroid/app/Activity;Linshot/collage/adconfig/h$b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
