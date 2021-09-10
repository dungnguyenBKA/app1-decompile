.class public abstract Lz9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld7;
.implements Ls7$b;
.implements Lp8;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Matrix;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/RectF;

.field private final i:Landroid/graphics/RectF;

.field private final j:Landroid/graphics/RectF;

.field private final k:Landroid/graphics/RectF;

.field private final l:Ljava/lang/String;

.field final m:Landroid/graphics/Matrix;

.field final n:Lcom/airbnb/lottie/g;

.field final o:Lca;

.field private p:Ly7;

.field private q:Lu7;

.field private r:Lz9;

.field private s:Lz9;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz9;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls7<",
            "**>;>;"
        }
    .end annotation
.end field

.field final v:Lg8;

.field private w:Z


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/g;Lca;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lz9;->a:Landroid/graphics/Path;

    .line 3
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lz9;->b:Landroid/graphics/Matrix;

    .line 4
    new-instance v0, Ly6;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ly6;-><init>(I)V

    iput-object v0, p0, Lz9;->c:Landroid/graphics/Paint;

    .line 5
    new-instance v0, Ly6;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Ly6;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lz9;->d:Landroid/graphics/Paint;

    .line 6
    new-instance v0, Ly6;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Ly6;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lz9;->e:Landroid/graphics/Paint;

    .line 7
    new-instance v0, Ly6;

    invoke-direct {v0, v1}, Ly6;-><init>(I)V

    iput-object v0, p0, Lz9;->f:Landroid/graphics/Paint;

    .line 8
    new-instance v2, Ly6;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Ly6;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lz9;->g:Landroid/graphics/Paint;

    .line 9
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lz9;->h:Landroid/graphics/RectF;

    .line 10
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lz9;->i:Landroid/graphics/RectF;

    .line 11
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lz9;->j:Landroid/graphics/RectF;

    .line 12
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lz9;->k:Landroid/graphics/RectF;

    .line 13
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lz9;->m:Landroid/graphics/Matrix;

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lz9;->u:Ljava/util/List;

    .line 15
    iput-boolean v1, p0, Lz9;->w:Z

    .line 16
    iput-object p1, p0, Lz9;->n:Lcom/airbnb/lottie/g;

    .line 17
    iput-object p2, p0, Lz9;->o:Lca;

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lca;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#draw"

    invoke-static {p1, v2, v3}, Lic;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lz9;->l:Ljava/lang/String;

    .line 19
    invoke-virtual {p2}, Lca;->f()Lca$b;

    move-result-object p1

    sget-object v2, Lca$b;->d:Lca$b;

    if-ne p1, v2, :cond_0

    .line 20
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 22
    :goto_0
    invoke-virtual {p2}, Lca;->u()Le9;

    move-result-object p1

    .line 23
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v0, Lg8;

    invoke-direct {v0, p1}, Lg8;-><init>(Le9;)V

    .line 25
    iput-object v0, p0, Lz9;->v:Lg8;

    .line 26
    invoke-virtual {v0, p0}, Lg8;->b(Ls7$b;)V

    .line 27
    invoke-virtual {p2}, Lca;->e()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lca;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 28
    new-instance p1, Ly7;

    invoke-virtual {p2}, Lca;->e()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ly7;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lz9;->p:Ly7;

    .line 29
    invoke-virtual {p1}, Ly7;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls7;

    .line 30
    invoke-virtual {p2, p0}, Ls7;->a(Ls7$b;)V

    goto :goto_1

    .line 31
    :cond_1
    iget-object p1, p0, Lz9;->p:Ly7;

    invoke-virtual {p1}, Ly7;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls7;

    .line 32
    invoke-virtual {p0, p2}, Lz9;->i(Ls7;)V

    .line 33
    invoke-virtual {p2, p0}, Ls7;->a(Ls7$b;)V

    goto :goto_2

    .line 34
    :cond_2
    iget-object p1, p0, Lz9;->o:Lca;

    invoke-virtual {p1}, Lca;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 35
    new-instance p1, Lu7;

    iget-object p2, p0, Lz9;->o:Lca;

    invoke-virtual {p2}, Lca;->c()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Lu7;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lz9;->q:Lu7;

    .line 36
    invoke-virtual {p1}, Ls7;->j()V

    .line 37
    iget-object p1, p0, Lz9;->q:Lu7;

    new-instance p2, Ly9;

    invoke-direct {p2, p0}, Ly9;-><init>(Lz9;)V

    invoke-virtual {p1, p2}, Ls7;->a(Ls7$b;)V

    .line 38
    iget-object p1, p0, Lz9;->q:Lu7;

    invoke-virtual {p1}, Ls7;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-direct {p0, v1}, Lz9;->t(Z)V

    .line 39
    iget-object p1, p0, Lz9;->q:Lu7;

    invoke-virtual {p0, p1}, Lz9;->i(Ls7;)V

    goto :goto_4

    .line 40
    :cond_4
    invoke-direct {p0, v1}, Lz9;->t(Z)V

    :goto_4
    return-void
