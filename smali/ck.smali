.class public Lck;
.super Lyj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyj<",
        "Lck;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lyj;-><init>()V

    return-void
.end method

.method public static Y(Lcom/bumptech/glide/load/m;)Lck;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lck;"
        }
    .end annotation

    .line 1
    new-instance v0, Lck;

    invoke-direct {v0}, Lck;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p0, v1}, Lyj;->U(Lcom/bumptech/glide/load/m;Z)Lyj;

    move-result-object p0

    .line 3
    check-cast p0, Lck;

    return-object p0
.end method
