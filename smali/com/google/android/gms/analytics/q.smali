.class public final Lcom/google/android/gms/analytics/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation


# static fields
.field private static volatile f:Lcom/google/android/gms/analytics/q;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/analytics/r;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/analytics/n;

.field private volatile d:Lcom/google/android/gms/internal/gtm/zzav;

.field private e:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "null reference"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/analytics/q;->a:Landroid/content/Context;

    new-instance p1, Lcom/google/android/gms/analytics/n;

    .line 4
    invoke-direct {p1, p0}, Lcom/google/android/gms/analytics/n;-><init>(Lcom/google/android/gms/analytics/q;)V

    iput-object p1, p0, Lcom/google/android/gms/analytics/q;->c:Lcom/google/android/gms/analytics/n;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/q;->b:Ljava/util/List;

    .line 6
    new-instance p1, Lcom/google/android/gms/analytics/h;

    invoke-direct {p1}, Lcom/google/android/gms/analytics/h;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/google/android/gms/analytics/q;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/analytics/q;->f:Lcom/google/android/gms/analytics/q;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/analytics/q;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/analytics/q;->f:Lcom/google/android/gms/analytics/q;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/analytics/q;

    .line 2
    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/q;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/analytics/q;->f:Lcom/google/android/gms/analytics/q;

    .line 3
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/analytics/q;->f:Lcom/google/android/gms/analytics/q;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/google/android/gms/analytics/q;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/analytics/q;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/google/android/gms/analytics/q;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/analytics/q;->b:Ljava/util/List;

    return-object p0
.end method

.method public static h()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/analytics/p;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from worker thread"

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/q;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/gtm/zzav;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/analytics/q;->d:Lcom/google/android/gms/internal/gtm/zzav;

    if-nez v0, :cond_4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/q;->d:Lcom/google/android/gms/internal/gtm/zzav;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzav;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzav;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/analytics/q;->a:Landroid/content/Context;

    .line 1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/analytics/q;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/gtm/zzav;->zzi(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/gtm/zzav;->zzj(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :try_start_1
    iget-object v4, p0, Lcom/google/android/gms/analytics/q;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 6
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 9
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    :cond_0
    iget-object v3, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v1, "GAv4"

    const-string v4, "Error retrieving package info: appName set to "

    .line 11
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_0
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_2
    :goto_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/gtm/zzav;->zzk(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/gtm/zzav;->zzl(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/q;->d:Lcom/google/android/gms/internal/gtm/zzav;

    .line 14
    :cond_3
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/q;->d:Lcom/google/android/gms/internal/gtm/zzav;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/gtm/zzba;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/q;->a:Landroid/content/Context;

    .line 1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzba;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzba;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzfs;->zzd(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gtm/zzba;->zze(Ljava/lang/String;)V

    .line 3
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v1, Lcom/google/android/gms/internal/gtm/zzba;->zza:I

    .line 4
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, v1, Lcom/google/android/gms/internal/gtm/zzba;->zzb:I

    return-object v1
.end method

.method public final g(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/analytics/p;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/FutureTask;

    .line 2
    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/q;->c:Lcom/google/android/gms/analytics/n;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final i(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/analytics/q;->c:Lcom/google/android/gms/analytics/n;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final j(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/q;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method final k(Lcom/google/android/gms/analytics/i;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/i;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/i;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/analytics/i;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/analytics/i;-><init>(Lcom/google/android/gms/analytics/i;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/i;->i()V

    iget-object p1, p0, Lcom/google/android/gms/analytics/q;->c:Lcom/google/android/gms/analytics/n;

    new-instance v1, Lcom/google/android/gms/analytics/l;

    .line 5
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/analytics/l;-><init>(Lcom/google/android/gms/analytics/q;Lcom/google/android/gms/analytics/i;)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Measurement can only be submitted once"

    .line 7
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Measurement prototype can\'t be submitted"

    .line 9
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
