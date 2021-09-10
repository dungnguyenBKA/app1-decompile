.class public abstract Lcom/google/android/gms/internal/ads/zzyf;
.super Lcom/google/android/gms/internal/ads/zzgy;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzyg;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgy;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzyg;->zzrd()V

    .line 2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 3
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaao;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgx;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaao;

    .line 4
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzyg;->zza(Lcom/google/android/gms/internal/ads/zzaao;)V

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzyg;->zzrc()Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzajn;->zzaa(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzajk;

    move-result-object p1

    .line 10
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzyg;->zza(Lcom/google/android/gms/internal/ads/zzajk;)V

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 12
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzanh;->zzac(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzane;

    move-result-object p1

    .line 13
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzyg;->zza(Lcom/google/android/gms/internal/ads/zzane;)V

    .line 14
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 15
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzyg;->zzce(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 18
    :pswitch_6
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzyg;->getVersionString()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 20
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :pswitch_7
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzyg;->zzrb()Z

    move-result p1

    .line 22
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 23
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgx;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_0

    .line 24
    :pswitch_8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzyg;->zzra()F

    move-result p1

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_0

    .line 27
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lzv$a;->O(Landroid/os/IBinder;)Lzv;

    move-result-object p2

    .line 29
    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzyg;->zza(Ljava/lang/String;Lzv;)V

    .line 30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 31
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lzv$a;->O(Landroid/os/IBinder;)Lzv;

    move-result-object p1

    .line 32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 33
    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzyg;->zzb(Lzv;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 35
    :pswitch_b
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgx;->zza(Landroid/os/Parcel;)Z

    move-result p1

    .line 36
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzyg;->setAppMuted(Z)V

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 38
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzyg;->zzcd(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 41
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 42
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzyg;->setAppVolume(F)V

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 44
    :pswitch_e
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzyg;->initialize()V

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
