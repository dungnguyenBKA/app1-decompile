.class public final Lcom/google/android/gms/internal/ads/zzug$zzae$zza;
.super Lcom/google/android/gms/internal/ads/zzelb$zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzug$zzae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb$zzb<",
        "Lcom/google/android/gms/internal/ads/zzug$zzae;",
        "Lcom/google/android/gms/internal/ads/zzug$zzae$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzug$zzae;->zzqa()Lcom/google/android/gms/internal/ads/zzug$zzae;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzelb$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzuf;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzug$zzae$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzcu(I)Lcom/google/android/gms/internal/ads/zzug$zzae$zza;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqq:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbis()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqq:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqp:Lcom/google/android/gms/internal/ads/zzelb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzug$zzae;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzug$zzae;->zza(Lcom/google/android/gms/internal/ads/zzug$zzae;I)V

    return-object p0
.end method

.method public final zzpy()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqp:Lcom/google/android/gms/internal/ads/zzelb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzug$zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzug$zzae;->zzpy()Z

    move-result v0

    return v0
.end method

.method public final zzw(Z)Lcom/google/android/gms/internal/ads/zzug$zzae$zza;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqq:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbis()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqq:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqp:Lcom/google/android/gms/internal/ads/zzelb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzug$zzae;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzug$zzae;->zza(Lcom/google/android/gms/internal/ads/zzug$zzae;Z)V

    return-object p0
.end method
