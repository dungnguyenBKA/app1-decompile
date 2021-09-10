.class final Lcom/google/android/gms/internal/ads/zzdig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdzl<",
        "TAppOpenAd;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzgzg:Lcom/google/android/gms/internal/ads/zzcze;

.field private final synthetic zzhfo:Lcom/google/android/gms/internal/ads/zzdii;

.field final synthetic zzhfp:Lcom/google/android/gms/internal/ads/zzdif;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdif;Lcom/google/android/gms/internal/ads/zzcze;Lcom/google/android/gms/internal/ads/zzdii;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdig;->zzhfp:Lcom/google/android/gms/internal/ads/zzdif;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdig;->zzgzg:Lcom/google/android/gms/internal/ads/zzcze;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdig;->zzhfo:Lcom/google/android/gms/internal/ads/zzdii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbnt;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdig;->zzhfp:Lcom/google/android/gms/internal/ads/zzdif;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdig;->zzhfp:Lcom/google/android/gms/internal/ads/zzdif;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdif;->zza(Lcom/google/android/gms/internal/ads/zzdif;Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdzw;

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabp;->zzczt:Lcom/google/android/gms/internal/ads/zzaba;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnt;->zzakt()Lcom/google/android/gms/internal/ads/zzbve;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdig;->zzhfp:Lcom/google/android/gms/internal/ads/zzdif;

    .line 8
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdif;->zza(Lcom/google/android/gms/internal/ads/zzdif;)Lcom/google/android/gms/internal/ads/zzdil;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbve;->zza(Lcom/google/android/gms/internal/ads/zzdil;)Lcom/google/android/gms/internal/ads/zzbve;

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdig;->zzgzg:Lcom/google/android/gms/internal/ads/zzcze;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzcze;->onSuccess(Ljava/lang/Object;)V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdig;->zzhfp:Lcom/google/android/gms/internal/ads/zzdif;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdif;->zzb(Lcom/google/android/gms/internal/ads/zzdif;)Lcom/google/android/gms/internal/ads/zzdkn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdkn;->zzaun()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbld;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzdok;->zza(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzcrq;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbqv;->zzagj()Lcom/google/android/gms/internal/ads/zzbou;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzbou;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v2

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdig;->zzhfp:Lcom/google/android/gms/internal/ads/zzdif;

    monitor-enter v3

    .line 6
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdig;->zzhfp:Lcom/google/android/gms/internal/ads/zzdif;

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzdif;->zza(Lcom/google/android/gms/internal/ads/zzdif;Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdzw;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbld;->zzagk()Lcom/google/android/gms/internal/ads/zzbrp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbrp;->zzc(Lcom/google/android/gms/internal/ads/zzvg;)V

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzczt:Lcom/google/android/gms/internal/ads/zzaba;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdig;->zzhfp:Lcom/google/android/gms/internal/ads/zzdif;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdif;->zzc(Lcom/google/android/gms/internal/ads/zzdif;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdij;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzdij;-><init>(Lcom/google/android/gms/internal/ads/zzdig;Lcom/google/android/gms/internal/ads/zzvg;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdig;->zzhfp:Lcom/google/android/gms/internal/ads/zzdif;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdif;->zza(Lcom/google/android/gms/internal/ads/zzdif;)Lcom/google/android/gms/internal/ads/zzdil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzdil;->zzc(Lcom/google/android/gms/internal/ads/zzvg;)V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdig;->zzhfp:Lcom/google/android/gms/internal/ads/zzdif;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdig;->zzhfo:Lcom/google/android/gms/internal/ads/zzdii;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdif;->zza(Lcom/google/android/gms/internal/ads/zzdif;Lcom/google/android/gms/internal/ads/zzdkm;)Lcom/google/android/gms/internal/ads/zzbqy;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbqy;->zzagm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbld;

    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbqv;->zzagj()Lcom/google/android/gms/internal/ads/zzbou;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbou;->zzalc()Lcom/google/android/gms/internal/ads/zzbvu;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbvu;->zzalx()V

    .line 18
    :cond_2
    :goto_1
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzvg;->errorCode:I

    const-string v1, "AppOpenAdLoader.onFailure"

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdod;->zza(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdig;->zzgzg:Lcom/google/android/gms/internal/ads/zzcze;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcze;->zzasi()V

    .line 20
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
