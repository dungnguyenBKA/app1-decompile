.class final synthetic Lcom/google/android/gms/internal/ads/zzdbj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzhaz:Lcom/google/android/gms/internal/ads/zzdbg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdbg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbj;->zzhaz:Lcom/google/android/gms/internal/ads/zzdbg;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbj;->zzhaz:Lcom/google/android/gms/internal/ads/zzdbg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdbg;->zzata()Lcom/google/android/gms/internal/ads/zzdbe;

    move-result-object v0

    return-object v0
.end method
