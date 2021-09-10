.class public final Lcom/google/android/gms/internal/ads/zzayy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzrm;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final zzedg:Lcom/google/android/gms/ads/internal/util/zzf;

.field private final zzedm:Lcom/google/android/gms/internal/ads/zzayx;

.field private final zzedn:Lcom/google/android/gms/internal/ads/zzayv;

.field private final zzedo:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/ads/zzayn;",
            ">;"
        }
    .end annotation
.end field

.field private final zzedp:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/ads/zzayw;",
            ">;"
        }
    .end annotation
.end field

.field private zzedq:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzf;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayy;->lock:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzedo:Ljava/util/HashSet;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzedp:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzedq:Z

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzayv;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzayv;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzedn:Lcom/google/android/gms/internal/ads/zzayv;

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzedg:Lcom/google/android/gms/ads/internal/util/zzf;

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzayx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzayx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzedm:Lcom/google/android/gms/internal/ads/zzayx;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzayu;)Landroid/os/Bundle;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayy;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzedo:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzedo:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "app"

    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzedn:Lcom/google/android/gms/internal/ads/zzayv;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzedm:Lcom/google/android/gms/internal/ads/zzayx;

    .line 8
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzayx;->zzyd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/google/android/gms/internal/ads/zzayv;->zzn(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 9
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 10
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzedp:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v2, "slots"

    .line 12
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzayn;

    .line 15
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzayn;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, "ads"

    .line 16
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 17
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Ljava/util/HashSet;)V

    return-object v1

    .line 18
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzayw;

    .line 19
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/common/util/d;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzayn;
    .locals 2

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/zzayn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzedm:Lcom/google/android/gms/internal/ads/zzayx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayx;->zzyc()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1, p2}, Lcom/google/android/gms/internal/ads/zzayn;-><init>(Lcom/google/android/gms/common/util/d;Lcom/google/android/gms/internal/ads/zzayy;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvl;J)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayy;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzedn:Lcom/google/android/gms/internal/ads/zzayv;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzayv;->zza(Lcom/google/android/gms/internal/ads/zzvl;J)V

    .line 23
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzayn;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayy;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzedo:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/ads/zzayn;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayy;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzedo:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzp(Z)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v0

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzedg:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/util/zzf;->zzyo()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzcpm:Lcom/google/android/gms/internal/ads/zzaba;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzedn:Lcom/google/android/gms/internal/ads/zzayv;

    const/4 v0, -0x1

    .line 6
    iput v0, p1, Lcom/google/android/gms/internal/ads/zzayv;->zzedd:I

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzedn:Lcom/google/android/gms/internal/ads/zzayv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzedg:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzf;->zzyp()I

    move-result v0

    .line 8
    iput v0, p1, Lcom/google/android/gms/internal/ads/zzayv;->zzedd:I

    :goto_0
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzedq:Z

    return-void

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzedg:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/util/zzf;->zzez(J)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzedg:Lcom/google/android/gms/ads/internal/util/zzf;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzedn:Lcom/google/android/gms/internal/ads/zzayv;

    .line 12
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzayv;->zzedd:I

    .line 13
    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/internal/util/zzf;->zzde(I)V

    return-void
.end method

.method public final zzxi()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayy;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzedn:Lcom/google/android/gms/internal/ads/zzayv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayv;->zzxi()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzxj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayy;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzedn:Lcom/google/android/gms/internal/ads/zzayv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayv;->zzxj()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzyf()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzedq:Z

    return v0
.end method
