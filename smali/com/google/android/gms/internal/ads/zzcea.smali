.class public final Lcom/google/android/gms/internal/ads/zzcea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbse;


# instance fields
.field private final zzgch:Lcom/google/android/gms/internal/ads/zzccd;

.field private final zzgdj:Lcom/google/android/gms/internal/ads/zzcch;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzccd;Lcom/google/android/gms/internal/ads/zzcch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzgdj:Lcom/google/android/gms/internal/ads/zzcch;

    return-void
.end method


# virtual methods
.method public final onAdImpression()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccd;->zzaob()Lzv;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccd;->zzaoa()Lcom/google/android/gms/internal/ads/zzbeb;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzccd;->zzanz()Lcom/google/android/gms/internal/ads/zzbeb;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcea;->zzgdj:Lcom/google/android/gms/internal/ads/zzcch;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcch;->zzanq()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 5
    new-instance v1, Lx;

    invoke-direct {v1}, Lx;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaki;->zza(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method
