.class final Lcom/google/android/gms/internal/ads/zzdxp;
.super Lcom/google/android/gms/internal/ads/zzdyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdyb<",
        "TF;TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzhye:Lcom/google/android/gms/internal/ads/zzdxm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdxm;Ljava/util/ListIterator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxp;->zzhye:Lcom/google/android/gms/internal/ads/zzdxm;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzdyb;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method final zzae(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxp;->zzhye:Lcom/google/android/gms/internal/ads/zzdxm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdxm;->zzhyc:Lcom/google/android/gms/internal/ads/zzdvz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdvz;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
