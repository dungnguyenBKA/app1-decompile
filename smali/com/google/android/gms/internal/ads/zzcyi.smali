.class final synthetic Lcom/google/android/gms/internal/ads/zzcyi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdkc;


# instance fields
.field private final zzfzh:Lcom/google/android/gms/internal/ads/zzvg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzvg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyi;->zzfzh:Lcom/google/android/gms/internal/ads/zzvg;

    return-void
.end method


# virtual methods
.method public final zzp(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyi;->zzfzh:Lcom/google/android/gms/internal/ads/zzvg;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzwx;

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvg;->errorCode:I

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzwx;->onAdFailedToLoad(I)V

    return-void
.end method
