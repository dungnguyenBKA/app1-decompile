.class public Lba;
.super Lz9;
.source "SourceFile"


# instance fields
.field private A:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Landroid/graphics/Paint;

.field private final y:Landroid/graphics/Rect;

.field private final z:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/g;Lca;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lz9;-><init>(Lcom/airbnb/lottie/g;Lca;)V

    .line 2
    new-instance p1, Ly6;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Ly6;-><init>(I)V

    iput-object p1, p0, Lba;->x:Landroid/graphics/Paint;

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lba;->y:Landroid/graphics/Rect;

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lba;->z:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lz9;->d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    iget-object p2, p0, Lz9;->o:Lca;

    invoke-virtual {p2}, Lca;->k()Ljava/lang/String;

    move-result-object p2

    .line 3
    iget-object p3, p0, Lz9;->n:Lcom/airbnb/lottie/g;

    invoke-virtual {p3, p2}, Lcom/airbnb/lottie/g;->m(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-static {}, Ldc;->c()F

    move-result v0

    mul-float v0, v0, p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-static {}, Ldc;->c()F

    move-result p3

    mul-float p3, p3, p2

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, v0, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5
    iget-object p2, p0, Lz9;->m:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Object;Lgc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lgc<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lz9;->v:Lg8;

    invoke-virtual {v0, p1, p2}, Lg8;->c(Ljava/lang/Object;Lgc;)Z

    .line 2
    sget-object v0, Lcom/airbnb/lottie/l;->C:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 3
    iput-object p1, p0, Lba;->A:Ls7;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lh8;

    .line 5
    invoke-direct {v0, p2, p1}, Lh8;-><init>(Lgc;Ljava/lang/Object;)V

    .line 6
    iput-object v0, p0, Lba;->A:Ls7;

    :cond_1
    :goto_0
    return-void
.end method

.method public l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lz9;->o:Lca;

    invoke-virtual {v0}, Lca;->k()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lz9;->n:Lcom/airbnb/lottie/g;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/g;->m(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Ldc;->c()F

    move-result v1

    .line 5
    iget-object v2, p0, Lba;->x:Landroid/graphics/Paint;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6
    iget-object p3, p0, Lba;->A:Ls7;

    if-eqz p3, :cond_1

    .line 7
    iget-object v2, p0, Lba;->x:Landroid/graphics/Paint;

    invoke-virtual {p3}, Ls7;->g()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 9
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 10
    iget-object p2, p0, Lba;->y:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v3, p3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 11
    iget-object p2, p0, Lba;->z:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, v1

    float-to-int p3, p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-virtual {p2, v3, v3, p3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 12
    iget-object p2, p0, Lba;->y:Landroid/graphics/Rect;

    iget-object p3, p0, Lba;->z:Landroid/graphics/Rect;

    iget-object v1, p0, Lba;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    :goto_0
    return-void
.end method