.end method

.method static synthetic e(Lz9;)Lu7;
    .locals 0

    .line 1
    iget-object p0, p0, Lz9;->q:Lu7;

    return-object p0
.end method

.method static h(Lz9;Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lz9;->w:Z

    if-eq p1, v0, :cond_0

    .line 2
    iput-boolean p1, p0, Lz9;->w:Z

    .line 3
    iget-object p0, p0, Lz9;->n:Lcom/airbnb/lottie/g;

    invoke-virtual {p0}, Lcom/airbnb/lottie/g;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lz9;->t:Ljava/util/List;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lz9;->s:Lz9;

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lz9;->t:Ljava/util/List;

    return-void

    .line 4
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz9;->t:Ljava/util/List;

    .line 5
    iget-object v0, p0, Lz9;->s:Lz9;

    :goto_0
    if-eqz v0, :cond_2

    .line 6
    iget-object v1, p0, Lz9;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, v0, Lz9;->s:Lz9;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private k(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lz9;->h:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v4, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float v5, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float v6, v1, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v7, v0, v2

    iget-object v8, p0, Lz9;->g:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const-string p1, "Layer#clearLayer"

    .line 2
    invoke-static {p1}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    return-void
.end method

.method private t(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lz9;->w:Z

    if-eq p1, v0, :cond_0

    .line 2
    iput-boolean p1, p0, Lz9;->w:Z

    .line 3
    iget-object p1, p0, Lz9;->n:Lcom/airbnb/lottie/g;

    invoke-virtual {p1}, Lcom/airbnb/lottie/g;->invalidateSelf()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lz9;->n:Lcom/airbnb/lottie/g;

    invoke-virtual {v0}, Lcom/airbnb/lottie/g;->invalidateSelf()V

    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method public c(Lo8;ILjava/util/List;Lo8;)V
    .locals 2
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
    invoke-virtual {p0}, Lz9;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lo8;->f(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lz9;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__container"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lz9;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lo8;->a(Ljava/lang/String;)Lo8;

    move-result-object p4

    .line 4
    invoke-virtual {p0}, Lz9;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lo8;->c(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p4, p0}, Lo8;->h(Lp8;)Lo8;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    invoke-virtual {p0}, Lz9;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lo8;->g(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lz9;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lo8;->e(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, p2

    .line 8
    invoke-virtual {p0, p1, v0, p3, p4}, Lz9;->p(Lo8;ILjava/util/List;Lo8;)V

    :cond_2
    return-void
.end method

.method public d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lz9;->h:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2
    invoke-direct {p0}, Lz9;->j()V

    .line 3
    iget-object p1, p0, Lz9;->m:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz p3, :cond_1

    .line 4
    iget-object p1, p0, Lz9;->t:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 6
    iget-object p2, p0, Lz9;->m:Landroid/graphics/Matrix;

    iget-object p3, p0, Lz9;->t:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lz9;

    iget-object p3, p3, Lz9;->v:Lg8;

    invoke-virtual {p3}, Lg8;->f()Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lz9;->s:Lz9;

    if-eqz p1, :cond_1

    .line 8
    iget-object p2, p0, Lz9;->m:Landroid/graphics/Matrix;

    iget-object p1, p1, Lz9;->v:Lg8;

    invoke-virtual {p1}, Lg8;->f()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 9
    :cond_1
    iget-object p1, p0, Lz9;->m:Landroid/graphics/Matrix;

    iget-object p2, p0, Lz9;->v:Lg8;

    invoke-virtual {p2}, Lg8;->f()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-boolean v3, v0, Lz9;->w:Z

    if-eqz v3, :cond_1f

    iget-object v3, v0, Lz9;->o:Lca;

    invoke-virtual {v3}, Lca;->v()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_d

    .line 2
    :cond_0
    invoke-direct/range {p0 .. p0}, Lz9;->j()V

    .line 3
    iget-object v3, v0, Lz9;->b:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 4
    iget-object v3, v0, Lz9;->b:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 5
    iget-object v3, v0, Lz9;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_1

    .line 6
    iget-object v5, v0, Lz9;->b:Landroid/graphics/Matrix;

    iget-object v6, v0, Lz9;->t:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lz9;

    iget-object v6, v6, Lz9;->v:Lg8;

    invoke-virtual {v6}, Lg8;->f()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    const-string v3, "Layer#parentMatrix"

    .line 7
    invoke-static {v3}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    .line 8
    iget-object v3, v0, Lz9;->v:Lg8;

    invoke-virtual {v3}, Lg8;->h()Ls7;

    move-result-object v3

    if-nez v3, :cond_2

    const/16 v3, 0x64

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lz9;->v:Lg8;

    invoke-virtual {v3}, Lg8;->h()Ls7;

    move-result-object v3

    invoke-virtual {v3}, Ls7;->g()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_1
    move/from16 v5, p3

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    int-to-float v3, v3

    mul-float v5, v5, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v5, v3

    mul-float v5, v5, v6

    float-to-int v3, v5

    .line 9
    invoke-virtual/range {p0 .. p0}, Lz9;->n()Z

    move-result v5

    const-string v6, "Layer#drawLayer"

    const/4 v7, 0x0

    if-nez v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Lz9;->m()Z

    move-result v5

    if-nez v5, :cond_3

    .line 10
    iget-object v2, v0, Lz9;->b:Landroid/graphics/Matrix;

    iget-object v4, v0, Lz9;->v:Lg8;

    invoke-virtual {v4}, Lg8;->f()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 11
    iget-object v2, v0, Lz9;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2, v3}, Lz9;->l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 12
    invoke-static {v6}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    .line 13
    iget-object v1, v0, Lz9;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    .line 14
    iget-object v1, v0, Lz9;->n:Lcom/airbnb/lottie/g;

    invoke-virtual {v1}, Lcom/airbnb/lottie/g;->l()Lcom/airbnb/lottie/e;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/airbnb/lottie/e;->l()Lcom/airbnb/lottie/p;

    move-result-object v1

    iget-object v2, v0, Lz9;->o:Lca;

    invoke-virtual {v2}, Lca;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Lcom/airbnb/lottie/p;->a(Ljava/lang/String;F)V

    return-void

    .line 16
    :cond_3
    iget-object v5, v0, Lz9;->h:Landroid/graphics/RectF;

    iget-object v8, v0, Lz9;->b:Landroid/graphics/Matrix;

    const/4 v9, 0x0

    invoke-virtual {v0, v5, v8, v9}, Lz9;->d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 17
    iget-object v5, v0, Lz9;->h:Landroid/graphics/RectF;

    .line 18
    invoke-virtual/range {p0 .. p0}, Lz9;->n()Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_2

    .line 19
    :cond_4
    iget-object v8, v0, Lz9;->o:Lca;

    invoke-virtual {v8}, Lca;->f()Lca$b;

    move-result-object v8

    sget-object v10, Lca$b;->d:Lca$b;

    if-ne v8, v10, :cond_5

    goto :goto_2

    .line 20
    :cond_5
    iget-object v8, v0, Lz9;->j:Landroid/graphics/RectF;

    invoke-virtual {v8, v7, v7, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 21
    iget-object v8, v0, Lz9;->r:Lz9;

    iget-object v10, v0, Lz9;->j:Landroid/graphics/RectF;

    invoke-virtual {v8, v10, v2, v4}, Lz9;->d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 22
    iget-object v8, v0, Lz9;->j:Landroid/graphics/RectF;

    invoke-virtual {v5, v8}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 23
    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 24
    :cond_6
    :goto_2
    iget-object v5, v0, Lz9;->b:Landroid/graphics/Matrix;

    iget-object v8, v0, Lz9;->v:Lg8;

    invoke-virtual {v8}, Lg8;->f()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 25
    iget-object v5, v0, Lz9;->h:Landroid/graphics/RectF;

    iget-object v8, v0, Lz9;->b:Landroid/graphics/Matrix;

    .line 26
    iget-object v10, v0, Lz9;->i:Landroid/graphics/RectF;

    invoke-virtual {v10, v7, v7, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 27
    invoke-virtual/range {p0 .. p0}, Lz9;->m()Z

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x3

    if-nez v10, :cond_7

    goto/16 :goto_7

    .line 28
    :cond_7
    iget-object v10, v0, Lz9;->p:Ly7;

    invoke-virtual {v10}, Ly7;->b()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v10, :cond_b

    .line 29
    iget-object v14, v0, Lz9;->p:Ly7;

    invoke-virtual {v14}, Ly7;->b()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ln9;

    .line 30
    iget-object v15, v0, Lz9;->p:Ly7;

    invoke-virtual {v15}, Ly7;->a()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ls7;

    .line 31
    invoke-virtual {v15}, Ls7;->g()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Path;

    .line 32
    iget-object v7, v0, Lz9;->a:Landroid/graphics/Path;

    invoke-virtual {v7, v15}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 33
    iget-object v7, v0, Lz9;->a:Landroid/graphics/Path;

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 34
    invoke-virtual {v14}, Ln9;->a()Ln9$a;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_8

    if-eq v7, v4, :cond_c

    if-eq v7, v11, :cond_8

    if-eq v7, v12, :cond_c

    goto :goto_4

    .line 35
    :cond_8
    invoke-virtual {v14}, Ln9;->d()Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_6

    .line 36
    :cond_9
    :goto_4
    iget-object v7, v0, Lz9;->a:Landroid/graphics/Path;

    iget-object v14, v0, Lz9;->k:Landroid/graphics/RectF;

    invoke-virtual {v7, v14, v9}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    if-nez v13, :cond_a

    .line 37
    iget-object v7, v0, Lz9;->i:Landroid/graphics/RectF;

    iget-object v14, v0, Lz9;->k:Landroid/graphics/RectF;

    invoke-virtual {v7, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_5

    .line 38
    :cond_a
    iget-object v7, v0, Lz9;->i:Landroid/graphics/RectF;

    iget v14, v7, Landroid/graphics/RectF;->left:F

    iget-object v15, v0, Lz9;->k:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->left:F

    .line 39
    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    iget-object v15, v0, Lz9;->i:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->top:F

    iget-object v9, v0, Lz9;->k:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    .line 40
    invoke-static {v15, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iget-object v15, v0, Lz9;->i:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->right:F

    iget-object v12, v0, Lz9;->k:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    .line 41
    invoke-static {v15, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    iget-object v15, v0, Lz9;->i:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    iget-object v11, v0, Lz9;->k:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    .line 42
    invoke-static {v15, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 43
    invoke-virtual {v7, v14, v9, v12, v11}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_5
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x3

    goto/16 :goto_3

    .line 44
    :cond_b
    iget-object v7, v0, Lz9;->i:Landroid/graphics/RectF;

    invoke-virtual {v5, v7}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v7

    if-nez v7, :cond_c

    const/4 v7, 0x0

    .line 45
    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v7, 0x0

    .line 46
    :goto_7
    iget-object v5, v0, Lz9;->h:Landroid/graphics/RectF;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v5, v7, v7, v8, v9}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v5

    if-nez v5, :cond_d

    .line 47
    iget-object v5, v0, Lz9;->h:Landroid/graphics/RectF;

    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_d
    const-string v5, "Layer#computeBounds"

    .line 48
    invoke-static {v5}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    .line 49
    iget-object v5, v0, Lz9;->h:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 50
    iget-object v5, v0, Lz9;->c:Landroid/graphics/Paint;

    const/16 v7, 0xff

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 51
    iget-object v5, v0, Lz9;->h:Landroid/graphics/RectF;

    iget-object v8, v0, Lz9;->c:Landroid/graphics/Paint;

    const/16 v9, 0x1f

    .line 52
    invoke-static {v1, v5, v8, v9}, Ldc;->g(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    const-string v5, "Layer#saveLayer"

    .line 53
    invoke-static {v5}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    .line 54
    invoke-direct/range {p0 .. p1}, Lz9;->k(Landroid/graphics/Canvas;)V

    .line 55
    iget-object v8, v0, Lz9;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v8, v3}, Lz9;->l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 56
    invoke-static {v6}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    .line 57
    invoke-virtual/range {p0 .. p0}, Lz9;->m()Z

    move-result v6

    const/16 v8, 0x13

    const-string v10, "Layer#restoreLayer"

    if-eqz v6, :cond_1c

    .line 58
    iget-object v6, v0, Lz9;->b:Landroid/graphics/Matrix;

    .line 59
    iget-object v11, v0, Lz9;->h:Landroid/graphics/RectF;

    iget-object v12, v0, Lz9;->d:Landroid/graphics/Paint;

    invoke-static {v1, v11, v12, v8}, Ldc;->g(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 60
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1c

    if-ge v11, v12, :cond_e

    .line 61
    invoke-direct/range {p0 .. p1}, Lz9;->k(Landroid/graphics/Canvas;)V

    .line 62
    :cond_e
    invoke-static {v5}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    const/4 v11, 0x0

    .line 63
    :goto_8
    iget-object v12, v0, Lz9;->p:Ly7;

    invoke-virtual {v12}, Ly7;->b()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_1b

    .line 64
    iget-object v12, v0, Lz9;->p:Ly7;

    invoke-virtual {v12}, Ly7;->b()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ln9;

    .line 65
    iget-object v13, v0, Lz9;->p:Ly7;

    invoke-virtual {v13}, Ly7;->a()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ls7;

    .line 66
    iget-object v14, v0, Lz9;->p:Ly7;

    invoke-virtual {v14}, Ly7;->c()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ls7;

    .line 67
    invoke-virtual {v12}, Ln9;->a()Ln9$a;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    const v16, 0x40233333    # 2.55f

    if-eqz v15, :cond_18

    if-eq v15, v4, :cond_15

    const/4 v4, 0x2

    if-eq v15, v4, :cond_13

    const/4 v4, 0x3

    if-eq v15, v4, :cond_f

    goto/16 :goto_c

    .line 68
    :cond_f
    iget-object v12, v0, Lz9;->p:Ly7;

    invoke-virtual {v12}, Ly7;->a()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_10

    goto :goto_a

    :cond_10
    const/4 v12, 0x0

    .line 69
    :goto_9
    iget-object v13, v0, Lz9;->p:Ly7;

    invoke-virtual {v13}, Ly7;->b()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_12

    .line 70
    iget-object v13, v0, Lz9;->p:Ly7;

    invoke-virtual {v13}, Ly7;->b()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ln9;

    invoke-virtual {v13}, Ln9;->a()Ln9$a;

    move-result-object v13

    sget-object v14, Ln9$a;->e:Ln9$a;

    if-eq v13, v14, :cond_11

    :goto_a
    const/4 v12, 0x0

    goto :goto_b

    :cond_11
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_12
    const/4 v12, 0x1

    :goto_b
    if-eqz v12, :cond_1a

    .line 71
    iget-object v12, v0, Lz9;->c:Landroid/graphics/Paint;

    invoke-virtual {v12, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 72
    iget-object v12, v0, Lz9;->h:Landroid/graphics/RectF;

    iget-object v13, v0, Lz9;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_c

    :cond_13
    const/4 v4, 0x3

    .line 73
    invoke-virtual {v12}, Ln9;->d()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 74
    iget-object v12, v0, Lz9;->h:Landroid/graphics/RectF;

    iget-object v15, v0, Lz9;->d:Landroid/graphics/Paint;

    .line 75
    invoke-static {v1, v12, v15, v9}, Ldc;->g(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 76
    iget-object v12, v0, Lz9;->h:Landroid/graphics/RectF;

    iget-object v15, v0, Lz9;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v15}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 77
    iget-object v12, v0, Lz9;->e:Landroid/graphics/Paint;

    invoke-virtual {v14}, Ls7;->g()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-float v14, v14

    mul-float v14, v14, v16

    float-to-int v14, v14

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 78
    invoke-virtual {v13}, Ls7;->g()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Path;

    .line 79
    iget-object v13, v0, Lz9;->a:Landroid/graphics/Path;

    invoke-virtual {v13, v12}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 80
    iget-object v12, v0, Lz9;->a:Landroid/graphics/Path;

    invoke-virtual {v12, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 81
    iget-object v12, v0, Lz9;->a:Landroid/graphics/Path;

    iget-object v13, v0, Lz9;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 82
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_c

    .line 83
    :cond_14
    iget-object v12, v0, Lz9;->h:Landroid/graphics/RectF;

    iget-object v15, v0, Lz9;->d:Landroid/graphics/Paint;

    .line 84
    invoke-static {v1, v12, v15, v9}, Ldc;->g(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 85
    invoke-virtual {v13}, Ls7;->g()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Path;

    .line 86
    iget-object v13, v0, Lz9;->a:Landroid/graphics/Path;

    invoke-virtual {v13, v12}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 87
    iget-object v12, v0, Lz9;->a:Landroid/graphics/Path;

    invoke-virtual {v12, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 88
    iget-object v12, v0, Lz9;->c:Landroid/graphics/Paint;

    invoke-virtual {v14}, Ls7;->g()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-float v13, v13

    mul-float v13, v13, v16

    float-to-int v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 89
    iget-object v12, v0, Lz9;->a:Landroid/graphics/Path;

    iget-object v13, v0, Lz9;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 90
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_c

    :cond_15
    const/4 v4, 0x3

    if-nez v11, :cond_16

    .line 91
    iget-object v15, v0, Lz9;->c:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object v4, v0, Lz9;->c:Landroid/graphics/Paint;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 93
    iget-object v4, v0, Lz9;->h:Landroid/graphics/RectF;

    iget-object v15, v0, Lz9;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v15}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 94
    :cond_16
    invoke-virtual {v12}, Ln9;->d()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 95
    iget-object v4, v0, Lz9;->h:Landroid/graphics/RectF;

    iget-object v12, v0, Lz9;->e:Landroid/graphics/Paint;

    .line 96
    invoke-static {v1, v4, v12, v9}, Ldc;->g(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 97
    iget-object v4, v0, Lz9;->h:Landroid/graphics/RectF;

    iget-object v12, v0, Lz9;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 98
    iget-object v4, v0, Lz9;->e:Landroid/graphics/Paint;

    invoke-virtual {v14}, Ls7;->g()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v16

    float-to-int v12, v12

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 99
    invoke-virtual {v13}, Ls7;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    .line 100
    iget-object v12, v0, Lz9;->a:Landroid/graphics/Path;

    invoke-virtual {v12, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 101
    iget-object v4, v0, Lz9;->a:Landroid/graphics/Path;

    invoke-virtual {v4, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 102
    iget-object v4, v0, Lz9;->a:Landroid/graphics/Path;

    iget-object v12, v0, Lz9;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 103
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_c

    .line 104
    :cond_17
    invoke-virtual {v13}, Ls7;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    .line 105
    iget-object v12, v0, Lz9;->a:Landroid/graphics/Path;

    invoke-virtual {v12, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 106
    iget-object v4, v0, Lz9;->a:Landroid/graphics/Path;

    invoke-virtual {v4, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 107
    iget-object v4, v0, Lz9;->a:Landroid/graphics/Path;

    iget-object v12, v0, Lz9;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_c

    .line 108
    :cond_18
    invoke-virtual {v12}, Ln9;->d()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 109
    iget-object v4, v0, Lz9;->h:Landroid/graphics/RectF;

    iget-object v12, v0, Lz9;->c:Landroid/graphics/Paint;

    .line 110
    invoke-static {v1, v4, v12, v9}, Ldc;->g(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 111
    iget-object v4, v0, Lz9;->h:Landroid/graphics/RectF;

    iget-object v12, v0, Lz9;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 112
    invoke-virtual {v13}, Ls7;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    .line 113
    iget-object v12, v0, Lz9;->a:Landroid/graphics/Path;

    invoke-virtual {v12, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 114
    iget-object v4, v0, Lz9;->a:Landroid/graphics/Path;

    invoke-virtual {v4, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 115
    iget-object v4, v0, Lz9;->c:Landroid/graphics/Paint;

    invoke-virtual {v14}, Ls7;->g()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v16

    float-to-int v12, v12

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 116
    iget-object v4, v0, Lz9;->a:Landroid/graphics/Path;

    iget-object v12, v0, Lz9;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_c

    .line 118
    :cond_19
    invoke-virtual {v13}, Ls7;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    .line 119
    iget-object v12, v0, Lz9;->a:Landroid/graphics/Path;

    invoke-virtual {v12, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 120
    iget-object v4, v0, Lz9;->a:Landroid/graphics/Path;

    invoke-virtual {v4, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 121
    iget-object v4, v0, Lz9;->c:Landroid/graphics/Paint;

    invoke-virtual {v14}, Ls7;->g()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v16

    float-to-int v12, v12

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 122
    iget-object v4, v0, Lz9;->a:Landroid/graphics/Path;

    iget-object v12, v0, Lz9;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1a
    :goto_c
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x1

    goto/16 :goto_8

    .line 123
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 124
    invoke-static {v10}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    .line 125
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lz9;->n()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 126
    iget-object v4, v0, Lz9;->h:Landroid/graphics/RectF;

    iget-object v6, v0, Lz9;->f:Landroid/graphics/Paint;

    invoke-static {v1, v4, v6, v8}, Ldc;->g(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 127
    invoke-static {v5}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    .line 128
    invoke-direct/range {p0 .. p1}, Lz9;->k(Landroid/graphics/Canvas;)V

    .line 129
    iget-object v4, v0, Lz9;->r:Lz9;

    invoke-virtual {v4, v1, v2, v3}, Lz9;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 131
    invoke-static {v10}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    const-string v2, "Layer#drawMatte"

    .line 132
    invoke-static {v2}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    .line 133
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 134
    invoke-static {v10}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    .line 135
    :cond_1e
    iget-object v1, v0, Lz9;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    .line 136
    iget-object v1, v0, Lz9;->n:Lcom/airbnb/lottie/g;

    invoke-virtual {v1}, Lcom/airbnb/lottie/g;->l()Lcom/airbnb/lottie/e;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lcom/airbnb/lottie/e;->l()Lcom/airbnb/lottie/p;

    move-result-object v1

    iget-object v2, v0, Lz9;->o:Lca;

    invoke-virtual {v2}, Lca;->g()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/lottie/p;->a(Ljava/lang/String;F)V

    return-void

    .line 138
    :cond_1f
    :goto_d
    iget-object v1, v0, Lz9;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

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

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lz9;->o:Lca;

    invoke-virtual {v0}, Lca;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Ls7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls7<",
            "**>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lz9;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method abstract l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lz9;->p:Ly7;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ly7;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lz9;->r:Lz9;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o(Ls7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls7<",
            "**>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lz9;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method p(Lo8;ILjava/util/List;Lo8;)V
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

    return-void
.end method

.method q(Lz9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz9;->r:Lz9;

    return-void
.end method

.method r(Lz9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz9;->s:Lz9;

    return-void
.end method

.method s(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lz9;->v:Lg8;

    invoke-virtual {v0, p1}, Lg8;->j(F)V

    .line 2
    iget-object v0, p0, Lz9;->p:Ly7;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lz9;->p:Ly7;

    invoke-virtual {v2}, Ly7;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 4
    iget-object v2, p0, Lz9;->p:Ly7;

    invoke-virtual {v2}, Ly7;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls7;

    invoke-virtual {v2, p1}, Ls7;->k(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lz9;->o:Lca;

    invoke-virtual {v0}, Lca;->t()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lz9;->o:Lca;

    invoke-virtual {v0}, Lca;->t()F

    move-result v0

    div-float/2addr p1, v0

    .line 7
    :cond_1
    iget-object v0, p0, Lz9;->q:Lu7;

    if-eqz v0, :cond_2

    .line 8
    iget-object v2, p0, Lz9;->o:Lca;

    invoke-virtual {v2}, Lca;->t()F

    move-result v2

    div-float v2, p1, v2

    invoke-virtual {v0, v2}, Ls7;->k(F)V

    .line 9
    :cond_2
    iget-object v0, p0, Lz9;->r:Lz9;

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, v0, Lz9;->o:Lca;

    invoke-virtual {v0}, Lca;->t()F

    move-result v0

    .line 11
    iget-object v2, p0, Lz9;->r:Lz9;

    mul-float v0, v0, p1

    invoke-virtual {v2, v0}, Lz9;->s(F)V

    .line 12
    :cond_3
    :goto_1
    iget-object v0, p0, Lz9;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 13
    iget-object v0, p0, Lz9;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls7;

    invoke-virtual {v0, p1}, Ls7;->k(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method
