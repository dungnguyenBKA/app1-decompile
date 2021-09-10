.class public Lcom/google/android/material/chip/b;
.super Lmy;
.source "SourceFile"

# interfaces
.implements Landroidx/core/graphics/drawable/b;
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Lcom/google/android/material/internal/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/b$a;
    }
.end annotation


# static fields
.field private static final C0:[I

.field private static final D0:Landroid/graphics/drawable/ShapeDrawable;


# instance fields
.field private A:F

.field private A0:I

.field private B:Landroid/content/res/ColorStateList;

.field private B0:Z

.field private C:F

.field private D:Landroid/content/res/ColorStateList;

.field private E:Ljava/lang/CharSequence;

.field private F:Z

.field private G:Landroid/graphics/drawable/Drawable;

.field private H:Landroid/content/res/ColorStateList;

.field private I:F

.field private J:Z

.field private K:Z

.field private L:Landroid/graphics/drawable/Drawable;

.field private M:Landroid/graphics/drawable/Drawable;

.field private N:Landroid/content/res/ColorStateList;

.field private O:F

.field private P:Z

.field private Q:Z

.field private R:Landroid/graphics/drawable/Drawable;

.field private S:F

.field private T:F

.field private U:F

.field private V:F

.field private W:F

.field private X:F

.field private Y:F

.field private Z:F

.field private final a0:Landroid/content/Context;

.field private final b0:Landroid/graphics/Paint;

.field private final c0:Landroid/graphics/Paint$FontMetrics;

.field private final d0:Landroid/graphics/RectF;

.field private final e0:Landroid/graphics/PointF;

.field private final f0:Landroid/graphics/Path;

.field private final g0:Lcom/google/android/material/internal/g;

.field private h0:I

.field private i0:I

.field private j0:I

.field private k0:I

.field private l0:I

.field private m0:I

.field private n0:Z

.field private o0:I

.field private p0:I

.field private q0:Landroid/graphics/ColorFilter;

.field private r0:Landroid/graphics/PorterDuffColorFilter;

.field private s0:Landroid/content/res/ColorStateList;

.field private t0:Landroid/graphics/PorterDuff$Mode;

.field private u0:[I

.field private v0:Z

.field private w0:Landroid/content/res/ColorStateList;

.field private x:Landroid/content/res/ColorStateList;

.field private x0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/chip/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private y:Landroid/content/res/ColorStateList;

.field private y0:Landroid/text/TextUtils$TruncateAt;

.field private z:F

.field private z0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009e

    aput v2, v0, v1

    .line 1
    sput-object v0, Lcom/google/android/material/chip/b;->C0:[I

    .line 2
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    sput-object v0, Lcom/google/android/material/chip/b;->D0:Landroid/graphics/drawable/ShapeDrawable;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 1
    new-instance v0, Lgy;

    const/4 v1, 0x0

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lgy;-><init>(F)V

    invoke-static {p1, p2, p3, p4, v0}, Lqy;->c(Landroid/content/Context;Landroid/util/AttributeSet;IILiy;)Lqy$b;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Lqy$b;->m()Lqy;

    move-result-object p2

    invoke-direct {p0, p2}, Lmy;-><init>(Lqy;)V

    .line 3
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/material/chip/b;->b0:Landroid/graphics/Paint;

    .line 4
    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/b;->c0:Landroid/graphics/Paint$FontMetrics;

    .line 5
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/b;->d0:Landroid/graphics/RectF;

    .line 6
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/b;->e0:Landroid/graphics/PointF;

    .line 7
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/b;->f0:Landroid/graphics/Path;

    const/16 p2, 0xff

    .line 8
    iput p2, p0, Lcom/google/android/material/chip/b;->p0:I

    .line 9
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Lcom/google/android/material/chip/b;->t0:Landroid/graphics/PorterDuff$Mode;

    .line 10
    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 p4, 0x0

    invoke-direct {p2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/material/chip/b;->x0:Ljava/lang/ref/WeakReference;

    .line 11
    invoke-virtual {p0, p1}, Lmy;->A(Landroid/content/Context;)V

    .line 12
    iput-object p1, p0, Lcom/google/android/material/chip/b;->a0:Landroid/content/Context;

    .line 13
    new-instance p2, Lcom/google/android/material/internal/g;

    invoke-direct {p2, p0}, Lcom/google/android/material/internal/g;-><init>(Lcom/google/android/material/internal/g$b;)V

    iput-object p2, p0, Lcom/google/android/material/chip/b;->g0:Lcom/google/android/material/internal/g;

    const-string p4, ""

    .line 14
    iput-object p4, p0, Lcom/google/android/material/chip/b;->E:Ljava/lang/CharSequence;

    .line 15
    invoke-virtual {p2}, Lcom/google/android/material/internal/g;->d()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p2, Landroid/text/TextPaint;->density:F

    .line 16
    sget-object p1, Lcom/google/android/material/chip/b;->C0:[I

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/b;->w0([I)Z

    .line 18
    iput-boolean p3, p0, Lcom/google/android/material/chip/b;->z0:Z

    .line 19
    sget-boolean p1, Ldy;->a:Z

    if-eqz p1, :cond_0

    .line 20
    sget-object p1, Lcom/google/android/material/chip/b;->D0:Landroid/graphics/drawable/ShapeDrawable;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    :cond_0
    return-void
.end method

.method private G0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/b;->Q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/b;->R:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/chip/b;->n0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private H0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/b;->F:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/b;->G:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private I0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/b;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/b;->L:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private J0(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method private U(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->e(Landroid/graphics/drawable/Drawable;I)Z

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/b;->L:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/google/android/material/chip/b;->u0:[I

    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/b;->N:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/chip/b;->G:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_4

    iget-boolean p1, p0, Lcom/google/android/material/chip/b;->J:Z

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/google/android/material/chip/b;->H:Landroid/content/res/ColorStateList;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_4
    return-void
.end method

.method private V(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/chip/b;->H0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/chip/b;->G0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :cond_0
    iget v0, p0, Lcom/google/android/material/chip/b;->S:F

    iget v1, p0, Lcom/google/android/material/chip/b;->T:F

    add-float/2addr v0, v1

    .line 4
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 6
    iget v0, p0, Lcom/google/android/material/chip/b;->I:F

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 7
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 8
    iget v0, p0, Lcom/google/android/material/chip/b;->I:F

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 9
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    iget v0, p0, Lcom/google/android/material/chip/b;->I:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    sub-float/2addr p1, v1

    iput p1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v0

    .line 10
    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_2
    return-void
.end method

.method private X(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/chip/b;->I0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lcom/google/android/material/chip/b;->Z:F

    iget v1, p0, Lcom/google/android/material/chip/b;->Y:F

    add-float/2addr v0, v1

    .line 4
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 6
    iget v0, p0, Lcom/google/android/material/chip/b;->O:F

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 7
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 8
    iget v0, p0, Lcom/google/android/material/chip/b;->O:F

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 9
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    iget v0, p0, Lcom/google/android/material/chip/b;->O:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    sub-float/2addr p1, v1

    iput p1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v0

    .line 10
    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private Y(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/chip/b;->I0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lcom/google/android/material/chip/b;->Z:F

    iget v1, p0, Lcom/google/android/material/chip/b;->Y:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/b;->O:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/b;->X:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/b;->W:F

    add-float/2addr v0, v1

    .line 4
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    .line 6
    iput v1, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 7
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iput v2, p2, Landroid/graphics/RectF;->left:F

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 8
    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 9
    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 10
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method public static a0(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/b;
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/material/chip/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/chip/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/b;->a0:Landroid/content/Context;

    sget-object v3, Lcom/google/android/material/R$styleable;->g:[I

    const/4 p0, 0x0

    new-array v6, p0, [I

    move-object v2, p1

    move v4, p2

    move v5, p3

    .line 3
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/i;->f(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 p3, 0x23

    .line 4
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    iput-boolean p3, v0, Lcom/google/android/material/chip/b;->B0:Z

    .line 5
    iget-object p3, v0, Lcom/google/android/material/chip/b;->a0:Landroid/content/Context;

    const/16 v1, 0x16

    .line 6
    invoke-static {p3, p2, v1}, Lyx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 7
    iget-object v1, v0, Lcom/google/android/material/chip/b;->x:Landroid/content/res/ColorStateList;

    if-eq v1, p3, :cond_0

    .line 8
    iput-object p3, v0, Lcom/google/android/material/chip/b;->x:Landroid/content/res/ColorStateList;

    .line 9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/android/material/chip/b;->onStateChange([I)Z

    .line 10
    :cond_0
    iget-object p3, v0, Lcom/google/android/material/chip/b;->a0:Landroid/content/Context;

    const/16 v1, 0x9

    .line 11
    invoke-static {p3, p2, v1}, Lyx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 12
    iget-object v1, v0, Lcom/google/android/material/chip/b;->y:Landroid/content/res/ColorStateList;

    if-eq v1, p3, :cond_1

    .line 13
    iput-object p3, v0, Lcom/google/android/material/chip/b;->y:Landroid/content/res/ColorStateList;

    .line 14
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/android/material/chip/b;->onStateChange([I)Z

    :cond_1
    const/16 p3, 0x11

    const/4 v1, 0x0

    .line 15
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    .line 16
    iget v2, v0, Lcom/google/android/material/chip/b;->z:F

    cmpl-float v2, v2, p3

    if-eqz v2, :cond_2

    .line 17
    iput p3, v0, Lcom/google/android/material/chip/b;->z:F

    .line 18
    invoke-virtual {v0}, Lmy;->invalidateSelf()V

    .line 19
    invoke-virtual {v0}, Lcom/google/android/material/chip/b;->s0()V

    :cond_2
    const/16 p3, 0xa

    .line 20
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 21
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    .line 22
    iget v2, v0, Lcom/google/android/material/chip/b;->A:F

    cmpl-float v2, v2, p3

    if-eqz v2, :cond_3

    .line 23
    iput p3, v0, Lcom/google/android/material/chip/b;->A:F

    .line 24
    invoke-virtual {v0}, Lmy;->v()Lqy;

    move-result-object v2

    invoke-virtual {v2, p3}, Lqy;->o(F)Lqy;

    move-result-object p3

    invoke-virtual {v0, p3}, Lmy;->e(Lqy;)V

    .line 25
    :cond_3
    iget-object p3, v0, Lcom/google/android/material/chip/b;->a0:Landroid/content/Context;

    const/16 v2, 0x14

    .line 26
    invoke-static {p3, p2, v2}, Lyx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 27
    iget-object v2, v0, Lcom/google/android/material/chip/b;->B:Landroid/content/res/ColorStateList;

    if-eq v2, p3, :cond_5

    .line 28
    iput-object p3, v0, Lcom/google/android/material/chip/b;->B:Landroid/content/res/ColorStateList;

    .line 29
    iget-boolean v2, v0, Lcom/google/android/material/chip/b;->B0:Z

    if-eqz v2, :cond_4

    .line 30
    invoke-virtual {v0, p3}, Lmy;->P(Landroid/content/res/ColorStateList;)V

    .line 31
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/android/material/chip/b;->onStateChange([I)Z

    :cond_5
    const/16 p3, 0x15

    .line 32
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    .line 33
    iget v2, v0, Lcom/google/android/material/chip/b;->C:F

    cmpl-float v2, v2, p3

    if-eqz v2, :cond_7

    .line 34
    iput p3, v0, Lcom/google/android/material/chip/b;->C:F

    .line 35
    iget-object v2, v0, Lcom/google/android/material/chip/b;->b0:Landroid/graphics/Paint;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    iget-boolean v2, v0, Lcom/google/android/material/chip/b;->B0:Z

    if-eqz v2, :cond_6

    .line 37
    invoke-virtual {v0, p3}, Lmy;->Q(F)V

    .line 38
    :cond_6
    invoke-virtual {v0}, Lmy;->invalidateSelf()V

    .line 39
    :cond_7
    iget-object p3, v0, Lcom/google/android/material/chip/b;->a0:Landroid/content/Context;

    const/16 v2, 0x22

    invoke-static {p3, p2, v2}, Lyx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 40
    iget-object v2, v0, Lcom/google/android/material/chip/b;->D:Landroid/content/res/ColorStateList;

    const/4 v3, 0x0

    if-eq v2, p3, :cond_9

    .line 41
    iput-object p3, v0, Lcom/google/android/material/chip/b;->D:Landroid/content/res/ColorStateList;

    .line 42
    iget-boolean v2, v0, Lcom/google/android/material/chip/b;->v0:Z

    if-eqz v2, :cond_8

    .line 43
    invoke-static {p3}, Ldy;->c(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p3

    goto :goto_0

    :cond_8
    move-object p3, v3

    :goto_0
    iput-object p3, v0, Lcom/google/android/material/chip/b;->w0:Landroid/content/res/ColorStateList;

    .line 44
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/android/material/chip/b;->onStateChange([I)Z

    :cond_9
    const/4 p3, 0x4

    .line 45
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/android/material/chip/b;->C0(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p3, v0, Lcom/google/android/material/chip/b;->a0:Landroid/content/Context;

    .line 47
    invoke-virtual {p2, p0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 48
    invoke-virtual {p2, p0, p0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_a

    .line 49
    new-instance v4, Lzx;

    invoke-direct {v4, p3, v2}, Lzx;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_a
    move-object v4, v3

    .line 50
    :goto_1
    iget-object p3, v0, Lcom/google/android/material/chip/b;->g0:Lcom/google/android/material/internal/g;

    iget-object v2, v0, Lcom/google/android/material/chip/b;->a0:Landroid/content/Context;

    invoke-virtual {p3, v4, v2}, Lcom/google/android/material/internal/g;->f(Lzx;Landroid/content/Context;)V

    const/4 p3, 0x2

    .line 51
    invoke-virtual {p2, p3, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v2, v5, :cond_d

    if-eq v2, p3, :cond_c

    if-eq v2, v4, :cond_b

    goto :goto_2

    .line 52
    :cond_b
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 53
    iput-object p3, v0, Lcom/google/android/material/chip/b;->y0:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    .line 54
    :cond_c
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 55
    iput-object p3, v0, Lcom/google/android/material/chip/b;->y0:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    .line 56
    :cond_d
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 57
    iput-object p3, v0, Lcom/google/android/material/chip/b;->y0:Landroid/text/TextUtils$TruncateAt;

    :goto_2
    const/16 p3, 0x10

    .line 58
    invoke-virtual {p2, p3, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {v0, p3}, Lcom/google/android/material/chip/b;->v0(Z)V

    const-string p3, "http://schemas.android.com/apk/res-auto"

    if-eqz p1, :cond_e

    const-string v2, "chipIconEnabled"

    .line 59
    invoke-interface {p1, p3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    const-string v2, "chipIconVisible"

    .line 60
    invoke-interface {p1, p3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    const/16 v2, 0xd

    .line 61
    invoke-virtual {p2, v2, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/b;->v0(Z)V

    .line 62
    :cond_e
    iget-object v2, v0, Lcom/google/android/material/chip/b;->a0:Landroid/content/Context;

    const/16 v6, 0xc

    invoke-static {v2, p2, v6}, Lyx;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 63
    iget-object v6, v0, Lcom/google/android/material/chip/b;->G:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_f

    invoke-static {v6}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_3

    :cond_f
    move-object v6, v3

    :goto_3
    if-eq v6, v2, :cond_12

    .line 64
    invoke-virtual {v0}, Lcom/google/android/material/chip/b;->W()F

    move-result v7

    if-eqz v2, :cond_10

    .line 65
    invoke-static {v2}, Landroidx/core/graphics/drawable/a;->j(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_4

    :cond_10
    move-object v2, v3

    :goto_4
    iput-object v2, v0, Lcom/google/android/material/chip/b;->G:Landroid/graphics/drawable/Drawable;

    .line 66
    invoke-virtual {v0}, Lcom/google/android/material/chip/b;->W()F

    move-result v2

    .line 67
    invoke-direct {v0, v6}, Lcom/google/android/material/chip/b;->J0(Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-direct {v0}, Lcom/google/android/material/chip/b;->H0()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 69
    iget-object v6, v0, Lcom/google/android/material/chip/b;->G:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v6}, Lcom/google/android/material/chip/b;->U(Landroid/graphics/drawable/Drawable;)V

    .line 70
    :cond_11
    invoke-virtual {v0}, Lmy;->invalidateSelf()V

    cmpl-float v2, v7, v2

    if-eqz v2, :cond_12

    .line 71
    invoke-virtual {v0}, Lcom/google/android/material/chip/b;->s0()V

    :cond_12
    const/16 v2, 0xf

    .line 72
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 73
    iget-object v6, v0, Lcom/google/android/material/chip/b;->a0:Landroid/content/Context;

    .line 74
    invoke-static {v6, p2, v2}, Lyx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 75
    iput-boolean v5, v0, Lcom/google/android/material/chip/b;->J:Z

    .line 76
    iget-object v5, v0, Lcom/google/android/material/chip/b;->H:Landroid/content/res/ColorStateList;

    if-eq v5, v2, :cond_14

    .line 77
    iput-object v2, v0, Lcom/google/android/material/chip/b;->H:Landroid/content/res/ColorStateList;

    .line 78
    invoke-direct {v0}, Lcom/google/android/material/chip/b;->H0()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 79
    iget-object v5, v0, Lcom/google/android/material/chip/b;->G:Landroid/graphics/drawable/Drawable;

    invoke-static {v5, v2}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 80
    :cond_13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/b;->onStateChange([I)Z

    :cond_14
    const/16 v2, 0xe

    .line 81
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 82
    iget v5, v0, Lcom/google/android/material/chip/b;->I:F

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_15

    .line 83
    invoke-virtual {v0}, Lcom/google/android/material/chip/b;->W()F

    move-result v5

    .line 84
    iput v2, v0, Lcom/google/android/material/chip/b;->I:F

    .line 85
    invoke-virtual {v0}, Lcom/google/android/material/chip/b;->W()F

    move-result v2

    .line 86
    invoke-virtual {v0}, Lmy;->invalidateSelf()V

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_15

    .line 87
    invoke-virtual {v0}, Lcom/google/android/material/chip/b;->s0()V

    :cond_15
    const/16 v2, 0x1d

    .line 88
    invoke-virtual {p2, v2, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/b;->x0(Z)V

    if-eqz p1, :cond_16

    const-string v2, "closeIconEnabled"

    .line 89
    invoke-interface {p1, p3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    const-string v2, "closeIconVisible"

    .line 90
    invoke-interface {p1, p3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_16

    const/16 v2, 0x18

    .line 91
    invoke-virtual {p2, v2, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/b;->x0(Z)V

    .line 92
    :cond_16
    iget-object v2, v0, Lcom/google/android/material/chip/b;->a0:Landroid/content/Context;

    const/16 v5, 0x17

    invoke-static {v2, p2, v5}, Lyx;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 93
    iget-object v5, v0, Lcom/google/android/material/chip/b;->L:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_17

    invoke-static {v5}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_5

    :cond_17
    move-object v5, v3

    :goto_5
    if-eq v5, v2, :cond_1b

    .line 94
    invoke-virtual {v0}, Lcom/google/android/material/chip/b;->Z()F

    move-result v6

    if-eqz v2, :cond_18

    .line 95
    invoke-static {v2}, Landroidx/core/graphics/drawable/a;->j(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_18
    iput-object v3, v0, Lcom/google/android/material/chip/b;->L:Landroid/graphics/drawable/Drawable;

    .line 96
    sget-boolean v2, Ldy;->a:Z

    if-eqz v2, :cond_19

    .line 97
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    .line 98
    iget-object v3, v0, Lcom/google/android/material/chip/b;->D:Landroid/content/res/ColorStateList;

    .line 99
    invoke-static {v3}, Ldy;->c(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v3

    iget-object v7, v0, Lcom/google/android/material/chip/b;->L:Landroid/graphics/drawable/Drawable;

    sget-object v8, Lcom/google/android/material/chip/b;->D0:Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2, v3, v7, v8}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v2, v0, Lcom/google/android/material/chip/b;->M:Landroid/graphics/drawable/Drawable;

    .line 100
    :cond_19
    invoke-virtual {v0}, Lcom/google/android/material/chip/b;->Z()F

    move-result v2

    .line 101
    invoke-direct {v0, v5}, Lcom/google/android/material/chip/b;->J0(Landroid/graphics/drawable/Drawable;)V

    .line 102
    invoke-direct {v0}, Lcom/google/android/material/chip/b;->I0()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 103
    iget-object v3, v0, Lcom/google/android/material/chip/b;->L:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v3}, Lcom/google/android/material/chip/b;->U(Landroid/graphics/drawable/Drawable;)V

    .line 104
    :cond_1a
    invoke-virtual {v0}, Lmy;->invalidateSelf()V

    cmpl-float v2, v6, v2

    if-eqz v2, :cond_1b

    .line 105
    invoke-virtual {v0}, Lcom/google/android/material/chip/b;->s0()V

    .line 106
    :cond_1b
    iget-object v2, v0, Lcom/google/android/material/chip/b;->a0:Landroid/content/Context;

    const/16 v3, 0x1c

    .line 107
    invoke-static {v2, p2, v3}, Lyx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 108
    iget-object v3, v0, Lcom/google/android/material/chip/b;->N:Landroid/content/res/ColorStateList;

    if-eq v3, v2, :cond_1d

    .line 109
    iput-object v2, v0, Lcom/google/android/material/chip/b;->N:Landroid/content/res/ColorStateList;

    .line 110
    invoke-direct {v0}, Lcom/google/android/material/chip/b;->I0()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 111
    iget-object v3, v0, Lcom/google/android/material/chip/b;->L:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, v2}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 112
    :cond_1c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/b;->onStateChange([I)Z

    :cond_1d
    const/16 v2, 0x1a

    .line 113
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 114
    iget v3, v0, Lcom/google/android/material/chip/b;->O:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_1e

    .line 115
    iput v2, v0, Lcom/google/android/material/chip/b;->O:F

    .line 116
    invoke-virtual {v0}, Lmy;->invalidateSelf()V

    .line 117
    invoke-direct {v0}, Lcom/google/android/material/chip/b;->I0()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 118
    invoke-virtual {v0}, Lcom/google/android/material/chip/b;->s0()V

    :cond_1e
    const/4 v2, 0x5

    .line 119
    invoke-virtual {p2, v2, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 120
    iget-boolean v3, v0, Lcom/google/android/material/chip/b;->P:Z

    if-eq v3, v2, :cond_20

    .line 121
    iput-boolean v2, v0, Lcom/google/android/material/chip/b;->P:Z

    .line 122
    invoke-virtual {v0}, Lcom/google/android/material/chip/b;->W()F

    move-result v3

    if-nez v2, :cond_1f

    .line 123
    iget-boolean v2, v0, Lcom/google/android/material/chip/b;->n0:Z

    if-eqz v2, :cond_1f

    .line 124
    iput-boolean p0, v0, Lcom/google/android/material/chip/b;->n0:Z

    .line 125
    :cond_1f
    invoke-virtual {v0}, Lcom/google/android/material/chip/b;->W()F

    move-result v2

    .line 126
    invoke-virtual {v0}, Lmy;->invalidateSelf()V

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_20

    .line 127
    invoke-virtual {v0}, Lcom/google/android/material/chip/b;->s0()V

    :cond_20
    const/16 v2, 0x8

    .line 128
    invoke-virtual {p2, v2, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/b;->u0(Z)V

    if-eqz p1, :cond_21

    const-string v2, "checkedIconEnabled"

    .line 129
    invoke-interface {p1, p3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21

    const-string v2, "checkedIconVisible"

    .line 130
    invoke-interface {p1, p3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_21

    const/4 p1, 0x7

    .line 131
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/b;->u0(Z)V

    .line 132
    :cond_21
    iget-object p0, v0, Lcom/google/android/material/chip/b;->a0:Landroid/content/Context;

    const/4 p1, 0x6

    invoke-static {p0, p2, p1}, Lyx;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 133
    iget-object p1, v0, Lcom/google/android/material/chip/b;->R:Landroid/graphics/drawable/Drawable;

    if-eq p1, p0, :cond_22

    .line 134
    invoke-virtual {v0}, Lcom/google/android/material/chip/b;->W()F

    move-result p1

    .line 135
    iput-object p0, v0, Lcom/google/android/material/chip/b;->R:Landroid/graphics/drawable/Drawable;

    .line 136
    invoke-virtual {v0}, Lcom/google/android/material/chip/b;->W()F

    move-result p0

    .line 137
    iget-object p3, v0, Lcom/google/android/material/chip/b;->R:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, p3}, Lcom/google/android/material/chip/b;->J0(Landroid/graphics/drawable/Drawable;)V

    .line 138
    iget-object p3, v0, Lcom/google/android/material/chip/b;->R:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, p3}, Lcom/google/android/material/chip/b;->U(Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-virtual {v0}, Lmy;->invalidateSelf()V

    cmpl-float p0, p1, p0

    if-eqz p0, :cond_22

    .line 140
    invoke-virtual {v0}, Lcom/google/android/material/chip/b;->s0()V

    .line 141
    :cond_22
    iget-object p0, v0, Lcom/google/android/material/chip/b;->a0:Landroid/content/Context;

    const/16 p1, 0x25

    invoke-static {p0, p2, p1}, Lpx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lpx;

    .line 142
    iget-object p0, v0, Lcom/google/android/material/chip/b;->a0:Landroid/content/Context;

    const/16 p1, 0x1f

    invoke-static {p0, p2, p1}, Lpx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lpx;

    const/16 p0, 0x13

    .line 143
    invoke-virtual {p2, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    .line 144
    iget p1, v0, Lcom/google/android/material/chip/b;->S:F

    cmpl-float p1, p1, p0

    if-eqz p1, :cond_23

    .line 145
    iput p0, v0, Lcom/google/android/material/chip/b;->S:F

    .line 146
    invoke-virtual {v0}, Lmy;->invalidateSelf()V

    .line 147
    invoke-virtual {v0}, Lcom/google/android/material/chip/b;->s0()V

    :cond_23
    const/16 p0, 0x21

    .line 148
    invoke-virtual {p2, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    .line 149
    iget p1, v0, Lcom/google/android/material/chip/b;->T:F

    cmpl-float p1, p1, p0

    if-eqz p1, :cond_24

    .line 150
    invoke-virtual {v0}, Lcom/google/android/material/chip/b;->W()F

    move-result p1

    .line 151
    iput p0, v0, Lcom/google/android/material/chip/b;->T:F

    .line 152
    invoke-virtual {v0}, Lcom/google/android/material/chip/b;->W()F

    move-result p0

    .line 153
    invoke-virtual {v0}, Lmy;->invalidateSelf()V

    cmpl-float p0, p1, p0

    if-eqz p0, :cond_24

    .line 154
    invoke-virtual {v0}, Lcom/google/android/material/chip/b;->s0()V

    :cond_24
    const/16 p0, 0x20

    .line 155
    invoke-virtual {p2, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    .line 156
    iget p1, v0, Lcom/google/android/material/chip/b;->U:F

    cmpl-float p1, p1, p0

    if-eqz p1, :cond_25

    .line 157
    invoke-virtual {v0}, Lcom/google/android/material/chip/b;->W()F

    move-result p1

    .line 158
    iput p0, v0, Lcom/google/android/material/chip/b;->U:F

    .line 159
    invoke-virtual {v0}, Lcom/google/android/material/chip/b;->W()F

    move-result p0

    .line 160
    invoke-virtual {v0}, Lmy;->invalidateSelf()V

    cmpl-float p0, p1, p0

    if-eqz p0, :cond_25

    .line 161
    invoke-virtual {v0}, Lcom/google/android/material/chip/b;->s0()V

    :cond_25
    const/16 p0, 0x27

    .line 162
    invoke-virtual {p2, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    .line 163
    iget p1, v0, Lcom/google/android/material/chip/b;->V:F

    cmpl-float p1, p1, p0

    if-eqz p1, :cond_26

    .line 164
    iput p0, v0, Lcom/google/android/material/chip/b;->V:F

    .line 165
    invoke-virtual {v0}, Lmy;->invalidateSelf()V

    .line 166
    invoke-virtual {v0}, Lcom/google/android/material/chip/b;->s0()V

    :cond_26
    const/16 p0, 0x26

    .line 167
    invoke-virtual {p2, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    .line 168
    iget p1, v0, Lcom/google/android/material/chip/b;->W:F

    cmpl-float p1, p1, p0

    if-eqz p1, :cond_27

    .line 169
    iput p0, v0, Lcom/google/android/material/chip/b;->W:F

    .line 170
    invoke-virtual {v0}, Lmy;->invalidateSelf()V

    .line 171
    invoke-virtual {v0}, Lcom/google/android/material/chip/b;->s0()V

    :cond_27
    const/16 p0, 0x1b

    .line 172
    invoke-virtual {p2, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    .line 173
    iget p1, v0, Lcom/google/android/material/chip/b;->X:F

    cmpl-float p1, p1, p0

    if-eqz p1, :cond_28

    .line 174
    iput p0, v0, Lcom/google/android/material/chip/b;->X:F

    .line 175
    invoke-virtual {v0}, Lmy;->invalidateSelf()V

    .line 176
    invoke-direct {v0}, Lcom/google/android/material/chip/b;->I0()Z

    move-result p0

    if-eqz p0, :cond_28

    .line 177
    invoke-virtual {v0}, Lcom/google/android/material/chip/b;->s0()V

    :cond_28
    const/16 p0, 0x19

    .line 178
    invoke-virtual {p2, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    .line 179
    iget p1, v0, Lcom/google/android/material/chip/b;->Y:F

    cmpl-float p1, p1, p0

    if-eqz p1, :cond_29

    .line 180
    iput p0, v0, Lcom/google/android/material/chip/b;->Y:F

    .line 181
    invoke-virtual {v0}, Lmy;->invalidateSelf()V

    .line 182
    invoke-direct {v0}, Lcom/google/android/material/chip/b;->I0()Z

    move-result p0

    if-eqz p0, :cond_29

    .line 183
    invoke-virtual {v0}, Lcom/google/android/material/chip/b;->s0()V

    :cond_29
    const/16 p0, 0xb

    .line 184
    invoke-virtual {p2, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    .line 185
    iget p1, v0, Lcom/google/android/material/chip/b;->Z:F

    cmpl-float p1, p1, p0

    if-eqz p1, :cond_2a

    .line 186
    iput p0, v0, Lcom/google/android/material/chip/b;->Z:F

    .line 187
    invoke-virtual {v0}, Lmy;->invalidateSelf()V

    .line 188
    invoke-virtual {v0}, Lcom/google/android/material/chip/b;->s0()V

    :cond_2a
    const p0, 0x7fffffff

    .line 189
    invoke-virtual {p2, v4, p0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p0

    .line 190
    iput p0, v0, Lcom/google/android/material/chip/b;->A0:I

    .line 191
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private static q0(Landroid/content/res/ColorStateList;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static r0(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private t0([I[I)Z
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lmy;->onStateChange([I)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/chip/b;->x:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v3, p0, Lcom/google/android/material/chip/b;->h0:I

    .line 3
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget v3, p0, Lcom/google/android/material/chip/b;->h0:I

    const/4 v4, 0x1

    if-eq v3, v1, :cond_1

    .line 5
    iput v1, p0, Lcom/google/android/material/chip/b;->h0:I

    const/4 v0, 0x1

    .line 6
    :cond_1
    iget-object v3, p0, Lcom/google/android/material/chip/b;->y:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    iget v5, p0, Lcom/google/android/material/chip/b;->i0:I

    .line 7
    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 8
    :goto_1
    iget v5, p0, Lcom/google/android/material/chip/b;->i0:I

    if-eq v5, v3, :cond_3

    .line 9
    iput v3, p0, Lcom/google/android/material/chip/b;->i0:I

    const/4 v0, 0x1

    .line 10
    :cond_3
    invoke-static {v3, v1}, Lk1;->b(II)I

    move-result v1

    .line 11
    iget v3, p0, Lcom/google/android/material/chip/b;->j0:I

    if-eq v3, v1, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 12
    :goto_2
    invoke-virtual {p0}, Lmy;->r()Landroid/content/res/ColorStateList;

    move-result-object v5

    if-nez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    or-int/2addr v3, v5

    if-eqz v3, :cond_6

    .line 13
    iput v1, p0, Lcom/google/android/material/chip/b;->j0:I

    .line 14
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmy;->F(Landroid/content/res/ColorStateList;)V

    const/4 v0, 0x1

    .line 15
    :cond_6
    iget-object v1, p0, Lcom/google/android/material/chip/b;->B:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_7

    iget v3, p0, Lcom/google/android/material/chip/b;->k0:I

    .line 16
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    .line 17
    :goto_4
    iget v3, p0, Lcom/google/android/material/chip/b;->k0:I

    if-eq v3, v1, :cond_8

    .line 18
    iput v1, p0, Lcom/google/android/material/chip/b;->k0:I

    const/4 v0, 0x1

    .line 19
    :cond_8
    iget-object v1, p0, Lcom/google/android/material/chip/b;->w0:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_9

    .line 20
    invoke-static {p1}, Ldy;->d([I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/material/chip/b;->w0:Landroid/content/res/ColorStateList;

    iget v3, p0, Lcom/google/android/material/chip/b;->l0:I

    .line 21
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    .line 22
    :goto_5
    iget v3, p0, Lcom/google/android/material/chip/b;->l0:I

    if-eq v3, v1, :cond_a

    .line 23
    iput v1, p0, Lcom/google/android/material/chip/b;->l0:I

    .line 24
    iget-boolean v1, p0, Lcom/google/android/material/chip/b;->v0:Z

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    .line 25
    :cond_a
    iget-object v1, p0, Lcom/google/android/material/chip/b;->g0:Lcom/google/android/material/internal/g;

    .line 26
    invoke-virtual {v1}, Lcom/google/android/material/internal/g;->c()Lzx;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/material/chip/b;->g0:Lcom/google/android/material/internal/g;

    .line 27
    invoke-virtual {v1}, Lcom/google/android/material/internal/g;->c()Lzx;

    move-result-object v1

    iget-object v1, v1, Lzx;->b:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/material/chip/b;->g0:Lcom/google/android/material/internal/g;

    .line 28
    invoke-virtual {v1}, Lcom/google/android/material/internal/g;->c()Lzx;

    move-result-object v1

    iget-object v1, v1, Lzx;->b:Landroid/content/res/ColorStateList;

    iget v3, p0, Lcom/google/android/material/chip/b;->m0:I

    .line 29
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 30
    :goto_6
    iget v3, p0, Lcom/google/android/material/chip/b;->m0:I

    if-eq v3, v1, :cond_c

    .line 31
    iput v1, p0, Lcom/google/android/material/chip/b;->m0:I

    const/4 v0, 0x1

    .line 32
    :cond_c
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    const v3, 0x10100a0

    if-nez v1, :cond_e

    :cond_d
    const/4 v1, 0x0

    goto :goto_8

    .line 33
    :cond_e
    array-length v5, v1

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v5, :cond_d

    aget v7, v1, v6

    if-ne v7, v3, :cond_f

    const/4 v1, 0x1

    goto :goto_8

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :goto_8
    if-eqz v1, :cond_10

    .line 34
    iget-boolean v1, p0, Lcom/google/android/material/chip/b;->P:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_9

    :cond_10
    const/4 v1, 0x0

    .line 35
    :goto_9
    iget-boolean v3, p0, Lcom/google/android/material/chip/b;->n0:Z

    if-eq v3, v1, :cond_12

    iget-object v3, p0, Lcom/google/android/material/chip/b;->R:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_12

    .line 36
    invoke-virtual {p0}, Lcom/google/android/material/chip/b;->W()F

    move-result v0

    .line 37
    iput-boolean v1, p0, Lcom/google/android/material/chip/b;->n0:Z

    .line 38
    invoke-virtual {p0}, Lcom/google/android/material/chip/b;->W()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_a

    :cond_11
    const/4 v0, 0x1

    :cond_12
    const/4 v1, 0x0

    .line 39
    :goto_a
    iget-object v3, p0, Lcom/google/android/material/chip/b;->s0:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_13

    iget v5, p0, Lcom/google/android/material/chip/b;->o0:I

    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_b

    :cond_13
    const/4 v3, 0x0

    .line 40
    :goto_b
    iget v5, p0, Lcom/google/android/material/chip/b;->o0:I

    if-eq v5, v3, :cond_14

    .line 41
    iput v3, p0, Lcom/google/android/material/chip/b;->o0:I

    .line 42
    iget-object v0, p0, Lcom/google/android/material/chip/b;->s0:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/google/android/material/chip/b;->t0:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v0, v3}, Landroidx/core/app/b;->N0(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/chip/b;->r0:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_c

    :cond_14
    move v4, v0

    .line 43
    :goto_c
    iget-object v0, p0, Lcom/google/android/material/chip/b;->G:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/b;->r0(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 44
    iget-object v0, p0, Lcom/google/android/material/chip/b;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v4, v0

    .line 45
    :cond_15
    iget-object v0, p0, Lcom/google/android/material/chip/b;->R:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/b;->r0(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 46
    iget-object v0, p0, Lcom/google/android/material/chip/b;->R:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v4, v0

    .line 47
    :cond_16
    iget-object v0, p0, Lcom/google/android/material/chip/b;->L:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/b;->r0(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 48
    array-length v0, p1

    array-length v3, p2

    add-int/2addr v0, v3

    new-array v0, v0, [I

    .line 49
    array-length v3, p1

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    array-length p1, p1

    array-length v3, p2

    invoke-static {p2, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iget-object p1, p0, Lcom/google/android/material/chip/b;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v4, p1

    .line 52
    :cond_17
    sget-boolean p1, Ldy;->a:Z

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/google/android/material/chip/b;->M:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/google/android/material/chip/b;->r0(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 53
    iget-object p1, p0, Lcom/google/android/material/chip/b;->M:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v4, p1

    :cond_18
    if-eqz v4, :cond_19

    .line 54
    invoke-virtual {p0}, Lmy;->invalidateSelf()V

    :cond_19
    if-eqz v1, :cond_1a

    .line 55
    invoke-virtual {p0}, Lcom/google/android/material/chip/b;->s0()V

    :cond_1a
    return v4
.end method


# virtual methods
.method public A0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/chip/b;->A0:I

    return-void
.end method

.method B0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/chip/b;->z0:Z

    return-void
.end method

.method public C0(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/b;->E:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iput-object p1, p0, Lcom/google/android/material/chip/b;->E:Ljava/lang/CharSequence;

    .line 3
    iget-object p1, p0, Lcom/google/android/material/chip/b;->g0:Lcom/google/android/material/internal/g;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/g;->g(Z)V

    .line 4
    invoke-virtual {p0}, Lmy;->invalidateSelf()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/chip/b;->s0()V

    :cond_1
    return-void
.end method

.method public D0(I)V
    .locals 2

    .line 1
    new-instance v0, Lzx;

    iget-object v1, p0, Lcom/google/android/material/chip/b;->a0:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lzx;-><init>(Landroid/content/Context;I)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/chip/b;->g0:Lcom/google/android/material/internal/g;

    iget-object v1, p0, Lcom/google/android/material/chip/b;->a0:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/internal/g;->f(Lzx;Landroid/content/Context;)V

    return-void
.end method

.method public E0(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/b;->v0:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/chip/b;->v0:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/material/chip/b;->D:Landroid/content/res/ColorStateList;

    .line 4
    invoke-static {p1}, Ldy;->c(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/chip/b;->w0:Landroid/content/res/ColorStateList;

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/b;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method F0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/b;->z0:Z

    return v0
.end method

.method W()F
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/chip/b;->H0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/chip/b;->G0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/material/chip/b;->T:F

    iget v1, p0, Lcom/google/android/material/chip/b;->I:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/b;->U:F

    add-float/2addr v0, v1

    return v0
.end method

.method Z()F
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/chip/b;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/android/material/chip/b;->X:F

    iget v1, p0, Lcom/google/android/material/chip/b;->O:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/b;->Y:F

    add-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/b;->s0()V

    .line 2
    invoke-virtual {p0}, Lmy;->invalidateSelf()V

    return-void
.end method

.method public b0()F
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/b;->B0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmy;->x()F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/material/chip/b;->A:F

    :goto_0
    return v0
.end method

.method public c0()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/b;->Z:F

    return v0
.end method

.method public d0()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/b;->z:F

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v8, p1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 2
    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 3
    iget v6, v0, Lcom/google/android/material/chip/b;->p0:I

    if-nez v6, :cond_0

    goto/16 :goto_a

    :cond_0
    const/16 v10, 0xff

    const/4 v11, 0x0

    if-ge v6, v10, :cond_2

    .line 4
    iget v1, v9, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget v1, v9, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    iget v1, v9, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    iget v1, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v1

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-le v1, v7, :cond_1

    move-object/from16 v1, p1

    .line 6
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    move-result v1

    goto :goto_0

    :cond_1
    const/16 v7, 0x1f

    move-object/from16 v1, p1

    .line 7
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v1

    :goto_0
    move v12, v1

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    .line 8
    :goto_1
    iget-boolean v1, v0, Lcom/google/android/material/chip/b;->B0:Z

    if-nez v1, :cond_3

    .line 9
    iget-object v1, v0, Lcom/google/android/material/chip/b;->b0:Landroid/graphics/Paint;

    iget v2, v0, Lcom/google/android/material/chip/b;->h0:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object v1, v0, Lcom/google/android/material/chip/b;->b0:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 11
    iget-object v1, v0, Lcom/google/android/material/chip/b;->d0:Landroid/graphics/RectF;

    invoke-virtual {v1, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 12
    iget-object v1, v0, Lcom/google/android/material/chip/b;->d0:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/chip/b;->b0()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/chip/b;->b0()F

    move-result v3

    iget-object v4, v0, Lcom/google/android/material/chip/b;->b0:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 13
    :cond_3
    iget-boolean v1, v0, Lcom/google/android/material/chip/b;->B0:Z

    if-nez v1, :cond_5

    .line 14
    iget-object v1, v0, Lcom/google/android/material/chip/b;->b0:Landroid/graphics/Paint;

    iget v2, v0, Lcom/google/android/material/chip/b;->i0:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    iget-object v1, v0, Lcom/google/android/material/chip/b;->b0:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 16
    iget-object v1, v0, Lcom/google/android/material/chip/b;->b0:Landroid/graphics/Paint;

    .line 17
    iget-object v2, v0, Lcom/google/android/material/chip/b;->q0:Landroid/graphics/ColorFilter;

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lcom/google/android/material/chip/b;->r0:Landroid/graphics/PorterDuffColorFilter;

    .line 18
    :goto_2
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 19
    iget-object v1, v0, Lcom/google/android/material/chip/b;->d0:Landroid/graphics/RectF;

    invoke-virtual {v1, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 20
    iget-object v1, v0, Lcom/google/android/material/chip/b;->d0:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/chip/b;->b0()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/chip/b;->b0()F

    move-result v3

    iget-object v4, v0, Lcom/google/android/material/chip/b;->b0:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 21
    :cond_5
    iget-boolean v1, v0, Lcom/google/android/material/chip/b;->B0:Z

    if-eqz v1, :cond_6

    .line 22
    invoke-super/range {p0 .. p1}, Lmy;->draw(Landroid/graphics/Canvas;)V

    .line 23
    :cond_6
    iget v1, v0, Lcom/google/android/material/chip/b;->C:F

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_9

    iget-boolean v1, v0, Lcom/google/android/material/chip/b;->B0:Z

    if-nez v1, :cond_9

    .line 24
    iget-object v1, v0, Lcom/google/android/material/chip/b;->b0:Landroid/graphics/Paint;

    iget v4, v0, Lcom/google/android/material/chip/b;->k0:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    iget-object v1, v0, Lcom/google/android/material/chip/b;->b0:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    iget-boolean v1, v0, Lcom/google/android/material/chip/b;->B0:Z

    if-nez v1, :cond_8

    .line 27
    iget-object v1, v0, Lcom/google/android/material/chip/b;->b0:Landroid/graphics/Paint;

    .line 28
    iget-object v4, v0, Lcom/google/android/material/chip/b;->q0:Landroid/graphics/ColorFilter;

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    iget-object v4, v0, Lcom/google/android/material/chip/b;->r0:Landroid/graphics/PorterDuffColorFilter;

    .line 29
    :goto_3
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 30
    :cond_8
    iget-object v1, v0, Lcom/google/android/material/chip/b;->d0:Landroid/graphics/RectF;

    iget v4, v9, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v0, Lcom/google/android/material/chip/b;->C:F

    div-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v6, v9, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    iget v7, v9, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v7, v5

    iget v13, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    sub-float/2addr v13, v5

    invoke-virtual {v1, v4, v6, v7, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 31
    iget v1, v0, Lcom/google/android/material/chip/b;->A:F

    iget v4, v0, Lcom/google/android/material/chip/b;->C:F

    div-float/2addr v4, v2

    sub-float/2addr v1, v4

    .line 32
    iget-object v4, v0, Lcom/google/android/material/chip/b;->d0:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/google/android/material/chip/b;->b0:Landroid/graphics/Paint;

    invoke-virtual {v8, v4, v1, v1, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 33
    :cond_9
    iget-object v1, v0, Lcom/google/android/material/chip/b;->b0:Landroid/graphics/Paint;

    iget v4, v0, Lcom/google/android/material/chip/b;->l0:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    iget-object v1, v0, Lcom/google/android/material/chip/b;->b0:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    iget-object v1, v0, Lcom/google/android/material/chip/b;->d0:Landroid/graphics/RectF;

    invoke-virtual {v1, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 36
    iget-boolean v1, v0, Lcom/google/android/material/chip/b;->B0:Z

    if-nez v1, :cond_a

    .line 37
    iget-object v1, v0, Lcom/google/android/material/chip/b;->d0:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/chip/b;->b0()F

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/material/chip/b;->b0()F

    move-result v5

    iget-object v6, v0, Lcom/google/android/material/chip/b;->b0:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 38
    :cond_a
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v4, v0, Lcom/google/android/material/chip/b;->f0:Landroid/graphics/Path;

    invoke-virtual {p0, v1, v4}, Lmy;->g(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 39
    iget-object v1, v0, Lcom/google/android/material/chip/b;->b0:Landroid/graphics/Paint;

    iget-object v4, v0, Lcom/google/android/material/chip/b;->f0:Landroid/graphics/Path;

    invoke-virtual {p0}, Lmy;->o()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {p0, v8, v1, v4, v5}, Lmy;->k(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V

    .line 40
    :goto_4
    invoke-direct {p0}, Lcom/google/android/material/chip/b;->H0()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 41
    iget-object v1, v0, Lcom/google/android/material/chip/b;->d0:Landroid/graphics/RectF;

    invoke-direct {p0, v9, v1}, Lcom/google/android/material/chip/b;->V(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 42
    iget-object v1, v0, Lcom/google/android/material/chip/b;->d0:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    .line 43
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 44
    invoke-virtual {v8, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 45
    iget-object v5, v0, Lcom/google/android/material/chip/b;->G:Landroid/graphics/drawable/Drawable;

    iget-object v6, v0, Lcom/google/android/material/chip/b;->d0:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, v0, Lcom/google/android/material/chip/b;->d0:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v11, v11, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 46
    iget-object v5, v0, Lcom/google/android/material/chip/b;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v4, v4

    neg-float v1, v1

    .line 47
    invoke-virtual {v8, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 48
    :cond_b
    invoke-direct {p0}, Lcom/google/android/material/chip/b;->G0()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 49
    iget-object v1, v0, Lcom/google/android/material/chip/b;->d0:Landroid/graphics/RectF;

    invoke-direct {p0, v9, v1}, Lcom/google/android/material/chip/b;->V(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 50
    iget-object v1, v0, Lcom/google/android/material/chip/b;->d0:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    .line 51
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 52
    invoke-virtual {v8, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 53
    iget-object v5, v0, Lcom/google/android/material/chip/b;->R:Landroid/graphics/drawable/Drawable;

    iget-object v6, v0, Lcom/google/android/material/chip/b;->d0:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, v0, Lcom/google/android/material/chip/b;->d0:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v11, v11, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 54
    iget-object v5, v0, Lcom/google/android/material/chip/b;->R:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v4, v4

    neg-float v1, v1

    .line 55
    invoke-virtual {v8, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 56
    :cond_c
    iget-boolean v1, v0, Lcom/google/android/material/chip/b;->z0:Z

    if-eqz v1, :cond_15

    .line 57
    iget-object v1, v0, Lcom/google/android/material/chip/b;->E:Ljava/lang/CharSequence;

    if-eqz v1, :cond_15

    .line 58
    iget-object v1, v0, Lcom/google/android/material/chip/b;->e0:Landroid/graphics/PointF;

    .line 59
    invoke-virtual {v1, v3, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 60
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 61
    iget-object v4, v0, Lcom/google/android/material/chip/b;->E:Ljava/lang/CharSequence;

    if-eqz v4, :cond_e

    .line 62
    iget v3, v0, Lcom/google/android/material/chip/b;->S:F

    invoke-virtual {p0}, Lcom/google/android/material/chip/b;->W()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, v0, Lcom/google/android/material/chip/b;->V:F

    add-float/2addr v3, v4

    .line 63
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;)I

    move-result v4

    if-nez v4, :cond_d

    .line 64
    iget v4, v9, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    iput v4, v1, Landroid/graphics/PointF;->x:F

    .line 65
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_5

    .line 66
    :cond_d
    iget v4, v9, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v3

    iput v4, v1, Landroid/graphics/PointF;->x:F

    .line 67
    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 68
    :goto_5
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    .line 69
    iget-object v5, v0, Lcom/google/android/material/chip/b;->g0:Lcom/google/android/material/internal/g;

    invoke-virtual {v5}, Lcom/google/android/material/internal/g;->d()Landroid/text/TextPaint;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/material/chip/b;->c0:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 70
    iget-object v5, v0, Lcom/google/android/material/chip/b;->c0:Landroid/graphics/Paint$FontMetrics;

    iget v6, v5, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v6, v5

    div-float/2addr v6, v2

    sub-float/2addr v4, v6

    .line 71
    iput v4, v1, Landroid/graphics/PointF;->y:F

    .line 72
    :cond_e
    iget-object v1, v0, Lcom/google/android/material/chip/b;->d0:Landroid/graphics/RectF;

    .line 73
    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 74
    iget-object v2, v0, Lcom/google/android/material/chip/b;->E:Ljava/lang/CharSequence;

    if-eqz v2, :cond_10

    .line 75
    iget v2, v0, Lcom/google/android/material/chip/b;->S:F

    invoke-virtual {p0}, Lcom/google/android/material/chip/b;->W()F

    move-result v4

    add-float/2addr v2, v4

    iget v4, v0, Lcom/google/android/material/chip/b;->V:F

    add-float/2addr v2, v4

    .line 76
    iget v4, v0, Lcom/google/android/material/chip/b;->Z:F

    invoke-virtual {p0}, Lcom/google/android/material/chip/b;->Z()F

    move-result v5

    add-float/2addr v4, v5

    iget v5, v0, Lcom/google/android/material/chip/b;->W:F

    add-float/2addr v4, v5

    .line 77
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;)I

    move-result v5

    if-nez v5, :cond_f

    .line 78
    iget v5, v9, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    iput v5, v1, Landroid/graphics/RectF;->left:F

    .line 79
    iget v2, v9, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->right:F

    goto :goto_6

    .line 80
    :cond_f
    iget v5, v9, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v5, v4

    iput v5, v1, Landroid/graphics/RectF;->left:F

    .line 81
    iget v4, v9, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v2

    iput v4, v1, Landroid/graphics/RectF;->right:F

    .line 82
    :goto_6
    iget v2, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 83
    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 84
    :cond_10
    iget-object v1, v0, Lcom/google/android/material/chip/b;->g0:Lcom/google/android/material/internal/g;

    invoke-virtual {v1}, Lcom/google/android/material/internal/g;->c()Lzx;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 85
    iget-object v1, v0, Lcom/google/android/material/chip/b;->g0:Lcom/google/android/material/internal/g;

    invoke-virtual {v1}, Lcom/google/android/material/internal/g;->d()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    iput-object v2, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 86
    iget-object v1, v0, Lcom/google/android/material/chip/b;->g0:Lcom/google/android/material/internal/g;

    iget-object v2, v0, Lcom/google/android/material/chip/b;->a0:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/g;->h(Landroid/content/Context;)V

    .line 87
    :cond_11
    iget-object v1, v0, Lcom/google/android/material/chip/b;->g0:Lcom/google/android/material/internal/g;

    invoke-virtual {v1}, Lcom/google/android/material/internal/g;->d()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 88
    iget-object v1, v0, Lcom/google/android/material/chip/b;->g0:Lcom/google/android/material/internal/g;

    .line 89
    iget-object v2, v0, Lcom/google/android/material/chip/b;->E:Ljava/lang/CharSequence;

    .line 90
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/g;->e(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, v0, Lcom/google/android/material/chip/b;->d0:Landroid/graphics/RectF;

    .line 91
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-le v1, v2, :cond_12

    const/4 v1, 0x1

    const/4 v13, 0x1

    goto :goto_7

    :cond_12
    const/4 v13, 0x0

    :goto_7
    if-eqz v13, :cond_13

    .line 92
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 93
    iget-object v2, v0, Lcom/google/android/material/chip/b;->d0:Landroid/graphics/RectF;

    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move v14, v1

    goto :goto_8

    :cond_13
    const/4 v14, 0x0

    .line 94
    :goto_8
    iget-object v1, v0, Lcom/google/android/material/chip/b;->E:Ljava/lang/CharSequence;

    if-eqz v13, :cond_14

    .line 95
    iget-object v2, v0, Lcom/google/android/material/chip/b;->y0:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_14

    .line 96
    iget-object v2, v0, Lcom/google/android/material/chip/b;->g0:Lcom/google/android/material/internal/g;

    .line 97
    invoke-virtual {v2}, Lcom/google/android/material/internal/g;->d()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/material/chip/b;->d0:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, v0, Lcom/google/android/material/chip/b;->y0:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_14
    move-object v2, v1

    const/4 v3, 0x0

    .line 98
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget-object v1, v0, Lcom/google/android/material/chip/b;->e0:Landroid/graphics/PointF;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lcom/google/android/material/chip/b;->g0:Lcom/google/android/material/internal/g;

    invoke-virtual {v1}, Lcom/google/android/material/internal/g;->d()Landroid/text/TextPaint;

    move-result-object v7

    move-object/from16 v1, p1

    .line 99
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    if-eqz v13, :cond_15

    .line 100
    invoke-virtual {v8, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 101
    :cond_15
    invoke-direct {p0}, Lcom/google/android/material/chip/b;->I0()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 102
    iget-object v1, v0, Lcom/google/android/material/chip/b;->d0:Landroid/graphics/RectF;

    invoke-direct {p0, v9, v1}, Lcom/google/android/material/chip/b;->X(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 103
    iget-object v1, v0, Lcom/google/android/material/chip/b;->d0:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 104
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 105
    invoke-virtual {v8, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 106
    iget-object v3, v0, Lcom/google/android/material/chip/b;->L:Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Lcom/google/android/material/chip/b;->d0:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, v0, Lcom/google/android/material/chip/b;->d0:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v11, v11, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 107
    sget-boolean v3, Ldy;->a:Z

    if-eqz v3, :cond_16

    .line 108
    iget-object v3, v0, Lcom/google/android/material/chip/b;->M:Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Lcom/google/android/material/chip/b;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 109
    iget-object v3, v0, Lcom/google/android/material/chip/b;->M:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 110
    iget-object v3, v0, Lcom/google/android/material/chip/b;->M:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_9

    .line 111
    :cond_16
    iget-object v3, v0, Lcom/google/android/material/chip/b;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_9
    neg-float v2, v2

    neg-float v1, v1

    .line 112
    invoke-virtual {v8, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 113
    :cond_17
    iget v1, v0, Lcom/google/android/material/chip/b;->p0:I

    if-ge v1, v10, :cond_18

    .line 114
    invoke-virtual {v8, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_18
    :goto_a
    return-void
.end method

.method public e0()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/b;->S:F

    return v0
.end method

.method public f0()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/b;->L:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public g0(Landroid/graphics/RectF;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/chip/b;->Y(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/b;->p0:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/b;->q0:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/b;->z:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/b;->S:F

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/chip/b;->W()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/b;->V:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/chip/b;->g0:Lcom/google/android/material/internal/g;

    .line 3
    iget-object v2, p0, Lcom/google/android/material/chip/b;->E:Ljava/lang/CharSequence;

    .line 4
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/g;->e(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v1, v0

    iget v0, p0, Lcom/google/android/material/chip/b;->W:F

    add-float/2addr v1, v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/chip/b;->Z()F

    move-result v0

    add-float/2addr v1, v0

    iget v0, p0, Lcom/google/android/material/chip/b;->Z:F

    add-float/2addr v1, v0

    .line 6
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 7
    iget v1, p0, Lcom/google/android/material/chip/b;->A0:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/b;->B0:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lmy;->getOutline(Landroid/graphics/Outline;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget v1, p0, Lcom/google/android/material/chip/b;->A:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/chip/b;->getIntrinsicWidth()I

    move-result v5

    .line 7
    iget v0, p0, Lcom/google/android/material/chip/b;->z:F

    float-to-int v6, v0

    .line 8
    iget v7, p0, Lcom/google/android/material/chip/b;->A:F

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 9
    :goto_0
    iget v0, p0, Lcom/google/android/material/chip/b;->p0:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 10
    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method

.method public h0()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/b;->y0:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public i0()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/b;->D:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/b;->x:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lcom/google/android/material/chip/b;->q0(Landroid/content/res/ColorStateList;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/chip/b;->y:Landroid/content/res/ColorStateList;

    .line 2
    invoke-static {v0}, Lcom/google/android/material/chip/b;->q0(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/chip/b;->B:Landroid/content/res/ColorStateList;

    .line 3
    invoke-static {v0}, Lcom/google/android/material/chip/b;->q0(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/material/chip/b;->v0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/b;->w0:Landroid/content/res/ColorStateList;

    .line 4
    invoke-static {v0}, Lcom/google/android/material/chip/b;->q0(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/b;->g0:Lcom/google/android/material/internal/g;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/internal/g;->c()Lzx;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v0, Lzx;->b:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 8
    iget-boolean v0, p0, Lcom/google/android/material/chip/b;->Q:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/b;->R:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/chip/b;->P:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/google/android/material/chip/b;->G:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-static {v0}, Lcom/google/android/material/chip/b;->r0(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/chip/b;->R:Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-static {v0}, Lcom/google/android/material/chip/b;->r0(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/chip/b;->s0:Landroid/content/res/ColorStateList;

    .line 12
    invoke-static {v0}, Lcom/google/android/material/chip/b;->q0(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public j0()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/b;->E:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public k0()Lzx;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/b;->g0:Lcom/google/android/material/internal/g;

    invoke-virtual {v0}, Lcom/google/android/material/internal/g;->c()Lzx;

    move-result-object v0

    return-object v0
.end method

.method public l0()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/b;->W:F

    return v0
.end method

.method public m0()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/b;->V:F

    return v0
.end method

.method public n0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/b;->P:Z

    return v0
.end method

.method public o0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/b;->L:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/b;->r0(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLayoutDirectionChanged(I)Z

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/chip/b;->H0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/material/chip/b;->G:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/a;->e(Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/b;->G0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/google/android/material/chip/b;->R:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/a;->e(Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/b;->I0()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/google/android/material/chip/b;->L:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/a;->e(Landroid/graphics/drawable/Drawable;I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lmy;->invalidateSelf()V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method protected onLevelChange(I)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/chip/b;->H0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/material/chip/b;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/b;->G0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/google/android/material/chip/b;->R:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/b;->I0()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/google/android/material/chip/b;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lmy;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method public onStateChange([I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/b;->B0:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lmy;->onStateChange([I)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/b;->u0:[I

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/b;->t0([I[I)Z

    move-result p1

    return p1
.end method

.method public p0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/b;->K:Z

    return v0
.end method

.method protected s0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/b;->x0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/b$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/material/chip/b$a;->a()V

    :cond_0
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/b;->p0:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/chip/b;->p0:I

    .line 3
    invoke-virtual {p0}, Lmy;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/b;->q0:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/chip/b;->q0:Landroid/graphics/ColorFilter;

    .line 3
    invoke-virtual {p0}, Lmy;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/b;->s0:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/chip/b;->s0:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/b;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/b;->t0:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/chip/b;->t0:Landroid/graphics/PorterDuff$Mode;

    .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/b;->s0:Landroid/content/res/ColorStateList;

    invoke-static {p0, v0, p1}, Landroidx/core/app/b;->N0(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/chip/b;->r0:Landroid/graphics/PorterDuffColorFilter;

    .line 4
    invoke-virtual {p0}, Lmy;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/chip/b;->H0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/material/chip/b;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/b;->G0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/google/android/material/chip/b;->R:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/b;->I0()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/google/android/material/chip/b;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lmy;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method public u0(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/b;->Q:Z

    if-eq v0, p1, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/chip/b;->G0()Z

    move-result v0

    .line 3
    iput-boolean p1, p0, Lcom/google/android/material/chip/b;->Q:Z

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/chip/b;->G0()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/google/android/material/chip/b;->R:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/b;->U(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/chip/b;->R:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/b;->J0(Landroid/graphics/drawable/Drawable;)V

    .line 7
    :goto_1
    invoke-virtual {p0}, Lmy;->invalidateSelf()V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/chip/b;->s0()V

    :cond_2
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public v0(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/b;->F:Z

    if-eq v0, p1, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/chip/b;->H0()Z

    move-result v0

    .line 3
    iput-boolean p1, p0, Lcom/google/android/material/chip/b;->F:Z

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/chip/b;->H0()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/google/android/material/chip/b;->G:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/b;->U(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/chip/b;->G:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/b;->J0(Landroid/graphics/drawable/Drawable;)V

    .line 7
    :goto_1
    invoke-virtual {p0}, Lmy;->invalidateSelf()V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/chip/b;->s0()V

    :cond_2
    return-void
.end method

.method public w0([I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/b;->u0:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/chip/b;->u0:[I

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/chip/b;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/chip/b;->t0([I[I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public x0(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/b;->K:Z

    if-eq v0, p1, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/chip/b;->I0()Z

    move-result v0

    .line 3
    iput-boolean p1, p0, Lcom/google/android/material/chip/b;->K:Z

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/chip/b;->I0()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/google/android/material/chip/b;->L:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/b;->U(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/chip/b;->L:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/b;->J0(Landroid/graphics/drawable/Drawable;)V

    .line 7
    :goto_1
    invoke-virtual {p0}, Lmy;->invalidateSelf()V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/chip/b;->s0()V

    :cond_2
    return-void
.end method

.method public y0(Lcom/google/android/material/chip/b$a;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/chip/b;->x0:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public z0(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/b;->y0:Landroid/text/TextUtils$TruncateAt;

    return-void
.end method
