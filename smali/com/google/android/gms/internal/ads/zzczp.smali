.class final synthetic Lcom/google/android/gms/internal/ads/zzczp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgtx:Landroid/net/Uri;

.field private final zzgzl:Lcom/google/android/gms/internal/ads/zzczo;

.field private final zzgzn:Lzv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzczo;Landroid/net/Uri;Lzv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczp;->zzgzl:Lcom/google/android/gms/internal/ads/zzczo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzczp;->zzgtx:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzczp;->zzgzn:Lzv;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczp;->zzgzl:Lcom/google/android/gms/internal/ads/zzczo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczp;->zzgtx:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczp;->zzgzn:Lzv;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzczo;->zzb(Landroid/net/Uri;Lzv;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
