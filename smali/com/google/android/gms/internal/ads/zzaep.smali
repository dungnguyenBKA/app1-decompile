.class public abstract Lcom/google/android/gms/internal/ads/zzaep;
.super Lcom/google/android/gms/internal/ads/zzgy;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaem;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.formats.client.IMediaContent"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgy;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzn(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzaem;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.formats.client.IMediaContent"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzaem;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzaem;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaeo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaeo;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.formats.client.IOnMediaContentChangedListener"

    .line 2
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 3
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzagd;

    if-eqz p4, :cond_1

    .line 4
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzagd;

    goto :goto_0

    .line 5
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzagc;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzagc;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    .line 6
    :goto_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzaem;->zza(Lcom/google/android/gms/internal/ads/zzagd;)V

    .line 7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 8
    :pswitch_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaem;->hasVideoContent()Z

    move-result p1

    .line 9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 10
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgx;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_1

    .line 11
    :pswitch_2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaem;->getVideoController()Lcom/google/android/gms/internal/ads/zzzc;

    move-result-object p1

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 13
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgx;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_1

    .line 14
    :pswitch_3
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaem;->getCurrentTime()F

    move-result p1

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 16
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_1

    .line 17
    :pswitch_4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaem;->getDuration()F

    move-result p1

    .line 18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 19
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_1

    .line 20
    :pswitch_5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaem;->zztl()Lzv;

    move-result-object p1

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 22
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgx;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_1

    .line 23
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lzv$a;->O(Landroid/os/IBinder;)Lzv;

    move-result-object p1

    .line 24
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzaem;->zzo(Lzv;)V

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 26
    :pswitch_7
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaem;->getAspectRatio()F

    move-result p1

    .line 27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 28
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    :goto_1
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
