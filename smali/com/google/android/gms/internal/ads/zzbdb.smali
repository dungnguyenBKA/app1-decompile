.class final Lcom/google/android/gms/internal/ads/zzbdb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzepl:Lcom/google/android/gms/internal/ads/zzbdc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbdc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdb;->zzepl:Lcom/google/android/gms/internal/ads/zzbdc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzln()Lcom/google/android/gms/internal/ads/zzbde;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdb;->zzepl:Lcom/google/android/gms/internal/ads/zzbdc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbde;->zzb(Lcom/google/android/gms/internal/ads/zzbdc;)V

    return-void
.end method
