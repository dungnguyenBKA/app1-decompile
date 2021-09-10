.class public Lea;
.super Lz9;
.source "SourceFile"


# instance fields
.field private final x:Lc7;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/g;Lca;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lz9;-><init>(Lcom/airbnb/lottie/g;Lca;)V

    .line 2
    new-instance v0, Lu9;

    invoke-virtual {p2}, Lca;->l()Ljava/util/List;

    move-result-object p2

    const-string v1, "__container"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lu9;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 3
    new-instance p2, Lc7;

    invoke-direct {p2, p1, p0, v0}, Lc7;-><init>(Lcom/airbnb/lottie/g;Lz9;Lu9;)V

    iput-object p2, p0, Lea;->x:Lc7;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lc7;->b(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lz9;->d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    iget-object p2, p0, Lea;->x:Lc7;

    iget-object v0, p0, Lz9;->m:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, v0, p3}, Lc7;->d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lea;->x:Lc7;

    invoke-virtual {v0, p1, p2, p3}, Lc7;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method protected p(Lo8;ILjava/util/List;Lo8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo8;",
            "I",
            "Ljava/util/List<",
            "Lo8;",
            ">;",
            "Lo8;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lea;->x:Lc7;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc7;->c(Lo8;ILjava/util/List;Lo8;)V

    return-void
.end method
