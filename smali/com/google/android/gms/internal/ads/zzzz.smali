.class public final Lcom/google/android/gms/internal/ads/zzzz;
.super Lbw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbw<",
        "Lcom/google/android/gms/internal/ads/zzyh;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.MobileAdsSettingManagerCreatorImpl"

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
    const-string v0, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzyh;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzyh;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzyk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzyk;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final zzh(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzyg;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Law;->Q(Ljava/lang/Object;)Lzv;

    move-result-object v1

    .line 2
    invoke-virtual {p0, p1}, Lbw;->getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzyh;

    const v2, 0xc2be7e0

    .line 3
    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzyh;->zzb(Lzv;I)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager"

    .line 4
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 5
    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzyg;

    if-eqz v2, :cond_1

    .line 6
    check-cast v1, Lcom/google/android/gms/internal/ads/zzyg;

    return-object v1

    .line 7
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzyi;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzyi;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lbw$a; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string v1, "Could not get remote MobileAdsSettingManager."

    .line 8
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
