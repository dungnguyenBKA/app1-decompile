.class public Lf7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld7;
.implements Ls7$b;
.implements Lj7;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Paint;

.field private final c:Lz9;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll7;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/airbnb/lottie/g;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/g;Lz9;Lt9;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lf7;->a:Landroid/graphics/Path;

    .line 3
    new-instance v1, Ly6;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ly6;-><init>(I)V

    iput-object v1, p0, Lf7;->b:Landroid/graphics/Paint;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lf7;->f:Ljava/util/List;

    .line 5
    iput-object p2, p0, Lf7;->c:Lz9;

    .line 6
    invoke-virtual {p3}, Lt9;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lf7;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {p3}, Lt9;->f()Z

    move-result v1

    iput-boolean v1, p0, Lf7;->e:Z

    .line 8
    iput-object p1, p0, Lf7;->j:Lcom/airbnb/lottie/g;

    .line 9
    invoke-virtual {p3}, Lt9;->b()Lt8;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lt9;->e()Lw8;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p3}, Lt9;->c()Landroid/graphics/Path$FillType;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 11
    invoke-virtual {p3}, Lt9;->b()Lt8;

    move-result-object p1

    invoke-virtual {p1}, Lt8;->a()Ls7;

    move-result-object p1

    iput-object p1, p0, Lf7;->g:Ls7;

    .line 12
    invoke-virtual {p1, p0}, Ls7;->a(Ls7$b;)V

    .line 13
    invoke-virtual {p2, p1}, Lz9;->i(Ls7;)V

    .line 14
    invoke-virtual {p3}, Lt9;->e()Lw8;

    move-result-object p1

    invoke-virtual {p1}, Lw8;->a()Ls7;

    move-result-object p1

    iput-object p1, p0, Lf7;->h:Ls7;

    .line 15
    invoke-virtual {p1, p0}, Ls7;->a(Ls7$b;)V

    .line 16
    invoke-virtual {p2, p1}, Lz9;->i(Ls7;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lf7;->g:Ls7;

    .line 18
    iput-object p1, p0, Lf7;->h:Ls7;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf7;->j:Lcom/airbnb/lottie/g;

    invoke-virtual {v0}, Lcom/airbnb/lottie/g;->invalidateSelf()V

    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb7;",
            ">;",
            "Ljava/util/List<",
            "Lb7;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 2
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb7;

    .line 3
    instance-of v1, v0, Ll7;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lf7;->f:Ljava/util/List;

    check-cast v0, Ll7;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Lo8;ILjava/util/List;Lo8;)V
    .locals 0
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
    invoke-static {p1, p2, p3, p4, p0}, Lcc;->g(Lo8;ILjava/util/List;Lo8;Lj7;)V

    return-void
.end method

.method public d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 1
    iget-object p3, p0, Lf7;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lf7;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lf7;->a:Landroid/graphics/Path;

    iget-object v2, p0, Lf7;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll7;

    invoke-interface {v2}, Ll7;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lf7;->a:Landroid/graphics/Path;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5
    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p3

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lf7;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lf7;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lf7;->g:Ls7;

    check-cast v1, Lt7;

    invoke-virtual {v1}, Lt7;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p3, p3

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p3, v0

    .line 3
    iget-object v1, p0, Lf7;->h:Ls7;

    invoke-virtual {v1}, Ls7;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float p3, p3, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p3, v1

    mul-float p3, p3, v0

    float-to-int p3, p3

    .line 4
    iget-object v0, p0, Lf7;->b:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-static {p3, v2, v1}, Lcc;->c(III)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5
    iget-object p3, p0, Lf7;->i:Ls7;

    if-eqz p3, :cond_1

    .line 6
    iget-object v0, p0, Lf7;->b:Landroid/graphics/Paint;

    invoke-virtual {p3}, Ls7;->g()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 7
    :cond_1
    iget-object p3, p0, Lf7;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 8
    :goto_0
    iget-object p3, p0, Lf7;->f:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_2

    .line 9
    iget-object p3, p0, Lf7;->a:Landroid/graphics/Path;

    iget-object v0, p0, Lf7;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll7;

    invoke-interface {v0}, Ll7;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget-object p2, p0, Lf7;->a:Landroid/graphics/Path;

    iget-object p3, p0, Lf7;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const-string p1, "FillContent#draw"

    .line 11
    invoke-static {p1}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

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
    sget-object v0, Lcom/airbnb/lottie/l;->a:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lf7;->g:Ls7;

    invoke-virtual {p1, p2}, Ls7;->l(Lgc;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/l;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lf7;->h:Ls7;

    invoke-virtual {p1, p2}, Ls7;->l(Lgc;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/l;->C:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_4

    .line 6
    iget-object p1, p0, Lf7;->i:Ls7;

    if-eqz p1, :cond_2

    .line 7
    iget-object v0, p0, Lf7;->c:Lz9;

    invoke-virtual {v0, p1}, Lz9;->o(Ls7;)V

    :cond_2
    const/4 p1, 0x0

    if-nez p2, :cond_3

    .line 8
    iput-object p1, p0, Lf7;->i:Ls7;

    goto :goto_0

    .line 9
    :cond_3
    new-instance v0, Lh8;

    .line 10
    invoke-direct {v0, p2, p1}, Lh8;-><init>(Lgc;Ljava/lang/Object;)V

    .line 11
    iput-object v0, p0, Lf7;->i:Ls7;

    .line 12
    invoke-virtual {v0, p0}, Ls7;->a(Ls7$b;)V

    .line 13
    iget-object p1, p0, Lf7;->c:Lz9;

    iget-object p2, p0, Lf7;->i:Ls7;

    invoke-virtual {p1, p2}, Lz9;->i(Ls7;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf7;->d:Ljava/lang/String;

    return-object v0
.end method
