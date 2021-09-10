.class public final Lcom/google/android/gms/ads/internal/overlay/zzu;
.super Lcom/google/android/gms/ads/internal/overlay/zzc;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    const-string p1, "AdOverlayParcel is null or does not contain valid overlay type."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/google/android/gms/ads/internal/overlay/zzn;->zzdsr:Lcom/google/android/gms/ads/internal/overlay/zzn;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->n:Lcom/google/android/gms/ads/internal/overlay/zzn;

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
