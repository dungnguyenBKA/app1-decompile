.class Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field private a:Landroid/graphics/RectF;

.field private b:I

.field private c:Landroid/graphics/PointF;

.field final synthetic d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->b:I

    .line 3
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->c:Landroid/graphics/PointF;

    .line 4
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->a:Landroid/graphics/RectF;

    return-void
.end method

.method static a(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;->c:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x100

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v5, 0x1

    if-nez v1, :cond_5

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 4
    iget-object v7, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v7}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v8}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->o(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    cmpl-float v7, v6, v7

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v7}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v8}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->o(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    cmpg-float v7, v6, v7

    if-gez v7, :cond_1

    .line 5
    iget-object v7, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v7}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->left:F

    invoke-direct {p0, v1, v7}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->b(FF)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 6
    iget v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->b:I

    or-int/2addr v2, v5

    iput v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->b:I

    goto :goto_0

    .line 7
    :cond_0
    iget-object v5, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v5}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->right:F

    invoke-direct {p0, v1, v5}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->b(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    iget v5, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->b:I

    or-int/2addr v2, v5

    iput v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->b:I

    .line 9
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v5}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->o(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v5}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->o(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 10
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, v6, v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->b(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    iget v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->b:I

    or-int/2addr v1, v4

    iput v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->b:I

    goto :goto_1

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v6, v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->b(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    iget v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->b:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->b:I

    .line 14
    :cond_3
    :goto_1
    iget v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->b:I

    if-nez v1, :cond_4

    goto/16 :goto_26

    .line 15
    :cond_4
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1, v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->z(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;)Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;

    .line 16
    iget-object p0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->c:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_25

    .line 17
    :cond_5
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->y(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;

    move-result-object v1

    if-eq v1, v0, :cond_6

    goto/16 :goto_26

    .line 18
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_52

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_26

    .line 20
    :cond_7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0, v5}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->A(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;Z)Z

    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->c:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->c:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v1

    .line 23
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->a:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v6}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 24
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->B(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)F

    move-result v1

    const/4 v6, 0x0

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->b(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)F

    move-result v1

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_32

    .line 25
    iget v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, -0x1

    if-ne v1, v5, :cond_22

    .line 26
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->B(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)F

    move-result v1

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->b(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)F

    move-result v1

    cmpl-float v1, v1, v6

    if-nez v1, :cond_8

    goto/16 :goto_11

    .line 27
    :cond_8
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->c()I

    move-result v1

    .line 28
    iget-object v9, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v9}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->g(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Rect;

    move-result-object v9

    .line 29
    iget-object v10, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v10}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->d(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/PointF;

    move-result-object v10

    invoke-virtual {v10, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 30
    iget-object v10, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v10}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->n(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v10

    iget-object v11, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v11}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 31
    iget v10, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->b:I

    const/high16 v11, 0x40000000    # 2.0f

    if-eq v10, v5, :cond_14

    if-ne v10, v2, :cond_9

    goto/16 :goto_8

    :cond_9
    if-ne v10, v4, :cond_b

    mul-float p1, p1, v7

    cmpl-float v0, p1, v6

    if-lez v0, :cond_a

    .line 32
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v2, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    goto :goto_2

    .line 33
    :cond_a
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v2

    neg-int v2, v1

    int-to-float v2, v2

    invoke-direct {p0, v0, v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d(FF)F

    move-result v0

    goto :goto_3

    :cond_b
    cmpl-float v0, p1, v6

    if-lez v0, :cond_c

    .line 34
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    :goto_2
    sub-float/2addr v0, v2

    goto :goto_3

    .line 35
    :cond_c
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v2

    neg-int v2, v1

    int-to-float v2, v2

    invoke-direct {p0, v0, v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d(FF)F

    move-result v0

    :goto_3
    cmpl-float v2, p1, v6

    if-lez v2, :cond_d

    .line 36
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, v9, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 37
    iget v2, v9, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v9, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v9}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v9

    goto :goto_4

    .line 38
    :cond_d
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v9, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v9}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v9

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {p0, v2, v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d(FF)F

    move-result v1

    div-float/2addr v1, v11

    move v2, v1

    :goto_4
    add-float v9, v1, v2

    .line 39
    iget-object v10, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v10}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->B(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)F

    move-result v10

    div-float/2addr v9, v10

    iget-object v10, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v10}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->b(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)F

    move-result v10

    mul-float v9, v9, v10

    invoke-static {v9, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 40
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v0

    if-lez v9, :cond_f

    cmpl-float p1, p1, v6

    if-lez p1, :cond_e

    const/4 v8, 0x1

    :cond_e
    int-to-float p1, v8

    mul-float p1, p1, v0

    .line 41
    :cond_f
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v8, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v8}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->b(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)F

    move-result v8

    div-float/2addr v0, v8

    iget-object v8, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v8}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->B(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)F

    move-result v8

    mul-float v0, v0, v8

    div-float v8, v0, v11

    cmpg-float v9, v8, v1

    if-gtz v9, :cond_10

    cmpg-float v9, v8, v2

    if-gtz v9, :cond_10

    move v1, v8

    move v2, v1

    goto :goto_5

    :cond_10
    cmpg-float v8, v1, v2

    if-gez v8, :cond_11

    sub-float v2, v0, v1

    goto :goto_5

    :cond_11
    sub-float v1, v0, v2

    :goto_5
    cmpg-float v0, p1, v6

    if-gez v0, :cond_12

    mul-float v2, v2, v7

    goto :goto_6

    :cond_12
    mul-float v1, v1, v7

    .line 42
    :goto_6
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->b:I

    if-ne v0, v4, :cond_13

    mul-float p1, p1, v7

    .line 43
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->n(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v6, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, p1

    iput v6, v0, Landroid/graphics/RectF;->top:F

    goto :goto_7

    .line 44
    :cond_13
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->n(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, p1

    iput v6, v0, Landroid/graphics/RectF;->bottom:F

    .line 45
    :goto_7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->n(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v6, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v1

    iput v6, v0, Landroid/graphics/RectF;->left:F

    .line 46
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->n(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 47
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->j(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 48
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->j(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->k(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->n(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 49
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->f(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->k(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 50
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->n(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 51
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->d(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/PointF;

    move-result-object v0

    iput p1, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_f

    :cond_14
    :goto_8
    if-ne v10, v5, :cond_16

    mul-float v0, v0, v7

    cmpl-float p1, v0, v6

    if-ltz p1, :cond_15

    .line 52
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget v2, v9, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    goto :goto_9

    .line 53
    :cond_15
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v2

    neg-int v2, v1

    int-to-float v2, v2

    invoke-direct {p0, p1, v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d(FF)F

    move-result p1

    goto :goto_a

    :cond_16
    cmpl-float p1, v0, v6

    if-ltz p1, :cond_17

    .line 54
    iget p1, v9, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    :goto_9
    sub-float/2addr p1, v2

    goto :goto_a

    .line 55
    :cond_17
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v2

    neg-int v2, v1

    int-to-float v2, v2

    invoke-direct {p0, p1, v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d(FF)F

    move-result p1

    :goto_a
    cmpl-float v2, v0, v6

    if-lez v2, :cond_18

    .line 56
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 57
    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v9, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v9}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v9

    goto :goto_b

    .line 58
    :cond_18
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v9}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v9

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {p0, v2, v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d(FF)F

    move-result v1

    div-float/2addr v1, v11

    move v2, v1

    :goto_b
    add-float v9, v1, v2

    .line 59
    iget-object v10, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v10}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->b(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)F

    move-result v10

    div-float/2addr v9, v10

    iget-object v10, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v10}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->B(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)F

    move-result v10

    mul-float v9, v9, v10

    invoke-static {v9, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 60
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, p1

    if-lez v9, :cond_1a

    cmpl-float v0, v0, v6

    if-lez v0, :cond_19

    const/4 v8, 0x1

    :cond_19
    int-to-float v0, v8

    mul-float v0, v0, p1

    .line 61
    :cond_1a
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v8, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v8}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->B(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)F

    move-result v8

    div-float/2addr p1, v8

    iget-object v8, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v8}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->b(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)F

    move-result v8

    mul-float p1, p1, v8

    div-float v8, p1, v11

    cmpg-float v9, v8, v1

    if-gtz v9, :cond_1b

    cmpg-float v9, v8, v2

    if-gtz v9, :cond_1b

    move v1, v8

    move v2, v1

    goto :goto_c

    :cond_1b
    cmpg-float v8, v1, v2

    if-gez v8, :cond_1c

    sub-float v2, p1, v1

    goto :goto_c

    :cond_1c
    sub-float v1, p1, v2

    :goto_c
    cmpg-float p1, v0, v6

    if-gez p1, :cond_1d

    mul-float v2, v2, v7

    goto :goto_d

    :cond_1d
    mul-float v1, v1, v7

    .line 62
    :goto_d
    iget p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->b:I

    if-ne p1, v5, :cond_1e

    mul-float v0, v0, v7

    .line 63
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->n(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object p1

    iget v6, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v0

    iput v6, p1, Landroid/graphics/RectF;->left:F

    goto :goto_e

    .line 64
    :cond_1e
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->n(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object p1

    iget v6, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v0

    iput v6, p1, Landroid/graphics/RectF;->right:F

    .line 65
    :goto_e
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->n(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object p1

    iget v6, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v1

    iput v6, p1, Landroid/graphics/RectF;->top:F

    .line 66
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->n(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object p1

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 67
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Matrix;

    move-result-object p1

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->j(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 68
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->j(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Matrix;

    move-result-object p1

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->k(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->n(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 69
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->f(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->k(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 70
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->n(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 71
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->d(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/PointF;

    move-result-object p1

    iput v0, p1, Landroid/graphics/PointF;->x:F

    :goto_f
    const/4 p1, 0x1

    goto :goto_10

    :cond_1f
    const/4 p1, 0x0

    .line 72
    :goto_10
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->i(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$e;

    move-result-object v0

    if-eqz v0, :cond_20

    if-eqz p1, :cond_20

    .line 73
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->m(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)V

    .line 74
    :cond_20
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->d(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/PointF;

    move-result-object p1

    goto/16 :goto_20

    :cond_21
    :goto_11
    const/4 p1, 0x0

    goto/16 :goto_20

    .line 75
    :cond_22
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->n(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v9, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v9}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 76
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->c()I

    move-result v1

    .line 77
    iget-object v9, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v9}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->g(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Rect;

    move-result-object v9

    .line 78
    iget-object v10, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v10}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->d(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/PointF;

    move-result-object v10

    invoke-virtual {v10, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 79
    iget v10, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->b:I

    and-int/lit8 v11, v10, 0x10

    if-eqz v11, :cond_23

    mul-float p1, p1, v7

    :cond_23
    and-int/2addr v10, v5

    if-eqz v10, :cond_24

    mul-float v0, v0, v7

    .line 80
    :cond_24
    iget-object v10, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v10}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->B(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)F

    move-result v10

    iget-object v11, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v11}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->B(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)F

    move-result v11

    mul-float v10, v10, v11

    float-to-double v10, v10

    iget-object v12, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v12}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->b(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)F

    move-result v12

    iget-object v13, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v13}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->b(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)F

    move-result v13

    mul-float v12, v12, v13

    float-to-double v12, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    .line 81
    iget-object v11, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v11}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->B(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)F

    move-result v11

    div-float/2addr v11, v10

    .line 82
    iget-object v12, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v12}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->b(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)F

    move-result v12

    div-float/2addr v12, v10

    mul-float v0, v0, v11

    mul-float p1, p1, v12

    add-float/2addr p1, v0

    mul-float v11, v11, p1

    mul-float p1, p1, v12

    cmpg-float v0, v11, v6

    if-gtz v0, :cond_25

    .line 83
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v10, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v10}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v10

    neg-int v10, v1

    int-to-float v10, v10

    invoke-direct {p0, v0, v10}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d(FF)F

    move-result v0

    goto :goto_13

    .line 84
    :cond_25
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->b:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_26

    .line 85
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v10, v9, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    goto :goto_12

    .line 86
    :cond_26
    iget v0, v9, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget-object v10, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v10}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->right:F

    :goto_12
    sub-float/2addr v0, v10

    :goto_13
    cmpg-float v10, p1, v6

    if-gtz v10, :cond_27

    .line 87
    iget-object v9, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v9}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v10}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {p0, v9, v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d(FF)F

    move-result v1

    goto :goto_15

    .line 88
    :cond_27
    iget v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->b:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_28

    .line 89
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    goto :goto_14

    .line 90
    :cond_28
    iget v1, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v9, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v9}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    :goto_14
    sub-float/2addr v1, v9

    .line 91
    :goto_15
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v0

    if-lez v9, :cond_2a

    cmpl-float p1, v11, v6

    if-lez p1, :cond_29

    const/4 p1, 0x1

    goto :goto_16

    :cond_29
    const/4 p1, -0x1

    :goto_16
    int-to-float p1, p1

    mul-float v11, v0, p1

    .line 92
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->B(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)F

    move-result p1

    div-float p1, v11, p1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->b(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)F

    move-result v0

    mul-float p1, p1, v0

    .line 93
    :cond_2a
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2c

    cmpl-float p1, p1, v6

    if-lez p1, :cond_2b

    const/4 v8, 0x1

    :cond_2b
    int-to-float p1, v8

    mul-float p1, p1, v1

    .line 94
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->b(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)F

    move-result v0

    div-float v0, p1, v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->B(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)F

    move-result v1

    mul-float v11, v0, v1

    .line 95
    :cond_2c
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->b:I

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2d

    mul-float p1, p1, v7

    .line 96
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->n(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    goto :goto_17

    :cond_2d
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_2e

    .line 97
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->n(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 98
    :cond_2e
    :goto_17
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->b:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2f

    mul-float v11, v11, v7

    .line 99
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->n(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v11

    iput v1, v0, Landroid/graphics/RectF;->left:F

    goto :goto_18

    :cond_2f
    and-int/2addr v0, v2

    if-eqz v0, :cond_30

    .line 100
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->n(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v11

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 101
    :cond_30
    :goto_18
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->j(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 102
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->j(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->k(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->n(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 103
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->f(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->k(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 104
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->n(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 105
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->d(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/PointF;

    move-result-object v0

    iput v11, v0, Landroid/graphics/PointF;->x:F

    .line 106
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->d(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/PointF;

    move-result-object v0

    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 107
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->i(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$e;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 108
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->m(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)V

    .line 109
    :cond_31
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->d(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/PointF;

    move-result-object p1

    goto/16 :goto_20

    .line 110
    :cond_32
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->d(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 111
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v6, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v6}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->e(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v6

    iget-object v7, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v7}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->f(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 112
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->g(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Rect;

    move-result-object v1

    .line 113
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->c()I

    move-result v6

    .line 114
    iget v7, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->b:I

    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_36

    .line 115
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v7, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v7}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v7

    .line 116
    iget-object v7, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v7}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v8}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    neg-int v8, v6

    int-to-float v8, v8

    invoke-direct {p0, v7, v8}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d(FF)F

    move-result v7

    cmpg-float v8, v0, v2

    if-gez v8, :cond_33

    move v0, v2

    goto :goto_19

    :cond_33
    cmpl-float v2, v0, v7

    if-lez v2, :cond_34

    move v0, v7

    .line 117
    :cond_34
    :goto_19
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    iget-object v7, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v7}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->e(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v7

    if-gez v2, :cond_35

    .line 118
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->e(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    .line 119
    :cond_35
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v7, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v0

    iput v7, v2, Landroid/graphics/RectF;->left:F

    goto :goto_1b

    :cond_36
    and-int/2addr v2, v7

    if-eqz v2, :cond_3a

    .line 120
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v7, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v7}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v7

    .line 121
    iget-object v7, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v7}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v8, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v8}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v8

    int-to-float v8, v6

    invoke-direct {p0, v7, v8}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d(FF)F

    move-result v7

    cmpl-float v8, v0, v2

    if-lez v8, :cond_37

    move v0, v2

    goto :goto_1a

    :cond_37
    cmpg-float v2, v0, v7

    if-gez v2, :cond_38

    move v0, v7

    .line 122
    :cond_38
    :goto_1a
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v0

    iget-object v7, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v7}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->e(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_39

    .line 123
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->e(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    .line 124
    :cond_39
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v7, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v0

    iput v7, v2, Landroid/graphics/RectF;->right:F

    .line 125
    :cond_3a
    :goto_1b
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->b:I

    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_3e

    .line 126
    iget v0, v1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    .line 127
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    neg-int v2, v6

    int-to-float v2, v2

    invoke-direct {p0, v1, v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d(FF)F

    move-result v1

    cmpg-float v2, p1, v0

    if-gez v2, :cond_3b

    move p1, v0

    goto :goto_1c

    :cond_3b
    cmpl-float v0, p1, v1

    if-lez v0, :cond_3c

    move p1, v1

    .line 128
    :cond_3c
    :goto_1c
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p1

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->e(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3d

    .line 129
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->e(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v0

    .line 130
    :cond_3d
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    goto :goto_1e

    :cond_3e
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_42

    .line 131
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    .line 132
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    int-to-float v2, v6

    invoke-direct {p0, v1, v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d(FF)F

    move-result v1

    cmpl-float v2, p1, v0

    if-lez v2, :cond_3f

    move p1, v0

    goto :goto_1d

    :cond_3f
    cmpg-float v0, p1, v1

    if-gez v0, :cond_40

    move p1, v1

    .line 133
    :cond_40
    :goto_1d
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p1

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->e(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_41

    .line 134
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->e(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, v0

    .line 135
    :cond_41
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 136
    :cond_42
    :goto_1e
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->e(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result p1

    if-nez p1, :cond_43

    .line 137
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->e(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->h(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 138
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->e(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->h(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 139
    :cond_43
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->e(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 140
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->i(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$e;

    move-result-object p1

    if-eqz p1, :cond_45

    .line 141
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Matrix;

    move-result-object p1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->j(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 142
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->j(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Matrix;

    move-result-object p1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->k(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 143
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->m(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)V

    goto :goto_1f

    :cond_44
    const-string p1, "mDisplayRect = "

    .line 144
    invoke-static {p1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->e(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mCropArea = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CropEditorView"

    invoke-static {v0, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_45
    :goto_1f
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->d(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/PointF;

    move-result-object p1

    .line 146
    :goto_20
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->c:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 147
    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 148
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->a:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_46

    const/4 v3, 0x1

    .line 149
    :cond_46
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->a:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_47

    or-int/lit16 v3, v3, 0x100

    .line 150
    :cond_47
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->a:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_48

    or-int/lit8 v3, v3, 0x10

    .line 151
    :cond_48
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->a:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_49

    or-int/lit16 v3, v3, 0x1000

    .line 152
    :cond_49
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Matrix;

    move-result-object p1

    .line 153
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->f(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->j(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 155
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->j(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->k(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v6, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v6}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 156
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->k(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v1

    if-nez v1, :cond_51

    and-int/lit16 v1, v3, 0x1010

    if-nez v1, :cond_4a

    .line 157
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v6, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v6}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->k(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_4b

    :cond_4a
    and-int/lit16 v2, v3, 0x101

    if-nez v2, :cond_4c

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v6, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v6}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->k(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_4b

    goto :goto_21

    .line 158
    :cond_4b
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->k(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v3}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->d(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->q(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    .line 159
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->d(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->d(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_24

    .line 160
    :cond_4c
    :goto_21
    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v3}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->k(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-static {v3, v0, v6}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->p(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v0

    .line 161
    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    .line 162
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v6

    if-ne v3, v5, :cond_4e

    if-ne v2, v5, :cond_4d

    .line 163
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->k(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    goto :goto_22

    :cond_4d
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->k(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    goto :goto_22

    :cond_4e
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->k(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    :goto_22
    if-ne v6, v5, :cond_50

    if-ne v1, v4, :cond_4f

    .line 164
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->k(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_23

    :cond_4f
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->k(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    goto :goto_23

    :cond_50
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->k(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 165
    :goto_23
    invoke-virtual {p1, v0, v0, v2, v1}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 166
    :cond_51
    :goto_24
    iget-object p0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_25

    .line 167
    :cond_52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v5, :cond_53

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_54

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    if-nez p1, :cond_54

    .line 168
    :cond_53
    iput v3, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->b:I

    .line 169
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    sget-object v0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;->g:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;

    invoke-static {p1, v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->z(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;)Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;

    .line 170
    iget-object p0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->c(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)V

    :cond_54
    :goto_25
    const/4 v3, 0x1

    :goto_26
    return v3
.end method

.method private b(FF)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->o(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p2, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->o(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->r(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->d:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->s(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private d(FF)F
    .locals 1

    add-float/2addr p2, p1

    mul-float p1, p1, p2

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    return v0

    :cond_0
    return p2
.end method
