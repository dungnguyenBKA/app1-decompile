.class public final Lcom/google/android/gms/tagmanager/zzd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static zzb:Lcom/google/android/gms/tagmanager/zzd;


# instance fields
.field private volatile zze:Z

.field private final zzi:Landroid/content/Context;

.field private final zzj:Lcom/google/android/gms/common/util/d;

.field private final zzk:Ljava/lang/Thread;

.field private final zzl:Ljava/lang/Object;

.field private final zzm:Lcom/google/android/gms/tagmanager/zzc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzd;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzc;Lcom/google/android/gms/common/util/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/zzd;->zze:Z

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzd;->zzl:Ljava/lang/Object;

    new-instance p2, Lcom/google/android/gms/tagmanager/zza;

    .line 1
    invoke-direct {p2, p0}, Lcom/google/android/gms/tagmanager/zza;-><init>(Lcom/google/android/gms/tagmanager/zzd;)V

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzd;->zzm:Lcom/google/android/gms/tagmanager/zzc;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzd;->zzj:Lcom/google/android/gms/common/util/d;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzd;->zzi:Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzd;->zzi:Landroid/content/Context;

    .line 4
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/google/android/gms/tagmanager/zzb;

    .line 6
    invoke-direct {p2, p0}, Lcom/google/android/gms/tagmanager/zzb;-><init>(Lcom/google/android/gms/tagmanager/zzd;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzd;->zzk:Ljava/lang/Thread;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/tagmanager/zzd;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzd;->zzi:Landroid/content/Context;

    return-object p0
.end method

.method public static zzb(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzd;
    .locals 4

    sget-object v0, Lcom/google/android/gms/tagmanager/zzd;->zzb:Lcom/google/android/gms/tagmanager/zzd;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzd;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/tagmanager/zzd;->zzb:Lcom/google/android/gms/tagmanager/zzd;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/tagmanager/zzd;

    const/4 v2, 0x0

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/f;->d()Lcom/google/android/gms/common/util/d;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/gms/tagmanager/zzd;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzc;Lcom/google/android/gms/common/util/d;)V

    sput-object v1, Lcom/google/android/gms/tagmanager/zzd;->zzb:Lcom/google/android/gms/tagmanager/zzd;

    iget-object p0, v1, Lcom/google/android/gms/tagmanager/zzd;->zzk:Ljava/lang/Thread;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

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
    sget-object p0, Lcom/google/android/gms/tagmanager/zzd;->zzb:Lcom/google/android/gms/tagmanager/zzd;

    return-object p0
.end method

.method static zzd(Lcom/google/android/gms/tagmanager/zzd;)V
    .locals 4

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzd;->zze:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzd;->zzm:Lcom/google/android/gms/tagmanager/zzc;

    .line 2
    check-cast v0, Lcom/google/android/gms/tagmanager/zza;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GoogleTagManager"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, v0, Lcom/google/android/gms/tagmanager/zza;->zza:Lcom/google/android/gms/tagmanager/zzd;

    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzd;->zza(Lcom/google/android/gms/tagmanager/zzd;)Landroid/content/Context;

    move-result-object v3

    .line 4
    invoke-static {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/gms/common/f; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "Unknown exception. Could not get the Advertising Id Info."

    .line 5
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v3

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/tagmanager/zza;->zza:Lcom/google/android/gms/tagmanager/zzd;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzd;->zze()V

    const-string v0, "GooglePlayServicesNotAvailableException getting Advertising Id Info"

    .line 8
    invoke-static {v1, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v3, "IOException getting Ad Id Info"

    .line 9
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_3
    move-exception v0

    const-string v3, "GooglePlayServicesRepairableException getting Advertising Id Info"

    .line 10
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_4
    move-exception v0

    const-string v3, "IllegalStateException getting Advertising Id Info"

    .line 11
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz v2, :cond_0

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzd;->zzj:Lcom/google/android/gms/common/util/d;

    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    .line 14
    :cond_0
    monitor-enter p0

    .line 15
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 16
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzd;->zzl:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzd;->zzl:Ljava/lang/Object;

    const-wide/32 v2, 0xdbba0

    .line 17
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 18
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_5

    :catch_5
    nop

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 19
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public final zze()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzd;->zze:Z

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzd;->zzk:Ljava/lang/Thread;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
