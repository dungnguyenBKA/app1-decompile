.class public abstract Lcom/google/android/gms/internal/ads/zzsn;
.super Lcom/google/android/gms/internal/ads/zzgy;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzsk;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgy;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    const/4 p4, 0x2

    if-eq p1, p4, :cond_8

    const/4 p4, 0x3

    const/4 v0, 0x0

    if-eq p1, p4, :cond_5

    const/4 p4, 0x4

    if-eq p1, p4, :cond_2

    const/4 p4, 0x5

    if-eq p1, p4, :cond_1

    const/4 p4, 0x6

    if-eq p1, p4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgx;->zza(Landroid/os/Parcel;)Z

    move-result p1

    .line 2
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzsk;->setImmersiveMode(Z)V

    .line 3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 4
    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzsk;->zzki()Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object p1

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgx;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lzv$a;->O(Landroid/os/IBinder;)Lzv;

    move-result-object p1

    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const-string p4, "com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback"

    .line 9
    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 10
    instance-of v0, p4, Lcom/google/android/gms/internal/ads/zzsv;

    if-eqz v0, :cond_4

    .line 11
    move-object v0, p4

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsv;

    goto :goto_0

    .line 12
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzsx;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzsx;-><init>(Landroid/os/IBinder;)V

    .line 13
    :goto_0
    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzsk;->zza(Lzv;Lcom/google/android/gms/internal/ads/zzsv;)V

    .line 14
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 15
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    const-string p2, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback"

    .line 16
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 17
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzsq;

    if-eqz p4, :cond_7

    .line 18
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsq;

    goto :goto_1

    .line 19
    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzss;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzss;-><init>(Landroid/os/IBinder;)V

    .line 20
    :goto_1
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzsk;->zza(Lcom/google/android/gms/internal/ads/zzsq;)V

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 22
    :cond_8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzsk;->zzdx()Lcom/google/android/gms/internal/ads/zzxl;

    move-result-object p1

    .line 23
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 24
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgx;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_2
    const/4 p1, 0x1

    return p1
.end method
