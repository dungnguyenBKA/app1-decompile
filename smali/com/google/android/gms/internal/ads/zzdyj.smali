.class final Lcom/google/android/gms/internal/ads/zzdyj;
.super Lcom/google/android/gms/internal/ads/zzdyg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Throwable;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdyg<",
        "TV;TX;",
        "Lcom/google/android/gms/internal/ads/zzdyu<",
        "-TX;+TV;>;",
        "Lcom/google/android/gms/internal/ads/zzdzw<",
        "+TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdzw;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdyu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/android/gms/internal/ads/zzdyu<",
            "-TX;+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdyg;-><init>(Lcom/google/android/gms/internal/ads/zzdzw;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final synthetic setResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdzw;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdyk;->setFuture(Lcom/google/android/gms/internal/ads/zzdzw;)Z

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdyu;

    .line 2
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdyu;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p2

    const-string v0, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    .line 3
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzdwl;->zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method
