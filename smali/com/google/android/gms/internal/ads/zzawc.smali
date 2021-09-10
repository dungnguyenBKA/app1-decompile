.class public final Lcom/google/android/gms/internal/ads/zzawc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzd(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;)Lcom/google/android/gms/internal/ads/zzavm;
    .locals 4

    .line 1
    invoke-static {p0}, Law;->Q(Ljava/lang/Object;)Lzv;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.google.android.gms.ads.rewarded.ChimeraRewardedAdCreatorImpl"

    .line 2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzawf;->zzbyi:Lcom/google/android/gms/internal/ads/zzazm;

    .line 3
    invoke-static {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzazj;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzazm;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzavs;

    const v2, 0xc2be7e0

    .line 4
    invoke-interface {p0, v0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzavs;->zzd(Lzv;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;I)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string p1, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd"

    .line 5
    invoke-interface {p0, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 6
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzavm;

    if-eqz p2, :cond_1

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/zzavm;

    return-object p1

    .line 8
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavo;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzavo;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzazl; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    const-string p1, "#007 Could not call remote method."

    .line 9
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
