.class public abstract Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;
.super Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;
.source "SourceFile"


# instance fields
.field protected q:I

.field protected r:I

.field protected s:I

.field protected t:Landroid/graphics/RectF;

.field protected u:Landroid/graphics/PointF;

.field private v:Landroid/graphics/RectF;

.field protected w:Landroid/graphics/DrawFilter;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->t:Landroid/graphics/RectF;

    .line 3
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->u:Landroid/graphics/PointF;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->v:Landroid/graphics/RectF;

    .line 5
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->w:Landroid/graphics/DrawFilter;

    .line 6
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    const/high16 v1, 0x40a00000    # 5.0f

    .line 7
    invoke-static {v0, v1}, Lc2;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->q:I

    .line 8
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lc2;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->r:I

    .line 9
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lc2;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->s:I

    return-void
.end method


# virtual methods
.method public B(Landroid/graphics/RectF;)Z
    .locals 4

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->v:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->k()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->v:Landroid/graphics/RectF;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->v:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 5
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->e()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->u:Landroid/graphics/PointF;

    .line 6
    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->v:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->u:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->v:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->u:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->v:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->u:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->v:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->u:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->v:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->u:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->v:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v3

    sub-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_1

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->u:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->v:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->u:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->v:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v3

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public C()Landroid/graphics/PointF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->u:Landroid/graphics/PointF;

    return-object v0
.end method

.method public m()Landroid/graphics/RectF;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->t:Landroid/graphics/RectF;

    iget v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->h:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->t:Landroid/graphics/RectF;

    return-object v0
.end method
