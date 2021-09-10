.class final synthetic Lcom/google/android/gms/ads/internal/util/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/ads/internal/util/zzi;

.field private final c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzi;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/t;->b:Lcom/google/android/gms/ads/internal/util/zzi;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/t;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/t;->b:Lcom/google/android/gms/ads/internal/util/zzi;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/t;->c:Landroid/content/Context;

    const-string v2, "admob"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzi;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
