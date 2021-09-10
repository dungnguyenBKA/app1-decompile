.class public abstract Lqg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/k<",
        "Landroid/graphics/ImageDecoder$Source;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lkh;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lkh;->a()Lkh;

    move-result-object v0

    iput-object v0, p0, Lqg;->a:Lkh;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/load/i;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/ImageDecoder$Source;

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lhe;
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/ImageDecoder$Source;

    invoke-virtual {p0, p1, p2, p3, p4}, Lqg;->d(Landroid/graphics/ImageDecoder$Source;IILcom/bumptech/glide/load/i;)Lhe;

    move-result-object p1

    return-object p1
.end method

.method protected abstract c(Landroid/graphics/ImageDecoder$Source;IILandroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Lhe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ImageDecoder$Source;",
            "II",
            "Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;",
            ")",
            "Lhe<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final d(Landroid/graphics/ImageDecoder$Source;IILcom/bumptech/glide/load/i;)Lhe;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ImageDecoder$Source;",
            "II",
            "Lcom/bumptech/glide/load/i;",
            ")",
            "Lhe<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lfh;->f:Lcom/bumptech/glide/load/h;

    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/i;->c(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/bumptech/glide/load/b;

    .line 2
    sget-object v0, Leh;->f:Lcom/bumptech/glide/load/h;

    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/i;->c(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Leh;

    .line 3
    sget-object v0, Lfh;->i:Lcom/bumptech/glide/load/h;

    .line 4
    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/i;->c(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/i;->c(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 6
    :goto_0
    sget-object v0, Lfh;->g:Lcom/bumptech/glide/load/h;

    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/i;->c(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;

    move-result-object p4

    move-object v8, p4

    check-cast v8, Lcom/bumptech/glide/load/j;

    .line 7
    new-instance p4, Lqg$a;

    move-object v1, p4

    move-object v2, p0

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v8}, Lqg$a;-><init>(Lqg;IIZLcom/bumptech/glide/load/b;Leh;Lcom/bumptech/glide/load/j;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lqg;->c(Landroid/graphics/ImageDecoder$Source;IILandroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Lhe;

    move-result-object p1

    return-object p1
.end method
