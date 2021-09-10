.class public Lgp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private final o:I

.field private final p:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lgp;->a:F

    .line 3
    iput v0, p0, Lgp;->b:F

    .line 4
    iput v0, p0, Lgp;->c:F

    .line 5
    iput v0, p0, Lgp;->d:F

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lgp;->e:Z

    .line 7
    iput-boolean v0, p0, Lgp;->f:Z

    .line 8
    iput-boolean v0, p0, Lgp;->g:Z

    .line 9
    iput-boolean v0, p0, Lgp;->h:Z

    .line 10
    iput-boolean v0, p0, Lgp;->i:Z

    .line 11
    iput-boolean v0, p0, Lgp;->j:Z

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lgp;->k:Z

    .line 13
    iput-boolean v0, p0, Lgp;->l:Z

    .line 14
    iput-boolean v0, p0, Lgp;->m:Z

    .line 15
    iput-boolean v0, p0, Lgp;->n:Z

    .line 16
    iput p1, p0, Lgp;->o:I

    .line 17
    iput p2, p0, Lgp;->p:I

    .line 18
    invoke-virtual {p0}, Lgp;->d()V

    return-void
.end method


# virtual methods
.method public a(FFLandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 8

    .line 1
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 2
    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 3
    iget-boolean v4, p0, Lgp;->f:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    add-float v4, v0, p1

    .line 4
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v7, p0, Lgp;->o:I

    int-to-float v7, v7

    cmpg-float v4, v4, v7

    if-gez v4, :cond_0

    neg-float v0, v0

    .line 5
    iput v0, v2, Landroid/graphics/PointF;->x:F

    .line 6
    iput-boolean v5, p0, Lgp;->f:Z

    .line 7
    iput v3, p0, Lgp;->a:F

    .line 8
    iput-boolean v6, p0, Lgp;->k:Z

    goto :goto_0

    .line 9
    :cond_0
    iput-boolean v5, p0, Lgp;->k:Z

    goto :goto_0

    .line 10
    :cond_1
    iget v4, p0, Lgp;->a:F

    add-float/2addr v4, p1

    iput v4, p0, Lgp;->a:F

    add-float/2addr v0, p1

    .line 11
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lgp;->o:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 12
    iput-boolean v6, p0, Lgp;->f:Z

    .line 13
    :cond_2
    iget v0, p0, Lgp;->a:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lgp;->p:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    .line 14
    iput-boolean v5, p0, Lgp;->k:Z

    .line 15
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lgp;->e:Z

    if-nez v0, :cond_5

    add-float v0, v1, p2

    .line 16
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lgp;->o:I

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    neg-float v0, v1

    .line 17
    iput v0, v2, Landroid/graphics/PointF;->y:F

    .line 18
    iput-boolean v5, p0, Lgp;->e:Z

    .line 19
    iput v3, p0, Lgp;->b:F

    .line 20
    iput-boolean v6, p0, Lgp;->l:Z

    goto :goto_1

    .line 21
    :cond_4
    iput-boolean v5, p0, Lgp;->l:Z

    goto :goto_1

    .line 22
    :cond_5
    iget v0, p0, Lgp;->b:F

    add-float/2addr v0, p2

    iput v0, p0, Lgp;->b:F

    add-float/2addr v1, p2

    .line 23
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lgp;->o:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 24
    iput-boolean v6, p0, Lgp;->e:Z

    .line 25
    :cond_6
    iget v0, p0, Lgp;->b:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lgp;->p:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 26
    iput-boolean v5, p0, Lgp;->l:Z

    .line 27
    :cond_7
    :goto_1
    iget-boolean v0, p0, Lgp;->k:Z

    if-eqz v0, :cond_8

    .line 28
    iput p1, v2, Landroid/graphics/PointF;->x:F

    .line 29
    :cond_8
    iget-boolean v0, p0, Lgp;->l:Z

    if-eqz v0, :cond_9

    .line 30
    iput p2, v2, Landroid/graphics/PointF;->y:F

    .line 31
    :cond_9
    iget-boolean v0, p0, Lgp;->e:Z

    if-eqz v0, :cond_a

    .line 32
    iget-boolean v0, p0, Lgp;->f:Z

    if-nez v0, :cond_1c

    .line 33
    :cond_a
    iget-boolean v0, p0, Lgp;->f:Z

    if-nez v0, :cond_12

    .line 34
    iget v0, p4, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    .line 35
    iget-boolean v1, p0, Lgp;->g:Z

    if-nez v1, :cond_c

    add-float v1, v0, p1

    .line 36
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v4, p0, Lgp;->o:I

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_b

    neg-float v0, v0

    .line 37
    iput v0, v2, Landroid/graphics/PointF;->x:F

    .line 38
    iput-boolean v5, p0, Lgp;->g:Z

    .line 39
    iput v3, p0, Lgp;->c:F

    .line 40
    iput-boolean v6, p0, Lgp;->m:Z

    goto :goto_2

    .line 41
    :cond_b
    iget-boolean v0, p0, Lgp;->h:Z

    if-nez v0, :cond_e

    .line 42
    iput-boolean v5, p0, Lgp;->m:Z

    goto :goto_2

    .line 43
    :cond_c
    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 44
    iget v1, p0, Lgp;->c:F

    add-float/2addr v1, p1

    iput v1, p0, Lgp;->c:F

    add-float/2addr v0, p1

    .line 45
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lgp;->o:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    .line 46
    iput-boolean v6, p0, Lgp;->g:Z

    .line 47
    :cond_d
    iget v0, p0, Lgp;->c:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lgp;->p:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    .line 48
    iput-boolean v5, p0, Lgp;->m:Z

    .line 49
    :cond_e
    :goto_2
    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lgp;->g:Z

    if-nez v0, :cond_12

    .line 50
    iget v0, p4, Landroid/graphics/RectF;->right:F

    iget v1, p3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    .line 51
    iget-boolean v1, p0, Lgp;->h:Z

    if-nez v1, :cond_10

    add-float v1, v0, p2

    .line 52
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v4, p0, Lgp;->o:I

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_f

    neg-float v0, v0

    .line 53
    iput v0, v2, Landroid/graphics/PointF;->x:F

    .line 54
    iput-boolean v5, p0, Lgp;->h:Z

    .line 55
    iput v3, p0, Lgp;->c:F

    .line 56
    iput-boolean v6, p0, Lgp;->m:Z

    goto :goto_3

    .line 57
    :cond_f
    iput-boolean v5, p0, Lgp;->m:Z

    goto :goto_3

    .line 58
    :cond_10
    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 59
    iget v1, p0, Lgp;->c:F

    add-float/2addr v1, p1

    iput v1, p0, Lgp;->c:F

    add-float/2addr v0, p1

    .line 60
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lgp;->o:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_11

    .line 61
    iput-boolean v6, p0, Lgp;->h:Z

    .line 62
    :cond_11
    iget v0, p0, Lgp;->c:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lgp;->p:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_12

    .line 63
    iput-boolean v5, p0, Lgp;->m:Z

    .line 64
    :cond_12
    :goto_3
    iget-boolean v0, p0, Lgp;->e:Z

    if-nez v0, :cond_1a

    .line 65
    iget v0, p4, Landroid/graphics/RectF;->top:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    .line 66
    iget-boolean v1, p0, Lgp;->i:Z

    if-nez v1, :cond_14

    add-float v1, v0, p2

    .line 67
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v4, p0, Lgp;->o:I

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_13

    neg-float v0, v0

    .line 68
    iput v0, v2, Landroid/graphics/PointF;->y:F

    .line 69
    iput-boolean v5, p0, Lgp;->i:Z

    .line 70
    iput v3, p0, Lgp;->d:F

    .line 71
    iput-boolean v6, p0, Lgp;->n:Z

    goto :goto_4

    .line 72
    :cond_13
    iget-boolean v0, p0, Lgp;->j:Z

    if-nez v0, :cond_16

    .line 73
    iput-boolean v5, p0, Lgp;->n:Z

    goto :goto_4

    .line 74
    :cond_14
    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 75
    iget v1, p0, Lgp;->d:F

    add-float/2addr v1, p2

    iput v1, p0, Lgp;->d:F

    add-float/2addr v0, p2

    .line 76
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lgp;->o:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_15

    .line 77
    iput-boolean v6, p0, Lgp;->i:Z

    .line 78
    :cond_15
    iget v0, p0, Lgp;->d:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lgp;->p:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_16

    .line 79
    iput-boolean v5, p0, Lgp;->n:Z

    .line 80
    :cond_16
    :goto_4
    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lgp;->i:Z

    if-nez v0, :cond_1a

    .line 81
    iget p4, p4, Landroid/graphics/RectF;->bottom:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, p3

    .line 82
    iget-boolean p3, p0, Lgp;->j:Z

    if-nez p3, :cond_18

    if-nez v0, :cond_18

    add-float p3, p4, p2

    .line 83
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget v0, p0, Lgp;->o:I

    int-to-float v0, v0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_17

    neg-float p3, p4

    .line 84
    iput p3, v2, Landroid/graphics/PointF;->y:F

    .line 85
    iput-boolean v5, p0, Lgp;->j:Z

    .line 86
    iput v3, p0, Lgp;->d:F

    .line 87
    iput-boolean v6, p0, Lgp;->n:Z

    goto :goto_5

    .line 88
    :cond_17
    iput-boolean v5, p0, Lgp;->n:Z

    goto :goto_5

    .line 89
    :cond_18
    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 90
    iget p3, p0, Lgp;->d:F

    add-float/2addr p3, p2

    iput p3, p0, Lgp;->d:F

    add-float/2addr p4, p2

    .line 91
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget p4, p0, Lgp;->o:I

    int-to-float p4, p4

    cmpl-float p3, p3, p4

    if-lez p3, :cond_19

    .line 92
    iput-boolean v6, p0, Lgp;->j:Z

    .line 93
    :cond_19
    iget p3, p0, Lgp;->d:F

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget p4, p0, Lgp;->p:I

    int-to-float p4, p4

    cmpl-float p3, p3, p4

    if-lez p3, :cond_1a

    .line 94
    iput-boolean v5, p0, Lgp;->n:Z

    .line 95
    :cond_1a
    :goto_5
    iget-boolean p3, p0, Lgp;->m:Z

    if-eqz p3, :cond_1b

    .line 96
    iget-boolean p3, p0, Lgp;->f:Z

    if-nez p3, :cond_1b

    .line 97
    iput p1, v2, Landroid/graphics/PointF;->x:F

    .line 98
    :cond_1b
    iget-boolean p1, p0, Lgp;->n:Z

    if-eqz p1, :cond_1c

    .line 99
    iget-boolean p1, p0, Lgp;->e:Z

    if-nez p1, :cond_1c

    .line 100
    iput p2, v2, Landroid/graphics/PointF;->y:F

    :cond_1c
    return-object v2
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lgp;->k:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lgp;->l:Z

    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lgp;->l:Z

    .line 2
    iput-boolean v0, p0, Lgp;->l:Z

    .line 3
    iput-boolean v0, p0, Lgp;->m:Z

    .line 4
    iput-boolean v0, p0, Lgp;->n:Z

    .line 5
    iput-boolean v0, p0, Lgp;->e:Z

    .line 6
    iput-boolean v0, p0, Lgp;->f:Z

    .line 7
    iput-boolean v0, p0, Lgp;->g:Z

    .line 8
    iput-boolean v0, p0, Lgp;->h:Z

    .line 9
    iput-boolean v0, p0, Lgp;->i:Z

    .line 10
    iput-boolean v0, p0, Lgp;->j:Z

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lgp;->a:F

    .line 12
    iput v0, p0, Lgp;->b:F

    .line 13
    iput v0, p0, Lgp;->c:F

    .line 14
    iput v0, p0, Lgp;->d:F

    return-void
.end method
