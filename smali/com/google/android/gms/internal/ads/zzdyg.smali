.class abstract Lcom/google/android/gms/internal/ads/zzdyg;
.super Lcom/google/android/gms/internal/ads/zzdze;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Throwable;",
        "F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdze<",
        "TV;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private zzhyu:Lcom/google/android/gms/internal/ads/zzdzw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "+TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private zzhyv:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TX;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private zzhyw:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdzw;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;TF;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdze;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdzw;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhyu:Lcom/google/android/gms/internal/ads/zzdzw;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdwl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhyv:Ljava/lang/Class;

    .line 4
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzdwl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhyw:Ljava/lang/Object;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzdzw;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/android/gms/internal/ads/zzdyu<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyj;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdyj;-><init>(Lcom/google/android/gms/internal/ads/zzdzw;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdyu;)V

    .line 2
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/zzdzy;->zza(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdyk;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzdzw;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method protected final afterDone()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhyu:Lcom/google/android/gms/internal/ads/zzdzw;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdyk;->maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhyu:Lcom/google/android/gms/internal/ads/zzdzw;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhyv:Ljava/lang/Class;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhyw:Ljava/lang/Object;

    return-void
.end method

.method protected final pendingToString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhyu:Lcom/google/android/gms/internal/ads/zzdzw;

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhyv:Ljava/lang/Class;

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhyw:Ljava/lang/Object;

    .line 4
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->pendingToString()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x10

    const-string v5, "inputFuture=["

    const-string v6, "], "

    invoke-static {v4, v5, v0, v6}, Lic;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 6
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1d

    invoke-static {v0, v3}, Lic;->m(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v4

    const-string v4, "exceptionType=["

    const-string v5, "], fallback=["

    invoke-static {v3, v0, v4, v1, v5}, Lic;->p(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-static {v0, v2, v1}, Lic;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v3, :cond_3

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhyu:Lcom/google/android/gms/internal/ads/zzdzw;

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhyv:Ljava/lang/Class;

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhyw:Ljava/lang/Object;

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v1, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    or-int/2addr v4, v5

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    or-int/2addr v3, v4

    if-nez v3, :cond_9

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_6

    :cond_3
    const/4 v3, 0x0

    .line 5
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhyu:Lcom/google/android/gms/internal/ads/zzdzw;

    .line 6
    :try_start_0
    instance-of v4, v0, Lcom/google/android/gms/internal/ads/zzeao;

    if-eqz v4, :cond_4

    .line 7
    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/zzeao;

    .line 8
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzean;->zza(Lcom/google/android/gms/internal/ads/zzeao;)Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_3

    :cond_4
    move-object v4, v3

    :goto_3
    if-nez v4, :cond_6

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzk;->zza(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v4

    goto :goto_4

    :catch_0
    move-exception v4

    .line 10
    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_5

    .line 11
    new-instance v5, Ljava/lang/NullPointerException;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x23

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v7

    const-string v7, "Future type "

    const-string v9, " threw "

    invoke-static {v8, v7, v6, v9, v4}, Lic;->p(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " without a cause"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_5
    move-object v4, v5

    :cond_6
    :goto_4
    move-object v5, v3

    :goto_5
    if-nez v4, :cond_7

    .line 14
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zzdyk;->set(Ljava/lang/Object;)Z

    return-void

    .line 15
    :cond_7
    invoke-virtual {v1, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdyk;->setFuture(Lcom/google/android/gms/internal/ads/zzdzw;)Z

    return-void

    .line 17
    :cond_8
    :try_start_1
    invoke-virtual {p0, v2, v4}, Lcom/google/android/gms/internal/ads/zzdyg;->zza(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhyv:Ljava/lang/Class;

    .line 19
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhyw:Ljava/lang/Object;

    .line 20
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdyg;->setResult(Ljava/lang/Object;)V

    return-void

    :catchall_1
    move-exception v0

    .line 21
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdyk;->setException(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 22
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhyv:Ljava/lang/Class;

    .line 23
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhyw:Ljava/lang/Object;

    return-void

    :catchall_2
    move-exception v0

    .line 24
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhyv:Ljava/lang/Class;

    .line 25
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhyw:Ljava/lang/Object;

    .line 26
    throw v0

    :cond_9
    :goto_6
    return-void
.end method

.method abstract setResult(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method abstract zza(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TX;)TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end method
