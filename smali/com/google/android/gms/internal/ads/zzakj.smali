.class public final Lcom/google/android/gms/internal/ads/zzakj;
.super Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzact:Lcom/google/android/gms/internal/ads/zzvq;

.field private zzbsf:Lcom/google/android/gms/ads/admanager/AppEventListener;

.field private final zzbut:Ljava/lang/String;

.field private zzbuw:Lcom/google/android/gms/ads/FullScreenContentCallback;

.field private final zzbuz:Lcom/google/android/gms/internal/ads/zzxl;

.field private zzckr:Lcom/google/android/gms/ads/OnPaidEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakj;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzakj;->zzbut:Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzvq;->zzcif:Lcom/google/android/gms/internal/ads/zzvq;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzakj;->zzact:Lcom/google/android/gms/internal/ads/zzvq;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqo()Lcom/google/android/gms/internal/ads/zzwc;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzvs;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzvs;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzanf;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzanf;-><init>()V

    .line 7
    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/google/android/gms/internal/ads/zzwc;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;)Lcom/google/android/gms/internal/ads/zzxl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakj;->zzbuz:Lcom/google/android/gms/internal/ads/zzxl;

    return-void
.end method


# virtual methods
.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakj;->zzbut:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppEventListener()Lcom/google/android/gms/ads/admanager/AppEventListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakj;->zzbsf:Lcom/google/android/gms/ads/admanager/AppEventListener;

    return-object v0
.end method

.method public final getFullScreenContentCallback()Lcom/google/android/gms/ads/FullScreenContentCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakj;->zzbuw:Lcom/google/android/gms/ads/FullScreenContentCallback;

    return-object v0
.end method

.method public final getOnPaidEventListener()Lcom/google/android/gms/ads/OnPaidEventListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakj;->zzckr:Lcom/google/android/gms/ads/OnPaidEventListener;

    return-object v0
.end method

.method public final getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakj;->zzbuz:Lcom/google/android/gms/internal/ads/zzxl;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzxl;->zzki()Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    .line 3
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/ResponseInfo;->zza(Lcom/google/android/gms/internal/ads/zzyx;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public final setAppEventListener(Lcom/google/android/gms/ads/admanager/AppEventListener;)V
    .locals 2

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakj;->zzbsf:Lcom/google/android/gms/ads/admanager/AppEventListener;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakj;->zzbuz:Lcom/google/android/gms/internal/ads/zzxl;

    if-eqz p1, :cond_0

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzrg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzrg;-><init>(Lcom/google/android/gms/ads/admanager/AppEventListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxl;->zza(Lcom/google/android/gms/internal/ads/zzxt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V
    .locals 2

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakj;->zzbuw:Lcom/google/android/gms/ads/FullScreenContentCallback;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakj;->zzbuz:Lcom/google/android/gms/internal/ads/zzxl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzwt;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzwt;-><init>(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxl;->zza(Lcom/google/android/gms/internal/ads/zzyb;)V
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

.method public final setImmersiveMode(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakj;->zzbuz:Lcom/google/android/gms/internal/ads/zzxl;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzxl;->setImmersiveMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .locals 2

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakj;->zzckr:Lcom/google/android/gms/ads/OnPaidEventListener;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakj;->zzbuz:Lcom/google/android/gms/internal/ads/zzxl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaap;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaap;-><init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxl;->zza(Lcom/google/android/gms/internal/ads/zzyw;)V
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

.method public final show(Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "The activity for show is null, will proceed with show using the context provided when loading the ad."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakj;->zzbuz:Lcom/google/android/gms/internal/ads/zzxl;

    invoke-static {p1}, Law;->Q(Ljava/lang/Object;)Lzv;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzxl;->zze(Lzv;)V
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

.method public final zza(Lcom/google/android/gms/internal/ads/zzzk;Lcom/google/android/gms/ads/AdLoadCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzzk;",
            "Lcom/google/android/gms/ads/AdLoadCallback<",
            "TAdT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakj;->zzbuz:Lcom/google/android/gms/internal/ads/zzxl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakj;->context:Landroid/content/Context;

    .line 2
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzvq;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzzk;)Lcom/google/android/gms/internal/ads/zzvl;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzvh;

    invoke-direct {v1, p2, p0}, Lcom/google/android/gms/internal/ads/zzvh;-><init>(Lcom/google/android/gms/ads/AdLoadCallback;Ljava/lang/Object;)V

    .line 3
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzxl;->zza(Lcom/google/android/gms/internal/ads/zzvl;Lcom/google/android/gms/internal/ads/zzxc;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    new-instance p1, Lcom/google/android/gms/ads/LoadAdError;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "Internal Error."

    const-string v4, "com.google.android.gms.ads"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/LoadAdError;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/AdError;Lcom/google/android/gms/ads/ResponseInfo;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    return-void
.end method
