.class public final Lcom/google/android/gms/internal/ads/zzauy;
.super Lbw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbw<",
        "Lcom/google/android/gms/internal/ads/zzaus;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.reward.RewardedVideoAdCreatorImpl"

    .line 1
    invoke-direct {p0, v0}, Lbw;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final synthetic getRemoteCreator(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdCreator"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzaus;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzaus;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzauv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzauv;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzane;)Lcom/google/android/gms/internal/ads/zzaur;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Law;->Q(Ljava/lang/Object;)Lzv;

    move-result-object v1

    .line 2
    invoke-virtual {p0, p1}, Lbw;->getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaus;

    const v2, 0xc2be7e0

    .line 3
    invoke-interface {p1, v1, p2, v2}, Lcom/google/android/gms/internal/ads/zzaus;->zzd(Lzv;Lcom/google/android/gms/internal/ads/zzane;I)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd"

    .line 4
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 5
    instance-of v1, p2, Lcom/google/android/gms/internal/ads/zzaur;

    if-eqz v1, :cond_1

    .line 6
    check-cast p2, Lcom/google/android/gms/internal/ads/zzaur;

    return-object p2

    .line 7
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzaut;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzaut;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lbw$a; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string p2, "Could not get remote RewardedVideoAd."

    .line 8
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
