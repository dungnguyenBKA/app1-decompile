.class public Lga;
.super Lz9;
.source "SourceFile"


# instance fields
.field private final A:Landroid/graphics/Paint;

.field private final B:Landroid/graphics/Paint;

.field private final C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ln8;",
            "Ljava/util/List<",
            "Lc7;",
            ">;>;"
        }
    .end annotation
.end field

.field private final D:Lb0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final E:Lf8;

.field private final F:Lcom/airbnb/lottie/g;

.field private final G:Lcom/airbnb/lottie/e;

.field private H:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private I:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private J:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private K:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private L:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private N:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private O:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private P:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Ljava/lang/StringBuilder;

.field private final y:Landroid/graphics/RectF;

.field private final z:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/g;Lca;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lz9;-><init>(Lcom/airbnb/lottie/g;Lca;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lga;->x:Ljava/lang/StringBuilder;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lga;->y:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lga;->z:Landroid/graphics/Matrix;

    .line 5
    new-instance v0, Lga$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lga$a;-><init>(Lga;I)V

    iput-object v0, p0, Lga;->A:Landroid/graphics/Paint;

    .line 6
    new-instance v0, Lga$b;

    invoke-direct {v0, p0, v1}, Lga$b;-><init>(Lga;I)V

    iput-object v0, p0, Lga;->B:Landroid/graphics/Paint;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lga;->C:Ljava/util/Map;

    .line 8
    new-instance v0, Lb0;

    const/16 v1, 0xa

    .line 9
    invoke-direct {v0, v1}, Lb0;-><init>(I)V

    .line 10
    iput-object v0, p0, Lga;->D:Lb0;

    .line 11
    iput-object p1, p0, Lga;->F:Lcom/airbnb/lottie/g;

    .line 12
    invoke-virtual {p2}, Lca;->a()Lcom/airbnb/lottie/e;

    move-result-object p1

    iput-object p1, p0, Lga;->G:Lcom/airbnb/lottie/e;

    .line 13
    invoke-virtual {p2}, Lca;->q()Lc9;

    move-result-object p1

    invoke-virtual {p1}, Lc9;->d()Lf8;

    move-result-object p1

    iput-object p1, p0, Lga;->E:Lf8;

    .line 14
    invoke-virtual {p1, p0}, Ls7;->a(Ls7$b;)V

    .line 15
    invoke-virtual {p0, p1}, Lz9;->i(Ls7;)V

    .line 16
    invoke-virtual {p2}, Lca;->r()Ld9;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 17
    iget-object p2, p1, Ld9;->a:Lt8;

    if-eqz p2, :cond_0

    .line 18
    invoke-virtual {p2}, Lt8;->a()Ls7;

    move-result-object p2

    iput-object p2, p0, Lga;->H:Ls7;

    .line 19
    invoke-virtual {p2, p0}, Ls7;->a(Ls7$b;)V

    .line 20
    iget-object p2, p0, Lga;->H:Ls7;

    invoke-virtual {p0, p2}, Lz9;->i(Ls7;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 21
    iget-object p2, p1, Ld9;->b:Lt8;

    if-eqz p2, :cond_1

    .line 22
    invoke-virtual {p2}, Lt8;->a()Ls7;

    move-result-object p2

    iput-object p2, p0, Lga;->J:Ls7;

    .line 23
    invoke-virtual {p2, p0}, Ls7;->a(Ls7$b;)V

    .line 24
    iget-object p2, p0, Lga;->J:Ls7;

    invoke-virtual {p0, p2}, Lz9;->i(Ls7;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 25
    iget-object p2, p1, Ld9;->c:Lu8;

    if-eqz p2, :cond_2

    .line 26
    invoke-virtual {p2}, Lu8;->a()Ls7;

    move-result-object p2

    iput-object p2, p0, Lga;->L:Ls7;

    .line 27
    invoke-virtual {p2, p0}, Ls7;->a(Ls7$b;)V

    .line 28
    iget-object p2, p0, Lga;->L:Ls7;

    invoke-virtual {p0, p2}, Lz9;->i(Ls7;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 29
    iget-object p1, p1, Ld9;->d:Lu8;

    if-eqz p1, :cond_3

    .line 30
    invoke-virtual {p1}, Lu8;->a()Ls7;

    move-result-object p1

    iput-object p1, p0, Lga;->N:Ls7;

    .line 31
    invoke-virtual {p1, p0}, Ls7;->a(Ls7$b;)V

    .line 32
    iget-object p1, p0, Lga;->N:Ls7;

    invoke-virtual {p0, p1}, Lz9;->i(Ls7;)V

    :cond_3
    return-void
.end method

.method private u(Ll8$a;Landroid/graphics/Canvas;F)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    neg-float p1, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    .line 2
    invoke-virtual {p2, p1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_1
    neg-float p1, p3

    .line 3
    invoke-virtual {p2, p1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    return-void
.end method

.method private v(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private w(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private x(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "\r\n"

    const-string v1, "\r"

    .line 1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lz9;->d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    iget-object p2, p0, Lga;->G:Lcom/airbnb/lottie/e;

    invoke-virtual {p2}, Lcom/airbnb/lottie/e;->b()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lga;->G:Lcom/airbnb/lottie/e;

    invoke-virtual {p3}, Lcom/airbnb/lottie/e;->b()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public g(Ljava/lang/Object;Lgc;)V
    .locals 2
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
    sget-object v0, Lcom/airbnb/lottie/l;->a:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Lga;->I:Ls7;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lz9;->o(Ls7;)V

    :cond_0
    if-nez p2, :cond_1

    .line 5
    iput-object v1, p0, Lga;->I:Ls7;

    goto/16 :goto_0

    .line 6
    :cond_1
    new-instance p1, Lh8;

    .line 7
    invoke-direct {p1, p2, v1}, Lh8;-><init>(Lgc;Ljava/lang/Object;)V

    .line 8
    iput-object p1, p0, Lga;->I:Ls7;

    .line 9
    invoke-virtual {p1, p0}, Ls7;->a(Ls7$b;)V

    .line 10
    iget-object p1, p0, Lga;->I:Ls7;

    invoke-virtual {p0, p1}, Lz9;->i(Ls7;)V

    goto/16 :goto_0

    .line 11
    :cond_2
    sget-object v0, Lcom/airbnb/lottie/l;->b:Ljava/lang/Integer;

    if-ne p1, v0, :cond_5

    .line 12
    iget-object p1, p0, Lga;->K:Ls7;

    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p0, p1}, Lz9;->o(Ls7;)V

    :cond_3
    if-nez p2, :cond_4

    .line 14
    iput-object v1, p0, Lga;->K:Ls7;

    goto/16 :goto_0

    .line 15
    :cond_4
    new-instance p1, Lh8;

    .line 16
    invoke-direct {p1, p2, v1}, Lh8;-><init>(Lgc;Ljava/lang/Object;)V

    .line 17
    iput-object p1, p0, Lga;->K:Ls7;

    .line 18
    invoke-virtual {p1, p0}, Ls7;->a(Ls7$b;)V

    .line 19
    iget-object p1, p0, Lga;->K:Ls7;

    invoke-virtual {p0, p1}, Lz9;->i(Ls7;)V

    goto :goto_0

    .line 20
    :cond_5
    sget-object v0, Lcom/airbnb/lottie/l;->o:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    .line 21
    iget-object p1, p0, Lga;->M:Ls7;

    if-eqz p1, :cond_6

    .line 22
    invoke-virtual {p0, p1}, Lz9;->o(Ls7;)V

    :cond_6
    if-nez p2, :cond_7

    .line 23
    iput-object v1, p0, Lga;->M:Ls7;

    goto :goto_0

    .line 24
    :cond_7
    new-instance p1, Lh8;

    .line 25
    invoke-direct {p1, p2, v1}, Lh8;-><init>(Lgc;Ljava/lang/Object;)V

    .line 26
    iput-object p1, p0, Lga;->M:Ls7;

    .line 27
    invoke-virtual {p1, p0}, Ls7;->a(Ls7$b;)V

    .line 28
    iget-object p1, p0, Lga;->M:Ls7;

    invoke-virtual {p0, p1}, Lz9;->i(Ls7;)V

    goto :goto_0

    .line 29
    :cond_8
    sget-object v0, Lcom/airbnb/lottie/l;->p:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    .line 30
    iget-object p1, p0, Lga;->O:Ls7;

    if-eqz p1, :cond_9

    .line 31
    invoke-virtual {p0, p1}, Lz9;->o(Ls7;)V

    :cond_9
    if-nez p2, :cond_a

    .line 32
    iput-object v1, p0, Lga;->O:Ls7;

    goto :goto_0

    .line 33
    :cond_a
    new-instance p1, Lh8;

    .line 34
    invoke-direct {p1, p2, v1}, Lh8;-><init>(Lgc;Ljava/lang/Object;)V

    .line 35
    iput-object p1, p0, Lga;->O:Ls7;

    .line 36
    invoke-virtual {p1, p0}, Ls7;->a(Ls7$b;)V

    .line 37
    iget-object p1, p0, Lga;->O:Ls7;

    invoke-virtual {p0, p1}, Lz9;->i(Ls7;)V

    goto :goto_0

    .line 38
    :cond_b
    sget-object v0, Lcom/airbnb/lottie/l;->B:Ljava/lang/Float;

    if-ne p1, v0, :cond_e

    .line 39
    iget-object p1, p0, Lga;->P:Ls7;

    if-eqz p1, :cond_c

    .line 40
    invoke-virtual {p0, p1}, Lz9;->o(Ls7;)V

    :cond_c
    if-nez p2, :cond_d

    .line 41
    iput-object v1, p0, Lga;->P:Ls7;

    goto :goto_0

    .line 42
    :cond_d
    new-instance p1, Lh8;

    .line 43
    invoke-direct {p1, p2, v1}, Lh8;-><init>(Lgc;Ljava/lang/Object;)V

    .line 44
    iput-object p1, p0, Lga;->P:Ls7;

    .line 45
    invoke-virtual {p1, p0}, Ls7;->a(Ls7$b;)V

    .line 46
    iget-object p1, p0, Lga;->P:Ls7;

    invoke-virtual {p0, p1}, Lz9;->i(Ls7;)V

    :cond_e
    :goto_0
    return-void
.end method

.method l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget-object v2, v0, Lga;->F:Lcom/airbnb/lottie/g;

    invoke-virtual {v2}, Lcom/airbnb/lottie/g;->H()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 4
    :cond_0
    iget-object v2, v0, Lga;->E:Lf8;

    invoke-virtual {v2}, Ls7;->g()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll8;

    .line 5
    iget-object v3, v0, Lga;->G:Lcom/airbnb/lottie/e;

    invoke-virtual {v3}, Lcom/airbnb/lottie/e;->g()Ljava/util/Map;

    move-result-object v3

    iget-object v4, v2, Ll8;->b:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm8;

    if-nez v3, :cond_1

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 7
    :cond_1
    iget-object v4, v0, Lga;->I:Ls7;

    if-eqz v4, :cond_2

    .line 8
    iget-object v5, v0, Lga;->A:Landroid/graphics/Paint;

    invoke-virtual {v4}, Ls7;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v4, v0, Lga;->H:Ls7;

    if-eqz v4, :cond_3

    .line 10
    iget-object v5, v0, Lga;->A:Landroid/graphics/Paint;

    invoke-virtual {v4}, Ls7;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v4, v0, Lga;->A:Landroid/graphics/Paint;

    iget v5, v2, Ll8;->h:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    :goto_0
    iget-object v4, v0, Lga;->K:Ls7;

    if-eqz v4, :cond_4

    .line 13
    iget-object v5, v0, Lga;->B:Landroid/graphics/Paint;

    invoke-virtual {v4}, Ls7;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 14
    :cond_4
    iget-object v4, v0, Lga;->J:Ls7;

    if-eqz v4, :cond_5

    .line 15
    iget-object v5, v0, Lga;->B:Landroid/graphics/Paint;

    invoke-virtual {v4}, Ls7;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 16
    :cond_5
    iget-object v4, v0, Lga;->B:Landroid/graphics/Paint;

    iget v5, v2, Ll8;->i:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    :goto_1
    iget-object v4, v0, Lz9;->v:Lg8;

    invoke-virtual {v4}, Lg8;->h()Ls7;

    move-result-object v4

    const/16 v5, 0x64

    if-nez v4, :cond_6

    const/16 v4, 0x64

    goto :goto_2

    :cond_6
    iget-object v4, v0, Lz9;->v:Lg8;

    invoke-virtual {v4}, Lg8;->h()Ls7;

    move-result-object v4

    invoke-virtual {v4}, Ls7;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_2
    mul-int/lit16 v4, v4, 0xff

    .line 18
    div-int/2addr v4, v5

    .line 19
    iget-object v5, v0, Lga;->A:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 20
    iget-object v5, v0, Lga;->B:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 21
    iget-object v4, v0, Lga;->M:Ls7;

    if-eqz v4, :cond_7

    .line 22
    iget-object v5, v0, Lga;->B:Landroid/graphics/Paint;

    invoke-virtual {v4}, Ls7;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3

    .line 23
    :cond_7
    iget-object v4, v0, Lga;->L:Ls7;

    if-eqz v4, :cond_8

    .line 24
    iget-object v5, v0, Lga;->B:Landroid/graphics/Paint;

    invoke-virtual {v4}, Ls7;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3

    .line 25
    :cond_8
    invoke-static/range {p2 .. p2}, Ldc;->d(Landroid/graphics/Matrix;)F

    move-result v4

    .line 26
    iget-object v5, v0, Lga;->B:Landroid/graphics/Paint;

    iget v6, v2, Ll8;->j:F

    invoke-static {}, Ldc;->c()F

    move-result v7

    mul-float v7, v7, v6

    mul-float v7, v7, v4

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 27
    :goto_3
    iget-object v4, v0, Lga;->F:Lcom/airbnb/lottie/g;

    invoke-virtual {v4}, Lcom/airbnb/lottie/g;->H()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 28
    iget-object v4, v0, Lga;->P:Ls7;

    if-eqz v4, :cond_9

    .line 29
    invoke-virtual {v4}, Ls7;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_4

    .line 30
    :cond_9
    iget v4, v2, Ll8;->c:F

    :goto_4
    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v4, v9

    .line 31
    invoke-static/range {p2 .. p2}, Ldc;->d(Landroid/graphics/Matrix;)F

    move-result v9

    .line 32
    iget-object v10, v2, Ll8;->a:Ljava/lang/String;

    .line 33
    iget v11, v2, Ll8;->f:F

    invoke-static {}, Ldc;->c()F

    move-result v12

    mul-float v12, v12, v11

    .line 34
    invoke-direct {v0, v10}, Lga;->x(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 35
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v11, :cond_21

    .line 36
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v15, 0x0

    .line 37
    :goto_6
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v15, v8, :cond_b

    .line 38
    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 39
    invoke-virtual {v3}, Lm8;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lm8;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v7, v6}, Ln8;->c(CLjava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 40
    iget-object v7, v0, Lga;->G:Lcom/airbnb/lottie/e;

    invoke-virtual {v7}, Lcom/airbnb/lottie/e;->c()Lf0;

    move-result-object v7

    invoke-virtual {v7, v6}, Lf0;->e(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln8;

    if-nez v6, :cond_a

    move/from16 v16, v13

    move-object/from16 v17, v14

    goto :goto_7

    :cond_a
    float-to-double v7, v5

    .line 41
    invoke-virtual {v6}, Ln8;->b()D

    move-result-wide v5

    move/from16 v16, v13

    move-object/from16 v17, v14

    float-to-double v13, v4

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v13

    invoke-static {}, Ldc;->c()F

    move-result v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v13

    float-to-double v13, v9

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v13

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v7

    double-to-float v5, v5

    :goto_7
    add-int/lit8 v15, v15, 0x1

    move/from16 v13, v16

    move-object/from16 v14, v17

    goto :goto_6

    :cond_b
    move/from16 v16, v13

    move-object/from16 v17, v14

    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 43
    iget-object v6, v2, Ll8;->d:Ll8$a;

    invoke-direct {v0, v6, v1, v5}, Lga;->u(Ll8$a;Landroid/graphics/Canvas;F)V

    add-int/lit8 v5, v11, -0x1

    int-to-float v5, v5

    mul-float v5, v5, v12

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move/from16 v8, v16

    int-to-float v6, v8

    mul-float v6, v6, v12

    sub-float/2addr v6, v5

    const/4 v5, 0x0

    .line 44
    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v5, 0x0

    .line 45
    :goto_8
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_13

    move-object/from16 v14, v17

    .line 46
    invoke-virtual {v14, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 47
    invoke-virtual {v3}, Lm8;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lm8;->c()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v7, v13}, Ln8;->c(CLjava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 48
    iget-object v7, v0, Lga;->G:Lcom/airbnb/lottie/e;

    invoke-virtual {v7}, Lcom/airbnb/lottie/e;->c()Lf0;

    move-result-object v7

    invoke-virtual {v7, v6}, Lf0;->e(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln8;

    if-nez v6, :cond_c

    move-object/from16 v13, p2

    move-object/from16 v16, v10

    move/from16 v17, v11

    move/from16 v19, v12

    goto/16 :goto_e

    .line 49
    :cond_c
    iget-object v7, v0, Lga;->C:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 50
    iget-object v7, v0, Lga;->C:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    move-object/from16 v16, v10

    move/from16 v17, v11

    move/from16 v19, v12

    goto :goto_a

    .line 51
    :cond_d
    invoke-virtual {v6}, Ln8;->a()Ljava/util/List;

    move-result-object v7

    .line 52
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    .line 53
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v13}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v16, v10

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v13, :cond_e

    .line 54
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v7

    move-object/from16 v7, v17

    check-cast v7, Lu9;

    move/from16 v17, v11

    .line 55
    new-instance v11, Lc7;

    move/from16 v19, v12

    iget-object v12, v0, Lga;->F:Lcom/airbnb/lottie/g;

    invoke-direct {v11, v12, v0, v7}, Lc7;-><init>(Lcom/airbnb/lottie/g;Lz9;Lu9;)V

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move/from16 v11, v17

    move-object/from16 v7, v18

    move/from16 v12, v19

    goto :goto_9

    :cond_e
    move/from16 v17, v11

    move/from16 v19, v12

    .line 56
    iget-object v7, v0, Lga;->C:Ljava/util/Map;

    invoke-interface {v7, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v15

    :goto_a
    const/4 v10, 0x0

    .line 57
    :goto_b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_10

    .line 58
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc7;

    invoke-virtual {v11}, Lc7;->getPath()Landroid/graphics/Path;

    move-result-object v11

    .line 59
    iget-object v12, v0, Lga;->y:Landroid/graphics/RectF;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 60
    iget-object v12, v0, Lga;->z:Landroid/graphics/Matrix;

    move-object/from16 v13, p2

    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 61
    iget-object v12, v0, Lga;->z:Landroid/graphics/Matrix;

    iget v15, v2, Ll8;->g:F

    neg-float v15, v15

    invoke-static {}, Ldc;->c()F

    move-result v18

    mul-float v15, v15, v18

    move-object/from16 v18, v7

    const/4 v7, 0x0

    invoke-virtual {v12, v7, v15}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 62
    iget-object v7, v0, Lga;->z:Landroid/graphics/Matrix;

    invoke-virtual {v7, v4, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 63
    iget-object v7, v0, Lga;->z:Landroid/graphics/Matrix;

    invoke-virtual {v11, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 64
    iget-boolean v7, v2, Ll8;->k:Z

    if-eqz v7, :cond_f

    .line 65
    iget-object v7, v0, Lga;->A:Landroid/graphics/Paint;

    invoke-direct {v0, v11, v7, v1}, Lga;->w(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 66
    iget-object v7, v0, Lga;->B:Landroid/graphics/Paint;

    invoke-direct {v0, v11, v7, v1}, Lga;->w(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_c

    .line 67
    :cond_f
    iget-object v7, v0, Lga;->B:Landroid/graphics/Paint;

    invoke-direct {v0, v11, v7, v1}, Lga;->w(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 68
    iget-object v7, v0, Lga;->A:Landroid/graphics/Paint;

    invoke-direct {v0, v11, v7, v1}, Lga;->w(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, v18

    goto :goto_b

    :cond_10
    move-object/from16 v13, p2

    .line 69
    invoke-virtual {v6}, Ln8;->b()D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v6, v6, v4

    invoke-static {}, Ldc;->c()F

    move-result v7

    mul-float v7, v7, v6

    mul-float v7, v7, v9

    .line 70
    iget v6, v2, Ll8;->e:I

    int-to-float v6, v6

    const/high16 v10, 0x41200000    # 10.0f

    div-float/2addr v6, v10

    .line 71
    iget-object v10, v0, Lga;->O:Ls7;

    if-eqz v10, :cond_11

    .line 72
    invoke-virtual {v10}, Ls7;->g()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    goto :goto_d

    .line 73
    :cond_11
    iget-object v10, v0, Lga;->N:Ls7;

    if-eqz v10, :cond_12

    .line 74
    invoke-virtual {v10}, Ls7;->g()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    :goto_d
    add-float/2addr v6, v10

    :cond_12
    mul-float v6, v6, v9

    add-float/2addr v6, v7

    const/4 v7, 0x0

    .line 75
    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_e
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v10, v16

    move/from16 v11, v17

    move/from16 v12, v19

    move-object/from16 v17, v14

    goto/16 :goto_8

    :cond_13
    move-object/from16 v13, p2

    move-object/from16 v16, v10

    move/from16 v17, v11

    move/from16 v19, v12

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v5, v8, 0x1

    move v13, v5

    goto/16 :goto_5

    :cond_14
    move-object/from16 v13, p2

    .line 77
    invoke-static/range {p2 .. p2}, Ldc;->d(Landroid/graphics/Matrix;)F

    move-result v4

    .line 78
    iget-object v5, v0, Lga;->F:Lcom/airbnb/lottie/g;

    invoke-virtual {v3}, Lm8;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lm8;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lcom/airbnb/lottie/g;->r(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    if-nez v3, :cond_15

    goto/16 :goto_1a

    .line 79
    :cond_15
    iget-object v5, v2, Ll8;->a:Ljava/lang/String;

    .line 80
    iget-object v6, v0, Lga;->F:Lcom/airbnb/lottie/g;

    .line 81
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v6, v0, Lga;->A:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 83
    iget-object v3, v0, Lga;->P:Ls7;

    if-eqz v3, :cond_16

    .line 84
    invoke-virtual {v3}, Ls7;->g()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_f

    .line 85
    :cond_16
    iget v3, v2, Ll8;->c:F

    .line 86
    :goto_f
    iget-object v6, v0, Lga;->A:Landroid/graphics/Paint;

    invoke-static {}, Ldc;->c()F

    move-result v7

    mul-float v7, v7, v3

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 87
    iget-object v3, v0, Lga;->B:Landroid/graphics/Paint;

    iget-object v6, v0, Lga;->A:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 88
    iget-object v3, v0, Lga;->B:Landroid/graphics/Paint;

    iget-object v6, v0, Lga;->A:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 89
    iget v3, v2, Ll8;->f:F

    invoke-static {}, Ldc;->c()F

    move-result v6

    mul-float v6, v6, v3

    .line 90
    invoke-direct {v0, v5}, Lga;->x(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 91
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_10
    if-ge v7, v5, :cond_21

    .line 92
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 93
    iget-object v9, v0, Lga;->B:Landroid/graphics/Paint;

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    .line 94
    iget-object v10, v2, Ll8;->d:Ll8$a;

    invoke-direct {v0, v10, v1, v9}, Lga;->u(Ll8$a;Landroid/graphics/Canvas;F)V

    add-int/lit8 v9, v5, -0x1

    int-to-float v9, v9

    mul-float v9, v9, v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    int-to-float v11, v7

    mul-float v11, v11, v6

    sub-float/2addr v11, v9

    const/4 v9, 0x0

    .line 95
    invoke-virtual {v1, v9, v11}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v9, 0x0

    .line 96
    :goto_11
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v9, v11, :cond_20

    .line 97
    invoke-virtual {v8, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v11

    .line 98
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    add-int/2addr v12, v9

    .line 99
    :goto_12
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v12, v14, :cond_1a

    .line 100
    invoke-virtual {v8, v12}, Ljava/lang/String;->codePointAt(I)I

    move-result v14

    .line 101
    invoke-static {v14}, Ljava/lang/Character;->getType(I)I

    move-result v10

    const/16 v15, 0x10

    if-eq v10, v15, :cond_18

    .line 102
    invoke-static {v14}, Ljava/lang/Character;->getType(I)I

    move-result v10

    const/16 v15, 0x1b

    if-eq v10, v15, :cond_18

    .line 103
    invoke-static {v14}, Ljava/lang/Character;->getType(I)I

    move-result v10

    const/4 v15, 0x6

    if-eq v10, v15, :cond_18

    .line 104
    invoke-static {v14}, Ljava/lang/Character;->getType(I)I

    move-result v10

    const/16 v15, 0x1c

    if-eq v10, v15, :cond_18

    .line 105
    invoke-static {v14}, Ljava/lang/Character;->getType(I)I

    move-result v10

    const/16 v15, 0x13

    if-ne v10, v15, :cond_17

    goto :goto_13

    :cond_17
    const/4 v10, 0x0

    goto :goto_14

    :cond_18
    :goto_13
    const/4 v10, 0x1

    :goto_14
    if-nez v10, :cond_19

    goto :goto_15

    .line 106
    :cond_19
    invoke-static {v14}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int/2addr v12, v10

    mul-int/lit8 v11, v11, 0x1f

    add-int/2addr v11, v14

    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_12

    .line 107
    :cond_1a
    :goto_15
    iget-object v10, v0, Lga;->D:Lb0;

    int-to-long v14, v11

    invoke-virtual {v10, v14, v15}, Lb0;->d(J)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 108
    iget-object v10, v0, Lga;->D:Lb0;

    invoke-virtual {v10, v14, v15}, Lb0;->g(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v17, v3

    goto :goto_17

    .line 109
    :cond_1b
    iget-object v10, v0, Lga;->x:Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    move v10, v9

    :goto_16
    if-ge v10, v12, :cond_1c

    .line 110
    invoke-virtual {v8, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v11

    move-object/from16 v17, v3

    .line 111
    iget-object v3, v0, Lga;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 112
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v10, v3

    move-object/from16 v3, v17

    goto :goto_16

    :cond_1c
    move-object/from16 v17, v3

    .line 113
    iget-object v3, v0, Lga;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 114
    iget-object v3, v0, Lga;->D:Lb0;

    invoke-virtual {v3, v14, v15, v10}, Lb0;->k(JLjava/lang/Object;)V

    .line 115
    :goto_17
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v9, v3

    .line 116
    iget-boolean v3, v2, Ll8;->k:Z

    if-eqz v3, :cond_1d

    .line 117
    iget-object v3, v0, Lga;->A:Landroid/graphics/Paint;

    invoke-direct {v0, v10, v3, v1}, Lga;->v(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 118
    iget-object v3, v0, Lga;->B:Landroid/graphics/Paint;

    invoke-direct {v0, v10, v3, v1}, Lga;->v(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_18

    .line 119
    :cond_1d
    iget-object v3, v0, Lga;->B:Landroid/graphics/Paint;

    invoke-direct {v0, v10, v3, v1}, Lga;->v(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 120
    iget-object v3, v0, Lga;->A:Landroid/graphics/Paint;

    invoke-direct {v0, v10, v3, v1}, Lga;->v(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 121
    :goto_18
    iget-object v3, v0, Lga;->A:Landroid/graphics/Paint;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v3, v10, v12, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v3

    .line 122
    iget v10, v2, Ll8;->e:I

    int-to-float v10, v10

    const/high16 v11, 0x41200000    # 10.0f

    div-float/2addr v10, v11

    .line 123
    iget-object v14, v0, Lga;->O:Ls7;

    if-eqz v14, :cond_1e

    .line 124
    invoke-virtual {v14}, Ls7;->g()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    goto :goto_19

    .line 125
    :cond_1e
    iget-object v14, v0, Lga;->N:Ls7;

    if-eqz v14, :cond_1f

    .line 126
    invoke-virtual {v14}, Ls7;->g()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    :goto_19
    add-float/2addr v10, v14

    :cond_1f
    mul-float v10, v10, v4

    add-float/2addr v10, v3

    const/4 v3, 0x0

    .line 127
    invoke-virtual {v1, v10, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v3, v17

    const/high16 v10, 0x40000000    # 2.0f

    goto/16 :goto_11

    :cond_20
    move-object/from16 v17, v3

    const/4 v3, 0x0

    const/high16 v11, 0x41200000    # 10.0f

    const/4 v12, 0x0

    .line 128
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v17

    goto/16 :goto_10

    .line 129
    :cond_21
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
