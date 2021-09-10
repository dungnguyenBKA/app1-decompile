.class final Lcom/google/android/material/datepicker/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private final b:Landroid/content/res/ColorStateList;

.field private final c:Landroid/content/res/ColorStateList;

.field private final d:Landroid/content/res/ColorStateList;

.field private final e:I

.field private final f:Lqy;


# direct methods
.method private constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILqy;Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p6, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, Landroidx/core/app/b;->j(I)I

    .line 3
    iget v0, p6, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, Landroidx/core/app/b;->j(I)I

    .line 4
    iget v0, p6, Landroid/graphics/Rect;->right:I

    invoke-static {v0}, Landroidx/core/app/b;->j(I)I

    .line 5
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0}, Landroidx/core/app/b;->j(I)I

    .line 6
    iput-object p6, p0, Lcom/google/android/material/datepicker/a;->a:Landroid/graphics/Rect;

    .line 7
    iput-object p2, p0, Lcom/google/android/material/datepicker/a;->b:Landroid/content/res/ColorStateList;

    .line 8
    iput-object p1, p0, Lcom/google/android/material/datepicker/a;->c:Landroid/content/res/ColorStateList;

    .line 9
    iput-object p3, p0, Lcom/google/android/material/datepicker/a;->d:Landroid/content/res/ColorStateList;

    .line 10
    iput p4, p0, Lcom/google/android/material/datepicker/a;->e:I

    .line 11
    iput-object p5, p0, Lcom/google/android/material/datepicker/a;->f:Lqy;

    return-void
.end method

.method static a(Landroid/content/Context;I)Lcom/google/android/material/datepicker/a;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 1
    sget-object v2, Lcom/google/android/material/R$styleable;->t:[I

    .line 2
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/4 v3, 0x2

    .line 4
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    const/4 v4, 0x3

    .line 6
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 7
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v2, v3, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v1, 0x4

    .line 8
    invoke-static {p0, p1, v1}, Lyx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    const/16 v1, 0x9

    .line 9
    invoke-static {p0, p1, v1}, Lyx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    const/4 v1, 0x7

    .line 10
    invoke-static {p0, p1, v1}, Lyx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    const/16 v1, 0x8

    .line 11
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    const/4 v1, 0x5

    .line 12
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const/4 v2, 0x6

    .line 13
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 14
    invoke-static {p0, v1, v0}, Lqy;->a(Landroid/content/Context;II)Lqy$b;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lqy$b;->m()Lqy;

    move-result-object v10

    .line 16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    new-instance p0, Lcom/google/android/material/datepicker/a;

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/google/android/material/datepicker/a;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILqy;Landroid/graphics/Rect;)V

    return-object p0

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot create a CalendarItemStyle with a styleResId of 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/a;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/a;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method d(Landroid/widget/TextView;)V
    .locals 10

    .line 1
    new-instance v0, Lmy;

    invoke-direct {v0}, Lmy;-><init>()V

    .line 2
    new-instance v1, Lmy;

    invoke-direct {v1}, Lmy;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/google/android/material/datepicker/a;->f:Lqy;

    invoke-virtual {v0, v2}, Lmy;->e(Lqy;)V

    .line 4
    iget-object v2, p0, Lcom/google/android/material/datepicker/a;->f:Lqy;

    invoke-virtual {v1, v2}, Lmy;->e(Lqy;)V

    .line 5
    iget-object v2, p0, Lcom/google/android/material/datepicker/a;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Lmy;->F(Landroid/content/res/ColorStateList;)V

    .line 6
    iget v2, p0, Lcom/google/android/material/datepicker/a;->e:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/datepicker/a;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2, v3}, Lmy;->O(FLandroid/content/res/ColorStateList;)V

    .line 7
    iget-object v2, p0, Lcom/google/android/material/datepicker/a;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 9
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    iget-object v3, p0, Lcom/google/android/material/datepicker/a;->b:Landroid/content/res/ColorStateList;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, v0

    .line 10
    :goto_0
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/google/android/material/datepicker/a;->a:Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->right:I

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 11
    sget v1, Lc3;->g:I

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
