.class final Lcom/google/android/gms/internal/ads/zzeah;
.super Lcom/google/android/gms/internal/ads/zzdze;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdze<",
        "TV;>;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private volatile zzibc:Lcom/google/android/gms/internal/ads/zzdzs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdzs<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdyv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdyv<",
            "TV;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdze;-><init>()V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeak;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzeak;-><init>(Lcom/google/android/gms/internal/ads/zzeah;Lcom/google/android/gms/internal/ads/zzdyv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeah;->zzibc:Lcom/google/android/gms/internal/ads/zzdzs;

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdze;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeaj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzeaj;-><init>(Lcom/google/android/gms/internal/ads/zzeah;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeah;->zzibc:Lcom/google/android/gms/internal/ads/zzdzs;

    return-void
.end method

.method static zza(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzeah;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TV;)",
            "Lcom/google/android/gms/internal/ads/zzeah<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeah;

    invoke-static {p0, p1}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeah;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method static zzf(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzeah;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Lcom/google/android/gms/internal/ads/zzeah<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeah;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeah;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method protected final afterDone()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->afterDone()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->wasInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeah;->zzibc:Lcom/google/android/gms/internal/ads/zzdzs;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdzs;->interruptTask()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeah;->zzibc:Lcom/google/android/gms/internal/ads/zzdzs;

    return-void
.end method

.method protected final pendingToString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeah;->zzibc:Lcom/google/android/gms/internal/ads/zzdzs;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    const-string v2, "task=["

    const-string v3, "]"

    invoke-static {v1, v2, v0, v3}, Lic;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->pendingToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeah;->zzibc:Lcom/google/android/gms/internal/ads/zzdzs;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdzs;->run()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeah;->zzibc:Lcom/google/android/gms/internal/ads/zzdzs;

    return-void
.end method
