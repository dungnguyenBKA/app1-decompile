.class public Lip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final b:Landroid/view/View;

.field protected final c:F

.field protected final d:F

.field protected final e:J

.field private final f:Landroid/view/animation/Interpolator;

.field private g:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;

.field private h:F

.field private i:F


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->h()F

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->h()F

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->k()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->k()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v2, p0, Lip;->f:Landroid/view/animation/Interpolator;

    .line 4
    iput-object p1, p0, Lip;->b:Landroid/view/View;

    .line 5
    iput v0, p0, Lip;->c:F

    .line 6
    iput v1, p0, Lip;->d:F

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lip;->e:J

    .line 8
    iput-object p2, p0, Lip;->g:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;

    .line 9
    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->C()Landroid/graphics/PointF;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 10
    iget v0, p1, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lip;->h:F

    if-eqz p1, :cond_1

    .line 11
    iget p2, p1, Landroid/graphics/PointF;->y:F

    :cond_1
    iput p2, p0, Lip;->i:F

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lip;->g:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lip;->b:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lip;->e:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    const/16 v2, 0xc8

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 3
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 4
    iget-object v2, p0, Lip;->f:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 5
    iget-object v2, p0, Lip;->g:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->k()Landroid/graphics/RectF;

    move-result-object v2

    .line 6
    iget v3, p0, Lip;->h:F

    iget v4, p0, Lip;->c:F

    sub-float/2addr v3, v4

    mul-float v3, v3, v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget v5, p0, Lip;->c:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 7
    iget v4, p0, Lip;->i:F

    iget v5, p0, Lip;->d:F

    sub-float/2addr v4, v5

    mul-float v4, v4, v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v5, p0, Lip;->d:F

    sub-float/2addr v2, v5

    sub-float/2addr v4, v2

    .line 8
    iget-object v2, p0, Lip;->g:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;

    invoke-virtual {v2, v3, v4}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->w(FF)V

    .line 9
    iget-object v2, p0, Lip;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 10
    iget-object v0, p0, Lip;->b:Landroid/view/View;

    .line 11
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
