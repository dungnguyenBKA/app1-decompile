.class public Landroidx/constraintlayout/widget/Constraints$LayoutParams;
.super Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/Constraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public l0:F

.field public m0:Z

.field public n0:F

.field public o0:F

.field public p0:F

.field public q0:F

.field public r0:F

.field public s0:F

.field public t0:F

.field public u0:F

.field public v0:F

.field public w0:F


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->l0:F

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->m0:Z

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->n0:F

    .line 5
    iput p2, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->o0:F

    .line 6
    iput p2, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->p0:F

    .line 7
    iput p2, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->q0:F

    .line 8
    iput p1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->r0:F

    .line 9
    iput p1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->s0:F

    .line 10
    iput p2, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->t0:F

    .line 11
    iput p2, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->u0:F

    .line 12
    iput p2, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->v0:F

    .line 13
    iput p2, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->w0:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 14
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->l0:F

    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->m0:Z

    const/4 v2, 0x0

    .line 17
    iput v2, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->n0:F

    .line 18
    iput v2, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->o0:F

    .line 19
    iput v2, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->p0:F

    .line 20
    iput v2, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->q0:F

    .line 21
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->r0:F

    .line 22
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->s0:F

    .line 23
    iput v2, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->t0:F

    .line 24
    iput v2, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->u0:F

    .line 25
    iput v2, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->v0:F

    .line 26
    iput v2, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->w0:F

    .line 27
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->c:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    :goto_0
    if-ge v1, p2, :cond_c

    .line 29
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_0

    .line 30
    iget v3, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->l0:F

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->l0:F

    goto/16 :goto_1

    :cond_0
    const/16 v3, 0x1a

    if-ne v0, v3, :cond_1

    .line 31
    iget v3, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->n0:F

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->n0:F

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->m0:Z

    goto/16 :goto_1

    :cond_1
    const/16 v3, 0x15

    if-ne v0, v3, :cond_2

    .line 33
    iget v3, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->p0:F

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->p0:F

    goto/16 :goto_1

    :cond_2
    const/16 v3, 0x16

    if-ne v0, v3, :cond_3

    .line 34
    iget v3, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->q0:F

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->q0:F

    goto :goto_1

    :cond_3
    const/16 v3, 0x14

    if-ne v0, v3, :cond_4

    .line 35
    iget v3, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->o0:F

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->o0:F

    goto :goto_1

    :cond_4
    const/16 v3, 0x12

    if-ne v0, v3, :cond_5

    .line 36
    iget v3, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->r0:F

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->r0:F

    goto :goto_1

    :cond_5
    const/16 v3, 0x13

    if-ne v0, v3, :cond_6

    .line 37
    iget v3, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->s0:F

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->s0:F

    goto :goto_1

    :cond_6
    const/16 v3, 0xe

    if-ne v0, v3, :cond_7

    .line 38
    iget v3, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->t0:F

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->t0:F

    goto :goto_1

    :cond_7
    const/16 v3, 0xf

    if-ne v0, v3, :cond_8

    .line 39
    iget v3, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->u0:F

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->u0:F

    goto :goto_1

    :cond_8
    const/16 v3, 0x10

    if-ne v0, v3, :cond_9

    .line 40
    iget v3, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->v0:F

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->v0:F

    goto :goto_1

    :cond_9
    const/16 v3, 0x11

    if-ne v0, v3, :cond_a

    .line 41
    iget v3, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->w0:F

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->w0:F

    goto :goto_1

    :cond_a
    const/16 v3, 0x19

    if-ne v0, v3, :cond_b

    .line 42
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->v0:F

    :cond_b
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method
