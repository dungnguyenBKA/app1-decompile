.class final Lcom/google/android/gms/ads/internal/overlay/g;
.super Lcom/google/android/gms/ads/internal/util/zza;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/overlay/zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/ads/internal/overlay/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/g;->a:Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzwe()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lcom/google/android/gms/ads/internal/util/zzbo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/g;->a:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->c:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdtc:Lcom/google/android/gms/ads/internal/zzk;

    iget v1, v1, Lcom/google/android/gms/ads/internal/zzk;->zzbpj:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/util/zzbo;->zza(Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkt()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/g;->a:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/overlay/zzc;->b:Landroid/app/Activity;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/zzc;->c:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdtc:Lcom/google/android/gms/ads/internal/zzk;

    iget-boolean v4, v2, Lcom/google/android/gms/ads/internal/zzk;->zzbph:Z

    iget v2, v2, Lcom/google/android/gms/ads/internal/zzk;->zzbpi:F

    .line 3
    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/google/android/gms/ads/internal/util/zzr;->zza(Landroid/content/Context;Landroid/graphics/Bitmap;ZF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzj;->zzeen:Lcom/google/android/gms/internal/ads/zzdvl;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/f;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/overlay/f;-><init>(Lcom/google/android/gms/ads/internal/overlay/g;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
