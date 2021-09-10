.class public final Lcom/google/android/gms/internal/ads/zzakc;
.super Lcom/google/android/gms/ads/instream/InstreamAd;
.source "SourceFile"


# instance fields
.field private zzbnl:Lcom/google/android/gms/ads/MediaContent;

.field private zzckl:Lcom/google/android/gms/ads/VideoController;

.field private final zzdjb:Lcom/google/android/gms/internal/ads/zzajv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzajv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/instream/InstreamAd;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakc;->zzdjb:Lcom/google/android/gms/internal/ads/zzajv;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzakc;->zzuf()Lcom/google/android/gms/ads/VideoController;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakc;->zzckl:Lcom/google/android/gms/ads/VideoController;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzakc;->zzug()Lcom/google/android/gms/ads/MediaContent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakc;->zzbnl:Lcom/google/android/gms/ads/MediaContent;

    return-void
.end method

.method private final zzuf()Lcom/google/android/gms/ads/VideoController;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {v0}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakc;->zzdjb:Lcom/google/android/gms/internal/ads/zzajv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzajv;->getVideoController()Lcom/google/android/gms/internal/ads/zzzc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/ads/zzzc;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    .line 3
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private final zzug()Lcom/google/android/gms/ads/MediaContent;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakc;->zzdjb:Lcom/google/android/gms/internal/ads/zzajv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzajv;->zzty()Lcom/google/android/gms/internal/ads/zzaem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzzw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakc;->zzdjb:Lcom/google/android/gms/internal/ads/zzajv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzajv;->zzty()Lcom/google/android/gms/internal/ads/zzaem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzzw;-><init>(Lcom/google/android/gms/internal/ads/zzaem;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakc;->zzdjb:Lcom/google/android/gms/internal/ads/zzajv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzajv;->destroy()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzakc;->zzckl:Lcom/google/android/gms/ads/VideoController;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzakc;->zzbnl:Lcom/google/android/gms/ads/MediaContent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getAspectRatio()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakc;->zzckl:Lcom/google/android/gms/ads/VideoController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/VideoController;->getAspectRatio()F

    move-result v0

    return v0
.end method

.method public final getMediaContent()Lcom/google/android/gms/ads/MediaContent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakc;->zzbnl:Lcom/google/android/gms/ads/MediaContent;

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/ads/VideoController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakc;->zzckl:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method public final getVideoCurrentTime()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakc;->zzckl:Lcom/google/android/gms/ads/VideoController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/VideoController;->getVideoCurrentTime()F

    move-result v0

    return v0
.end method

.method public final getVideoDuration()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakc;->zzckl:Lcom/google/android/gms/ads/VideoController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/VideoController;->getVideoDuration()F

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/ads/instream/InstreamAdView;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "showInView: parameter view must not be null."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzev(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakc;->zzdjb:Lcom/google/android/gms/internal/ads/zzajv;

    invoke-static {p1}, Law;->Q(Ljava/lang/Object;)Lzv;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzajv;->zzr(Lzv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
