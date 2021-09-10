.class public final Lcom/google/android/gms/internal/ads/zzblw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Lcom/google/android/gms/internal/ads/zzbts;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfsz:Lcom/google/android/gms/internal/ads/zzeqo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/common/util/d;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfun:Lcom/google/android/gms/internal/ads/zzeqo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeqo;Lcom/google/android/gms/internal/ads/zzeqo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/common/util/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzblw;->zzfun:Lcom/google/android/gms/internal/ads/zzeqo;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzblw;->zzfsz:Lcom/google/android/gms/internal/ads/zzeqo;

    return-void
.end method

.method public static zza(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/d;)Lcom/google/android/gms/internal/ads/zzbts;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbts;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbts;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/d;)V

    const-string p0, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbts;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblw;->zzfun:Lcom/google/android/gms/internal/ads/zzeqo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeqo;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzblw;->zzfsz:Lcom/google/android/gms/internal/ads/zzeqo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzeqo;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/util/d;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzblw;->zza(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/d;)Lcom/google/android/gms/internal/ads/zzbts;

    move-result-object v0

    return-object v0
.end method
