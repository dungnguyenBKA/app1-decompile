.class public Lda;
.super Lz9;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/g;Lca;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lz9;-><init>(Lcom/airbnb/lottie/g;Lca;)V

    return-void
.end method


# virtual methods
.method public d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lz9;->d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 0

    return-void
.end method
