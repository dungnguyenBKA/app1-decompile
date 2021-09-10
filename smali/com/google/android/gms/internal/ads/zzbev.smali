.class public final Lcom/google/android/gms/internal/ads/zzbev;
.super Lcom/google/android/gms/internal/ads/zzzb;
.source "SourceFile"


# instance fields
.field private final lock:Ljava/lang/Object;

.field private zzady:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzadz:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzafa:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzdnk:Lcom/google/android/gms/internal/ads/zzzd;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final zzeix:Lcom/google/android/gms/internal/ads/zzbbo;

.field private final zzety:Z

.field private final zzetz:Z

.field private zzeua:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzeub:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzeuc:F
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzeud:F
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzeue:F
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzeuf:Lcom/google/android/gms/internal/ads/zzagd;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbbo;FZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzzb;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbev;->lock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzeub:Z

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzeix:Lcom/google/android/gms/internal/ads/zzbbo;

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzeuc:F

    .line 6
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzety:Z

    .line 7
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzetz:Z

    return-void
.end method

.method private final zza(IIZZ)V
    .locals 8

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzazp;->zzeig:Lcom/google/android/gms/internal/ads/zzdzv;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbex;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzbex;-><init>(Lcom/google/android/gms/internal/ads/zzbev;IIZZ)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zze(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v0

    :goto_0
    const-string v0, "action"

    .line 2
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzazp;->zzeig:Lcom/google/android/gms/internal/ads/zzdzv;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbey;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzbey;-><init>(Lcom/google/android/gms/internal/ads/zzbev;Ljava/util/Map;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final getAspectRatio()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbev;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzeue:F

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getCurrentTime()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbev;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzeud:F

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getDuration()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbev;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzeuc:F

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getPlaybackState()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbev;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzafa:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isClickToExpandEnabled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbev;->isCustomControlsEnabled()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbev;->lock:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzadz:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzetz:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    .line 4
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isCustomControlsEnabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbev;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzety:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzady:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isMuted()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbev;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzeub:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final mute(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "mute"

    goto :goto_0

    :cond_0
    const-string p1, "unmute"

    :goto_0
    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbev;->zze(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final pause()V
    .locals 2

    const-string v0, "pause"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbev;->zze(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final play()V
    .locals 2

    const-string v0, "play"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbev;->zze(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final stop()V
    .locals 2

    const-string v0, "stop"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbev;->zze(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zza(FFIZF)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbev;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzeuc:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzeue:F

    cmpl-float v1, p5, v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 6
    :goto_1
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzeuc:F

    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzeud:F

    .line 8
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzeub:Z

    .line 9
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzeub:Z

    .line 10
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzafa:I

    .line 11
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzafa:I

    .line 12
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzeue:F

    .line 13
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzeue:F

    sub-float/2addr p5, v2

    .line 14
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p5

    const v2, 0x38d1b717    # 1.0E-4f

    cmpl-float p5, p5, v2

    if-lez p5, :cond_2

    .line 15
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzeix:Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-interface {p5}, Lcom/google/android/gms/internal/ads/zzbfo;->getView()Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->invalidate()V

    .line 16
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 17
    :try_start_1
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzeuf:Lcom/google/android/gms/internal/ads/zzagd;

    if-eqz p5, :cond_3

    .line 18
    invoke-interface {p5}, Lcom/google/android/gms/internal/ads/zzagd;->zztw()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p5

    const-string v0, "#007 Could not call remote method."

    .line 19
    invoke-static {v0, p5}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    :cond_3
    :goto_2
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/google/android/gms/internal/ads/zzbev;->zza(IIZZ)V

    return-void

    :catchall_0
    move-exception p1

    .line 21
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzagd;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbev;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 23
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzeuf:Lcom/google/android/gms/internal/ads/zzagd;

    .line 24
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzzd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbev;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzdnk:Lcom/google/android/gms/internal/ads/zzzd;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzaej()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbev;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzeub:Z

    .line 3
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzafa:I

    const/4 v3, 0x3

    .line 4
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzafa:I

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-direct {p0, v2, v3, v1, v1}, Lcom/google/android/gms/internal/ads/zzbev;->zza(IIZZ)V

    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method final synthetic zzb(IIZZ)V
    .locals 7

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbev;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzeua:Z

    if-nez v3, :cond_1

    if-ne p2, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz p1, :cond_2

    if-ne p2, v2, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-eqz p1, :cond_3

    const/4 v6, 0x2

    if-ne p2, v6, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    if-eqz p1, :cond_4

    const/4 p1, 0x3

    if-ne p2, p1, :cond_4

    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    if-eq p3, p4, :cond_5

    const/4 p2, 0x1

    goto :goto_5

    :cond_5
    const/4 p2, 0x0

    :goto_5
    if-nez v3, :cond_6

    if-eqz v4, :cond_7

    :cond_6
    const/4 v1, 0x1

    .line 15
    :cond_7
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzeua:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_8

    .line 16
    :try_start_1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzdnk:Lcom/google/android/gms/internal/ads/zzzd;

    if-eqz p3, :cond_8

    .line 17
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzzd;->onVideoStart()V

    goto :goto_6

    :catch_0
    move-exception p1

    goto :goto_7

    :cond_8
    :goto_6
    if-eqz v5, :cond_9

    .line 18
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzdnk:Lcom/google/android/gms/internal/ads/zzzd;

    if-eqz p3, :cond_9

    .line 19
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzzd;->onVideoPlay()V

    :cond_9
    if-eqz v6, :cond_a

    .line 20
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzdnk:Lcom/google/android/gms/internal/ads/zzzd;

    if-eqz p3, :cond_a

    .line 21
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzzd;->onVideoPause()V

    :cond_a
    if-eqz p1, :cond_c

    .line 22
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzdnk:Lcom/google/android/gms/internal/ads/zzzd;

    if-eqz p1, :cond_b

    .line 23
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzd;->onVideoEnd()V

    .line 24
    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzeix:Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbbo;->zzabm()V

    :cond_c
    if-eqz p2, :cond_d

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzdnk:Lcom/google/android/gms/internal/ads/zzzd;

    if-eqz p1, :cond_d

    .line 26
    invoke-interface {p1, p4}, Lcom/google/android/gms/internal/ads/zzzd;->onVideoMute(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :goto_7
    :try_start_2
    const-string p2, "#007 Could not call remote method."

    .line 27
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    :cond_d
    :goto_8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaau;)V
    .locals 8

    .line 1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzaau;->zzadx:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzaau;->zzady:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzaau;->zzadz:Z

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbev;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzady:Z

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzadz:Z

    .line 5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "initialState"

    const-string v3, "muteStart"

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v4, "customControlsRequested"

    if-eqz v1, :cond_1

    const-string v1, "1"

    goto :goto_1

    :cond_1
    const-string v1, "0"

    :goto_1
    const-string v5, "clickToExpandRequested"

    if-eqz p1, :cond_2

    const-string p1, "1"

    goto :goto_2

    :cond_2
    const-string p1, "0"

    .line 6
    :goto_2
    new-instance v6, Lx;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Lx;-><init>(I)V

    .line 7
    invoke-virtual {v6, v3, v0}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v6, v4, v1}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v6, v5, p1}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 11
    invoke-direct {p0, v2, p1}, Lcom/google/android/gms/internal/ads/zzbev;->zze(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zze(F)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbev;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzeud:F

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final synthetic zzl(Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzeix:Lcom/google/android/gms/internal/ads/zzbbo;

    const-string v1, "pubVideoCmd"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzaki;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzrg()Lcom/google/android/gms/internal/ads/zzzd;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbev;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzdnk:Lcom/google/android/gms/internal/ads/zzzd;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
