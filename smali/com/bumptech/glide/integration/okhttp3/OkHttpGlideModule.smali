.class public Lcom/bumptech/glide/integration/okhttp3/OkHttpGlideModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpj;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bumptech/glide/d;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/g;)V
    .locals 1

    .line 1
    const-class p1, Lsf;

    const-class p2, Ljava/io/InputStream;

    new-instance v0, Lcom/bumptech/glide/integration/okhttp3/c$a;

    invoke-direct {v0}, Lcom/bumptech/glide/integration/okhttp3/c$a;-><init>()V

    invoke-virtual {p3, p1, p2, v0}, Lcom/bumptech/glide/g;->q(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    return-void
.end method
