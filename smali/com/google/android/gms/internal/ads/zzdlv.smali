.class final synthetic Lcom/google/android/gms/internal/ads/zzdlv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdkc;


# instance fields
.field private final zzehw:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdlv;->zzehw:I

    return-void
.end method


# virtual methods
.method public final zzp(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdlv;->zzehw:I

    check-cast p1, Lcom/google/android/gms/internal/ads/zzavu;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzavu;->onRewardedAdFailedToLoad(I)V

    return-void
.end method
