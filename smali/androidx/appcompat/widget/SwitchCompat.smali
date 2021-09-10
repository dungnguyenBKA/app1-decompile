.class public Landroidx/appcompat/widget/SwitchCompat;
.super Landroid/widget/CompoundButton;
.source "SourceFile"


# static fields
.field private static final O:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/appcompat/widget/SwitchCompat;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final P:[I


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private final G:Landroid/text/TextPaint;

.field private H:Landroid/content/res/ColorStateList;

.field private I:Landroid/text/Layout;

.field private J:Landroid/text/Layout;

.field private K:Landroid/text/method/TransformationMethod;

.field L:Landroid/animation/ObjectAnimator;

.field private final M:Landroidx/appcompat/widget/k;

.field private final N:Landroid/graphics/Rect;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/content/res/ColorStateList;

.field private d:Landroid/graphics/PorterDuff$Mode;

.field private e:Z

.field private f:Z

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/content/res/ColorStateList;

.field private i:Landroid/graphics/PorterDuff$Mode;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Ljava/lang/CharSequence;

.field private q:Ljava/lang/CharSequence;

.field private r:Z

.field private s:I

.field private t:I

.field private u:F

.field private v:F

.field private w:Landroid/view/VelocityTracker;

.field private x:I

.field y:F

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/appcompat/widget/SwitchCompat$a;

    const-class v1, Ljava/lang/Float;

    const-string v2, "thumbPos"

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/SwitchCompat$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/widget/SwitchCompat;->O:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 2
    sput-object v0, Landroidx/appcompat/widget/SwitchCompat;->P:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0302b3

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->c:Landroid/content/res/ColorStateList;

    .line 4
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->e:Z

    .line 6
    iput-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Z

    .line 7
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->h:Landroid/content/res/ColorStateList;

    .line 8
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/PorterDuff$Mode;

    .line 9
    iput-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->j:Z

    .line 10
    iput-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->k:Z

    .line 11
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->w:Landroid/view/VelocityTracker;

    .line 12
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->N:Landroid/graphics/Rect;

    .line 13
    new-instance v2, Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;

    .line 14
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 15
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, v2, Landroid/text/TextPaint;->density:F

    .line 16
    sget-object v4, Landroidx/appcompat/R$styleable;->x:[I

    invoke-static {p1, p2, v4, p3, v1}, Landroidx/appcompat/widget/i0;->u(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/i0;

    move-result-object v4

    const/4 v5, 0x2

    .line 17
    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/i0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 18
    invoke-virtual {v6, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    const/16 v6, 0xb

    .line 19
    invoke-virtual {v4, v6}, Landroidx/appcompat/widget/i0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    .line 20
    invoke-virtual {v6, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 21
    :cond_1
    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/i0;->p(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->p:Ljava/lang/CharSequence;

    .line 22
    invoke-virtual {v4, v3}, Landroidx/appcompat/widget/i0;->p(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->q:Ljava/lang/CharSequence;

    const/4 v6, 0x3

    .line 23
    invoke-virtual {v4, v6, v3}, Landroidx/appcompat/widget/i0;->a(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroidx/appcompat/widget/SwitchCompat;->r:Z

    const/16 v7, 0x8

    .line 24
    invoke-virtual {v4, v7, v1}, Landroidx/appcompat/widget/i0;->f(II)I

    move-result v7

    iput v7, p0, Landroidx/appcompat/widget/SwitchCompat;->l:I

    const/4 v7, 0x5

    .line 25
    invoke-virtual {v4, v7, v1}, Landroidx/appcompat/widget/i0;->f(II)I

    move-result v7

    iput v7, p0, Landroidx/appcompat/widget/SwitchCompat;->m:I

    const/4 v7, 0x6

    .line 26
    invoke-virtual {v4, v7, v1}, Landroidx/appcompat/widget/i0;->f(II)I

    move-result v7

    iput v7, p0, Landroidx/appcompat/widget/SwitchCompat;->n:I

    const/4 v7, 0x4

    .line 27
    invoke-virtual {v4, v7, v1}, Landroidx/appcompat/widget/i0;->a(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroidx/appcompat/widget/SwitchCompat;->o:Z

    const/16 v7, 0x9

    .line 28
    invoke-virtual {v4, v7}, Landroidx/appcompat/widget/i0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 29
    iput-object v7, p0, Landroidx/appcompat/widget/SwitchCompat;->c:Landroid/content/res/ColorStateList;

    .line 30
    iput-boolean v3, p0, Landroidx/appcompat/widget/SwitchCompat;->e:Z

    :cond_2
    const/16 v7, 0xa

    const/4 v8, -0x1

    .line 31
    invoke-virtual {v4, v7, v8}, Landroidx/appcompat/widget/i0;->k(II)I

    move-result v7

    .line 32
    invoke-static {v7, v0}, Landroidx/appcompat/widget/o;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    .line 33
    iget-object v9, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v9, v7, :cond_3

    .line 34
    iput-object v7, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/PorterDuff$Mode;

    .line 35
    iput-boolean v3, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Z

    .line 36
    :cond_3
    iget-boolean v7, p0, Landroidx/appcompat/widget/SwitchCompat;->e:Z

    if-nez v7, :cond_4

    iget-boolean v7, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Z

    if-eqz v7, :cond_5

    .line 37
    :cond_4
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->a()V

    :cond_5
    const/16 v7, 0xc

    .line 38
    invoke-virtual {v4, v7}, Landroidx/appcompat/widget/i0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 39
    iput-object v7, p0, Landroidx/appcompat/widget/SwitchCompat;->h:Landroid/content/res/ColorStateList;

    .line 40
    iput-boolean v3, p0, Landroidx/appcompat/widget/SwitchCompat;->j:Z

    :cond_6
    const/16 v7, 0xd

    .line 41
    invoke-virtual {v4, v7, v8}, Landroidx/appcompat/widget/i0;->k(II)I

    move-result v7

    .line 42
    invoke-static {v7, v0}, Landroidx/appcompat/widget/o;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    .line 43
    iget-object v9, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/PorterDuff$Mode;

    if-eq v9, v7, :cond_7

    .line 44
    iput-object v7, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/PorterDuff$Mode;

    .line 45
    iput-boolean v3, p0, Landroidx/appcompat/widget/SwitchCompat;->k:Z

    .line 46
    :cond_7
    iget-boolean v7, p0, Landroidx/appcompat/widget/SwitchCompat;->j:Z

    if-nez v7, :cond_8

    iget-boolean v7, p0, Landroidx/appcompat/widget/SwitchCompat;->k:Z

    if-eqz v7, :cond_9

    .line 47
    :cond_8
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->b()V

    :cond_9
    const/4 v7, 0x7

    .line 48
    invoke-virtual {v4, v7, v1}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v7

    if-eqz v7, :cond_15

    .line 49
    sget-object v9, Landroidx/appcompat/R$styleable;->y:[I

    invoke-static {p1, v7, v9}, Landroidx/appcompat/widget/i0;->s(Landroid/content/Context;I[I)Landroidx/appcompat/widget/i0;

    move-result-object v7

    .line 50
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/i0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 51
    iput-object v9, p0, Landroidx/appcompat/widget/SwitchCompat;->H:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 52
    :cond_a
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v9

    iput-object v9, p0, Landroidx/appcompat/widget/SwitchCompat;->H:Landroid/content/res/ColorStateList;

    .line 53
    :goto_0
    invoke-virtual {v7, v1, v1}, Landroidx/appcompat/widget/i0;->f(II)I

    move-result v9

    if-eqz v9, :cond_b

    int-to-float v9, v9

    .line 54
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v10

    cmpl-float v10, v9, v10

    if-eqz v10, :cond_b

    .line 55
    invoke-virtual {v2, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 56
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    .line 57
    :cond_b
    invoke-virtual {v7, v3, v8}, Landroidx/appcompat/widget/i0;->k(II)I

    move-result v9

    .line 58
    invoke-virtual {v7, v5, v8}, Landroidx/appcompat/widget/i0;->k(II)I

    move-result v10

    if-eq v9, v3, :cond_e

    if-eq v9, v5, :cond_d

    if-eq v9, v6, :cond_c

    move-object v6, v0

    goto :goto_1

    .line 59
    :cond_c
    sget-object v6, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_1

    .line 60
    :cond_d
    sget-object v6, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_1

    .line 61
    :cond_e
    sget-object v6, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :goto_1
    const/4 v9, 0x0

    if-lez v10, :cond_13

    if-nez v6, :cond_f

    .line 62
    invoke-static {v10}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v6

    goto :goto_2

    .line 63
    :cond_f
    invoke-static {v6, v10}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v6

    .line 64
    :goto_2
    invoke-virtual {p0, v6}, Landroidx/appcompat/widget/SwitchCompat;->i(Landroid/graphics/Typeface;)V

    if-eqz v6, :cond_10

    .line 65
    invoke-virtual {v6}, Landroid/graphics/Typeface;->getStyle()I

    move-result v6

    goto :goto_3

    :cond_10
    const/4 v6, 0x0

    :goto_3
    xor-int/2addr v6, v8

    and-int/2addr v6, v10

    and-int/lit8 v8, v6, 0x1

    if-eqz v8, :cond_11

    goto :goto_4

    :cond_11
    const/4 v3, 0x0

    .line 66
    :goto_4
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    and-int/lit8 v3, v6, 0x2

    if-eqz v3, :cond_12

    const/high16 v9, -0x41800000    # -0.25f

    .line 67
    :cond_12
    invoke-virtual {v2, v9}, Landroid/text/TextPaint;->setTextSkewX(F)V

    goto :goto_5

    .line 68
    :cond_13
    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 69
    invoke-virtual {v2, v9}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 70
    invoke-virtual {p0, v6}, Landroidx/appcompat/widget/SwitchCompat;->i(Landroid/graphics/Typeface;)V

    :goto_5
    const/16 v2, 0xe

    .line 71
    invoke-virtual {v7, v2, v1}, Landroidx/appcompat/widget/i0;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 72
    new-instance v0, Li;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Li;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->K:Landroid/text/method/TransformationMethod;

    goto :goto_6

    .line 73
    :cond_14
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->K:Landroid/text/method/TransformationMethod;

    .line 74
    :goto_6
    invoke-virtual {v7}, Landroidx/appcompat/widget/i0;->v()V

    .line 75
    :cond_15
    new-instance v0, Landroidx/appcompat/widget/k;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/k;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->M:Landroidx/appcompat/widget/k;

    .line 76
    invoke-virtual {v0, p2, p3}, Landroidx/appcompat/widget/k;->k(Landroid/util/AttributeSet;I)V

    .line 77
    invoke-virtual {v4}, Landroidx/appcompat/widget/i0;->v()V

    .line 78
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/SwitchCompat;->t:I

    .line 80
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->x:I

    .line 81
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->refreshDrawableState()V

    .line 82
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->e:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Z

    if-eqz v1, :cond_3

    .line 2
    :cond_0
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->j(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->e:Z

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->c:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 5
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Z

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->h(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 7
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->j:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->k:Z

    if-eqz v1, :cond_3

    .line 2
    :cond_0
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->j(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->j:Z

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->h:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 5
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->k:Z

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->h(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 7
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private d()I
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/appcompat/widget/p0;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F

    sub-float/2addr v0, v1

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F

    .line 4
    :goto_0
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->e()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private e()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->N:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, Landroidx/appcompat/widget/o;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Landroidx/appcompat/widget/o;->c:Landroid/graphics/Rect;

    .line 7
    :goto_0
    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->z:I

    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->B:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private h(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->K:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    move-object v1, p1

    .line 3
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    move v3, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->N:Landroid/graphics/Rect;

    .line 2
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->C:I

    .line 3
    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->D:I

    .line 4
    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->E:I

    .line 5
    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->F:I

    .line 6
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->d()I

    move-result v5

    add-int/2addr v5, v1

    .line 7
    iget-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 8
    invoke-static {v6}, Landroidx/appcompat/widget/o;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v6

    goto :goto_0

    .line 9
    :cond_0
    sget-object v6, Landroidx/appcompat/widget/o;->c:Landroid/graphics/Rect;

    .line 10
    :goto_0
    iget-object v7, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_6

    .line 11
    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 12
    iget v7, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    if-eqz v6, :cond_4

    .line 13
    iget v8, v6, Landroid/graphics/Rect;->left:I

    if-le v8, v7, :cond_1

    sub-int/2addr v8, v7

    add-int/2addr v1, v8

    .line 14
    :cond_1
    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-le v7, v8, :cond_2

    sub-int/2addr v7, v8

    add-int/2addr v7, v2

    goto :goto_1

    :cond_2
    move v7, v2

    .line 15
    :goto_1
    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    if-le v8, v9, :cond_3

    sub-int/2addr v8, v9

    sub-int/2addr v3, v8

    .line 16
    :cond_3
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    if-le v6, v8, :cond_5

    sub-int/2addr v6, v8

    sub-int v6, v4, v6

    goto :goto_2

    :cond_4
    move v7, v2

    :cond_5
    move v6, v4

    .line 17
    :goto_2
    iget-object v8, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v1, v7, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 18
    :cond_6
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    .line 19
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 20
    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, v5, v1

    .line 21
    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->B:I

    add-int/2addr v5, v3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    .line 22
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 23
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 24
    invoke-static {v0, v1, v2, v5, v4}, Landroidx/core/graphics/drawable/a;->d(Landroid/graphics/drawable/Drawable;IIII)V

    .line 25
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/a;->c(Landroid/graphics/drawable/Drawable;FF)V

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 6
    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/a;->c(Landroid/graphics/drawable/Drawable;FF)V

    :cond_2
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 6
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_1
    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    :cond_2
    return-void
.end method

.method public f()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->c:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public g()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->h:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/appcompat/widget/p0;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->z:I

    add-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->n:I

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/appcompat/widget/p0;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->z:I

    add-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->n:I

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public i(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;

    .line 2
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 3
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    :cond_2
    return-void
.end method

.method j(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/animation/ObjectAnimator;

    :cond_2
    return-void
.end method

.method public k(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->c:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->e:Z

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->a()V

    return-void
.end method

.method public l(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->h:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->j:Z

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->b()V

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Landroidx/appcompat/widget/SwitchCompat;->P:[I

    invoke-static {p1, v0}, Landroid/widget/CompoundButton;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->N:Landroid/graphics/Rect;

    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 6
    :goto_0
    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->D:I

    .line 7
    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->F:I

    .line 8
    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    .line 9
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 10
    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 11
    iget-boolean v5, p0, Landroidx/appcompat/widget/SwitchCompat;->o:Z

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    .line 12
    invoke-static {v4}, Landroidx/appcompat/widget/o;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v5

    .line 13
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 14
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 15
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v5

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 17
    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 18
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 19
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 21
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    if-eqz v4, :cond_3

    .line 22
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 23
    :cond_3
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    cmpl-float v1, v1, v5

    if-lez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    .line 24
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->I:Landroid/text/Layout;

    goto :goto_3

    :cond_5
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->J:Landroid/text/Layout;

    :goto_3
    if-eqz v1, :cond_8

    .line 25
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v5

    .line 26
    iget-object v7, p0, Landroidx/appcompat/widget/SwitchCompat;->H:Landroid/content/res/ColorStateList;

    if-eqz v7, :cond_6

    .line 27
    iget-object v8, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;

    invoke-virtual {v7, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 28
    :cond_6
    iget-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;

    iput-object v5, v6, Landroid/text/TextPaint;->drawableState:[I

    if-eqz v4, :cond_7

    .line 29
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 30
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v4

    goto :goto_4

    .line 31
    :cond_7
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result v5

    .line 32
    :goto_4
    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v5, v4

    add-int/2addr v2, v3

    .line 33
    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v3, v5

    int-to-float v2, v2

    .line 34
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 35
    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 36
    :cond_8
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string v0, "android.widget.Switch"

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.Switch"

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->p:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->q:Ljava/lang/CharSequence;

    .line 4
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 8
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->N:Landroid/graphics/Rect;

    .line 4
    iget-object p3, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 7
    :goto_0
    iget-object p3, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {p3}, Landroidx/appcompat/widget/o;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object p3

    .line 8
    iget p4, p3, Landroid/graphics/Rect;->left:I

    iget p5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 9
    iget p3, p3, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p1

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    .line 10
    :goto_1
    invoke-static {p0}, Landroidx/appcompat/widget/p0;->b(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingLeft()I

    move-result p1

    add-int/2addr p1, p4

    .line 12
    iget p3, p0, Landroidx/appcompat/widget/SwitchCompat;->z:I

    add-int/2addr p3, p1

    sub-int/2addr p3, p4

    sub-int/2addr p3, p2

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    sub-int p3, p1, p2

    .line 14
    iget p1, p0, Landroidx/appcompat/widget/SwitchCompat;->z:I

    sub-int p1, p3, p1

    add-int/2addr p1, p4

    add-int/2addr p1, p2

    .line 15
    :goto_2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getGravity()I

    move-result p2

    and-int/lit8 p2, p2, 0x70

    const/16 p4, 0x10

    if-eq p2, p4, :cond_4

    const/16 p4, 0x50

    if-eq p2, p4, :cond_3

    .line 16
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingTop()I

    move-result p2

    .line 17
    iget p4, p0, Landroidx/appcompat/widget/SwitchCompat;->A:I

    add-int/2addr p4, p2

    goto :goto_3

    .line 18
    :cond_3
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingBottom()I

    move-result p4

    sub-int p4, p2, p4

    .line 19
    iget p2, p0, Landroidx/appcompat/widget/SwitchCompat;->A:I

    sub-int p2, p4, p2

    goto :goto_3

    .line 20
    :cond_4
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    iget p2, p0, Landroidx/appcompat/widget/SwitchCompat;->A:I

    div-int/lit8 p5, p2, 0x2

    sub-int/2addr p4, p5

    add-int/2addr p2, p4

    move v0, p4

    move p4, p2

    move p2, v0

    .line 21
    :goto_3
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->C:I

    .line 22
    iput p2, p0, Landroidx/appcompat/widget/SwitchCompat;->D:I

    .line 23
    iput p4, p0, Landroidx/appcompat/widget/SwitchCompat;->F:I

    .line 24
    iput p3, p0, Landroidx/appcompat/widget/SwitchCompat;->E:I

    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->r:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->I:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->p:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->h(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->I:Landroid/text/Layout;

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->J:Landroid/text/Layout;

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->q:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->h(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->J:Landroid/text/Layout;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->N:Landroid/graphics/Rect;

    .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 9
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    .line 10
    iget-object v3, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 11
    :goto_0
    iget-boolean v4, p0, Landroidx/appcompat/widget/SwitchCompat;->r:Z

    if-eqz v4, :cond_3

    .line 12
    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->I:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroidx/appcompat/widget/SwitchCompat;->J:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->l:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 13
    :goto_1
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->B:I

    .line 14
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 16
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    goto :goto_2

    .line 17
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 18
    :goto_2
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 19
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 20
    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    .line 21
    invoke-static {v4}, Landroidx/appcompat/widget/o;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v4

    .line 22
    iget v5, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 23
    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 24
    :cond_5
    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->m:I

    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->B:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 25
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 26
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->z:I

    .line 27
    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->A:I

    .line 28
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 29
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getMeasuredHeight()I

    move-result p1

    if-ge p1, v1, :cond_6

    .line 30
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getMeasuredWidthAndState()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Landroid/widget/CompoundButton;->setMeasuredDimension(II)V

    :cond_6
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->p:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->q:Ljava/lang/CharSequence;

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v0, v2, :cond_a

    if-eq v0, v5, :cond_0

    if-eq v0, v3, :cond_a

    goto/16 :goto_6

    .line 3
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->s:I

    if-eq v0, v2, :cond_8

    if-eq v0, v5, :cond_1

    goto/16 :goto_6

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 5
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->e()I

    move-result v0

    .line 6
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->u:F

    sub-float v1, p1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_0

    :cond_2
    cmpl-float v0, v1, v4

    if-lez v0, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, -0x40800000    # -1.0f

    .line 7
    :goto_0
    invoke-static {p0}, Landroidx/appcompat/widget/p0;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    neg-float v1, v1

    .line 8
    :cond_4
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F

    add-float/2addr v1, v0

    cmpg-float v5, v1, v4

    if-gez v5, :cond_5

    goto :goto_1

    :cond_5
    cmpl-float v4, v1, v3

    if-lez v4, :cond_6

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_6
    move v4, v1

    :goto_1
    cmpl-float v0, v4, v0

    if-eqz v0, :cond_7

    .line 9
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->u:F

    .line 10
    iput v4, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F

    .line 11
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    :cond_7
    return v2

    .line 12
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 14
    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->u:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->t:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_9

    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->v:F

    sub-float v3, v1, v3

    .line 15
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->t:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_15

    .line 16
    :cond_9
    iput v5, p0, Landroidx/appcompat/widget/SwitchCompat;->s:I

    .line 17
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 18
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->u:F

    .line 19
    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->v:F

    return v2

    .line 20
    :cond_a
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->s:I

    if-ne v0, v5, :cond_11

    .line 21
    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->s:I

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_b

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_2

    :cond_b
    const/4 v0, 0x0

    .line 23
    :goto_2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    if-eqz v0, :cond_f

    .line 24
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->w:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {v0, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 25
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 26
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Landroidx/appcompat/widget/SwitchCompat;->x:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_d

    .line 27
    invoke-static {p0}, Landroidx/appcompat/widget/p0;->b(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_c

    cmpg-float v0, v0, v4

    if-gez v0, :cond_e

    goto :goto_3

    :cond_c
    cmpl-float v0, v0, v4

    if-lez v0, :cond_e

    goto :goto_3

    .line 28
    :cond_d
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_e

    :goto_3
    const/4 v0, 0x1

    goto :goto_4

    :cond_e
    const/4 v0, 0x0

    goto :goto_4

    :cond_f
    move v0, v5

    :goto_4
    if-eq v0, v5, :cond_10

    .line 29
    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    .line 30
    :cond_10
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 31
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 32
    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 33
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 34
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 35
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v2

    .line 36
    :cond_11
    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->s:I

    .line 37
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_6

    .line 38
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 40
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 41
    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_13

    goto :goto_5

    .line 42
    :cond_13
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->d()I

    move-result v4

    .line 43
    iget-object v5, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->N:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 44
    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->D:I

    iget v6, p0, Landroidx/appcompat/widget/SwitchCompat;->t:I

    sub-int/2addr v5, v6

    .line 45
    iget v7, p0, Landroidx/appcompat/widget/SwitchCompat;->C:I

    add-int/2addr v7, v4

    sub-int/2addr v7, v6

    .line 46
    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->B:I

    add-int/2addr v4, v7

    iget-object v8, p0, Landroidx/appcompat/widget/SwitchCompat;->N:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v9

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v8

    add-int/2addr v4, v6

    .line 47
    iget v8, p0, Landroidx/appcompat/widget/SwitchCompat;->F:I

    add-int/2addr v8, v6

    int-to-float v6, v7

    cmpl-float v6, v0, v6

    if-lez v6, :cond_14

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_14

    int-to-float v4, v5

    cmpl-float v4, v3, v4

    if-lez v4, :cond_14

    int-to-float v4, v8

    cmpg-float v4, v3, v4

    if-gez v4, :cond_14

    const/4 v1, 0x1

    :cond_14
    :goto_5
    if-eqz v1, :cond_15

    .line 48
    iput v2, p0, Landroidx/appcompat/widget/SwitchCompat;->s:I

    .line 49
    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->u:F

    .line 50
    iput v3, p0, Landroidx/appcompat/widget/SwitchCompat;->v:F

    .line 51
    :cond_15
    :goto_6
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setChecked(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    .line 3
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4
    sget v0, Lc3;->g:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    sget-object p1, Landroidx/appcompat/widget/SwitchCompat;->O:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v2, v0, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    invoke-static {p0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xfa

    .line 7
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 8
    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 9
    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_2

    .line 10
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 12
    :goto_1
    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F

    .line 13
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    :goto_2
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/core/widget/c;->j(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    .line 2
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
