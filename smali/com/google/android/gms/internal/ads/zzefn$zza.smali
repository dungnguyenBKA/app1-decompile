.class public final Lcom/google/android/gms/internal/ads/zzefn$zza;
.super Lcom/google/android/gms/internal/ads/zzelb$zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzefn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb$zzb<",
        "Lcom/google/android/gms/internal/ads/zzefn;",
        "Lcom/google/android/gms/internal/ads/zzefn$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefn;->zzbdd()Lcom/google/android/gms/internal/ads/zzefn;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzelb$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzefm;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefn$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzab(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzefn$zza;
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

    check-cast v0, Lcom/google/android/gms/internal/ads/zzefn;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzefn;->zza(Lcom/google/android/gms/internal/ads/zzefn;Lcom/google/android/gms/internal/ads/zzejr;)V

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzefo;)Lcom/google/android/gms/internal/ads/zzefn$zza;
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

    check-cast v0, Lcom/google/android/gms/internal/ads/zzefn;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzefn;->zza(Lcom/google/android/gms/internal/ads/zzefn;Lcom/google/android/gms/internal/ads/zzefo;)V

    return-object p0
.end method

.method public final zzfe(I)Lcom/google/android/gms/internal/ads/zzefn$zza;
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqq:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbis()V

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqq:Z

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zziqp:Lcom/google/android/gms/internal/ads/zzelb;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzefn;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzefn;->zza(Lcom/google/android/gms/internal/ads/zzefn;I)V

    return-object p0
.end method
