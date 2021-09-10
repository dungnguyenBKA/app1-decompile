.class final Lcom/google/android/gms/ads/internal/util/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaco;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/zzacp;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzacp;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/y;->a:Lcom/google/android/gms/internal/ads/zzacp;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/y;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/y;->c:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzst()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/y;->a:Lcom/google/android/gms/internal/ads/zzacp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacp;->zzsv()Landroidx/browser/customtabs/e;

    move-result-object v0

    .line 2
    new-instance v1, Landroidx/browser/customtabs/c$a;

    invoke-direct {v1, v0}, Landroidx/browser/customtabs/c$a;-><init>(Landroidx/browser/customtabs/e;)V

    .line 3
    invoke-virtual {v1}, Landroidx/browser/customtabs/c$a;->a()Landroidx/browser/customtabs/c;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/y;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/y;->c:Landroid/net/Uri;

    .line 5
    iget-object v3, v0, Landroidx/browser/customtabs/c;->a:Landroid/content/Intent;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6
    iget-object v0, v0, Landroidx/browser/customtabs/c;->a:Landroid/content/Intent;

    .line 7
    sget v2, Landroidx/core/content/a;->b:I

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/y;->a:Lcom/google/android/gms/internal/ads/zzacp;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/y;->b:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzacp;->zzc(Landroid/app/Activity;)V

    return-void
.end method

.method public final zzsu()V
    .locals 0

    return-void
.end method
