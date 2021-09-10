.class public final Lcom/google/android/gms/internal/ads/zzauv;
.super Lcom/google/android/gms/internal/ads/zzgw;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaus;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdCreator"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgw;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zzd(Lzv;Lcom/google/android/gms/internal/ads/zzane;I)Landroid/os/IBinder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgw;->zzdo()Landroid/os/Parcel;

    move-result-object p3

    .line 2
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgx;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/zzgx;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const p1, 0xc2be7e0

    .line 4
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzgw;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method
