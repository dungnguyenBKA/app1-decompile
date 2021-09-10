.class public final Lcom/google/android/gms/internal/ads/zzvj;
.super Lbw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbw<",
        "Lcom/google/android/gms/internal/ads/zzxq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.AdManagerCreatorImpl"

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
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManagerCreator"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzxq;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzxq;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzxp;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzxp;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;I)Lcom/google/android/gms/internal/ads/zzxl;
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Law;->Q(Ljava/lang/Object;)Lzv;

    move-result-object v2

    .line 2
    invoke-virtual {p0, p1}, Lbw;->getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzxq;

    const v6, 0xc2be7e0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    .line 3
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzxq;->zza(Lzv;Lcom/google/android/gms/internal/ads/zzvs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;II)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.client.IAdManager"

    .line 4
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 5
    instance-of p3, p2, Lcom/google/android/gms/internal/ads/zzxl;

    if-eqz p3, :cond_1

    .line 6
    check-cast p2, Lcom/google/android/gms/internal/ads/zzxl;

    return-object p2

    .line 7
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzxn;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzxn;-><init>(Landroid/os/IBinder;)V
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
    const-string p2, "Could not create remote AdManager."

    .line 8
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
