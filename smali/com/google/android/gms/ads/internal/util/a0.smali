.class final Lcom/google/android/gms/ads/internal/util/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzazb;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/a0;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/a0;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzel(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/a0;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/a0;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
