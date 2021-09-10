.class final Landroidx/appcompat/widget/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/v$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/e;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final a:[I

.field private final b:[I

.field private final c:[I

.field private final d:[I

.field private final e:[I

.field private final f:[I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_0

    iput-object v1, p0, Landroidx/appcompat/widget/e$a;->a:[I

    const/4 v1, 0x7

    new-array v1, v1, [I

    .line 3
    fill-array-data v1, :array_1

    iput-object v1, p0, Landroidx/appcompat/widget/e$a;->b:[I

    const/16 v1, 0xa

    new-array v1, v1, [I

    .line 4
    fill-array-data v1, :array_2

    iput-object v1, p0, Landroidx/appcompat/widget/e$a;->c:[I

    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_3

    iput-object v0, p0, Landroidx/appcompat/widget/e$a;->d:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_4

    iput-object v0, p0, Landroidx/appcompat/widget/e$a;->e:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_5

    iput-object v0, p0, Landroidx/appcompat/widget/e$a;->f:[I

    return-void

    :array_0
    .array-data 4
        0x7f070059
        0x7f070057
        0x7f070006
    .end array-data

    :array_1
    .array-data 4
        0x7f07001e
        0x7f070047
        0x7f070025
        0x7f070020
        0x7f070021
        0x7f070024
        0x7f070023
    .end array-data

    :array_2
    .array-data 4
        0x7f070056
        0x7f070058
        0x7f070017
        0x7f07004f
        0x7f070050
        0x7f070052
        0x7f070054
        0x7f070051
        0x7f070053
        0x7f070055
    .end array-data

    :array_3
    .array-data 4
        0x7f07003d
        0x7f070015
        0x7f07003c
    .end array-data

    :array_4
    .array-data 4
        0x7f07004d
        0x7f07005a
    .end array-data

    :array_5
    .array-data 4
        0x7f070009
        0x7f07000f
        0x7f07000a
        0x7f070010
    .end array-data
.end method

.method private a([II)Z
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    if-ne v3, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [[I

    new-array v0, v0, [I

    const v2, 0x7f0300b0

    .line 1
    invoke-static {p1, v2}, Landroidx/appcompat/widget/d0;->b(Landroid/content/Context;I)I

    move-result v2

    const v3, 0x7f0300ae

    .line 2
    invoke-static {p1, v3}, Landroidx/appcompat/widget/d0;->a(Landroid/content/Context;I)I

    move-result p1

    .line 3
    sget-object v3, Landroidx/appcompat/widget/d0;->b:[I

    const/4 v4, 0x0

    aput-object v3, v1, v4

    aput p1, v0, v4

    .line 4
    sget-object p1, Landroidx/appcompat/widget/d0;->d:[I

    const/4 v3, 0x1

    aput-object p1, v1, v3

    .line 5
    invoke-static {v2, p2}, Lk1;->b(II)I

    move-result p1

    aput p1, v0, v3

    .line 6
    sget-object p1, Landroidx/appcompat/widget/d0;->c:[I

    const/4 v3, 0x2

    aput-object p1, v1, v3

    .line 7
    invoke-static {v2, p2}, Lk1;->b(II)I

    move-result p1

    aput p1, v0, v3

    .line 8
    sget-object p1, Landroidx/appcompat/widget/d0;->f:[I

    const/4 v2, 0x3

    aput-object p1, v1, v2

    aput p2, v0, v2

    .line 9
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method private d(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/appcompat/widget/o;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    if-nez p3, :cond_1

    .line 3
    invoke-static {}, Landroidx/appcompat/widget/e;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    :cond_1
    invoke-static {p2, p3}, Landroidx/appcompat/widget/e;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 8

    const v0, 0x7f07001a

    if-ne p2, v0, :cond_0

    const p2, 0x7f050014

    .line 1
    invoke-static {p1, p2}, Ld;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_0
    const v0, 0x7f07004c

    if-ne p2, v0, :cond_1

    const p2, 0x7f050017

    .line 2
    invoke-static {p1, p2}, Ld;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_1
    const v0, 0x7f07004b

    const/4 v1, 0x0

    if-ne p2, v0, :cond_3

    const/4 p2, 0x3

    new-array v0, p2, [[I

    new-array p2, p2, [I

    const v2, 0x7f0300c1

    .line 3
    invoke-static {p1, v2}, Landroidx/appcompat/widget/d0;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x2

    const v5, 0x7f0300af

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    .line 4
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5
    sget-object v2, Landroidx/appcompat/widget/d0;->b:[I

    aput-object v2, v0, v1

    .line 6
    aget-object v2, v0, v1

    invoke-virtual {v3, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    aput v2, p2, v1

    .line 7
    sget-object v1, Landroidx/appcompat/widget/d0;->e:[I

    aput-object v1, v0, v6

    .line 8
    invoke-static {p1, v5}, Landroidx/appcompat/widget/d0;->b(Landroid/content/Context;I)I

    move-result p1

    aput p1, p2, v6

    .line 9
    sget-object p1, Landroidx/appcompat/widget/d0;->f:[I

    aput-object p1, v0, v4

    .line 10
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    aput p1, p2, v4

    goto :goto_0

    .line 11
    :cond_2
    sget-object v3, Landroidx/appcompat/widget/d0;->b:[I

    aput-object v3, v0, v1

    .line 12
    invoke-static {p1, v2}, Landroidx/appcompat/widget/d0;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, p2, v1

    .line 13
    sget-object v1, Landroidx/appcompat/widget/d0;->e:[I

    aput-object v1, v0, v6

    .line 14
    invoke-static {p1, v5}, Landroidx/appcompat/widget/d0;->b(Landroid/content/Context;I)I

    move-result v1

    aput v1, p2, v6

    .line 15
    sget-object v1, Landroidx/appcompat/widget/d0;->f:[I

    aput-object v1, v0, v4

    .line 16
    invoke-static {p1, v2}, Landroidx/appcompat/widget/d0;->b(Landroid/content/Context;I)I

    move-result p1

    aput p1, p2, v4

    .line 17
    :goto_0
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v0, p2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1

    :cond_3
    const v0, 0x7f07000e

    if-ne p2, v0, :cond_4

    const p2, 0x7f0300ae

    .line 18
    invoke-static {p1, p2}, Landroidx/appcompat/widget/d0;->b(Landroid/content/Context;I)I

    move-result p2

    .line 19
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/e$a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_4
    const v0, 0x7f070008

    if-ne p2, v0, :cond_5

    .line 20
    invoke-direct {p0, p1, v1}, Landroidx/appcompat/widget/e$a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_5
    const v0, 0x7f07000d

    if-ne p2, v0, :cond_6

    const p2, 0x7f0300ac

    .line 21
    invoke-static {p1, p2}, Landroidx/appcompat/widget/d0;->b(Landroid/content/Context;I)I

    move-result p2

    .line 22
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/e$a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_6
    const v0, 0x7f070049

    if-eq p2, v0, :cond_c

    const v0, 0x7f07004a

    if-ne p2, v0, :cond_7

    goto :goto_1

    .line 23
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/widget/e$a;->b:[I

    invoke-direct {p0, v0, p2}, Landroidx/appcompat/widget/e$a;->a([II)Z

    move-result v0

    if-eqz v0, :cond_8

    const p2, 0x7f0300b1

    .line 24
    invoke-static {p1, p2}, Landroidx/appcompat/widget/d0;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    .line 25
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/e$a;->e:[I

    invoke-direct {p0, v0, p2}, Landroidx/appcompat/widget/e$a;->a([II)Z

    move-result v0

    if-eqz v0, :cond_9

    const p2, 0x7f050013

    .line 26
    invoke-static {p1, p2}, Ld;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    .line 27
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/e$a;->f:[I

    invoke-direct {p0, v0, p2}, Landroidx/appcompat/widget/e$a;->a([II)Z

    move-result v0

    if-eqz v0, :cond_a

    const p2, 0x7f050012

    .line 28
    invoke-static {p1, p2}, Ld;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_a
    const v0, 0x7f070046

    if-ne p2, v0, :cond_b

    const p2, 0x7f050015

    .line 29
    invoke-static {p1, p2}, Ld;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1

    :cond_c
    :goto_1
    const p2, 0x7f050016

    .line 30
    invoke-static {p1, p2}, Ld;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 7

    const/4 v0, 0x1

    const v1, 0x102000d

    const v2, 0x102000f

    const/high16 v3, 0x1020000

    const v4, 0x7f0300af

    const v5, 0x7f0300b1

    const v6, 0x7f070048

    if-ne p2, v6, :cond_0

    .line 1
    check-cast p3, Landroid/graphics/drawable/LayerDrawable;

    .line 2
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 3
    invoke-static {p1, v5}, Landroidx/appcompat/widget/d0;->b(Landroid/content/Context;I)I

    move-result v3

    .line 4
    invoke-static {}, Landroidx/appcompat/widget/e;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    .line 5
    invoke-direct {p0, p2, v3, v6}, Landroidx/appcompat/widget/e$a;->d(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 6
    invoke-virtual {p3, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 7
    invoke-static {p1, v5}, Landroidx/appcompat/widget/d0;->b(Landroid/content/Context;I)I

    move-result v2

    .line 8
    invoke-static {}, Landroidx/appcompat/widget/e;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    .line 9
    invoke-direct {p0, p2, v2, v3}, Landroidx/appcompat/widget/e$a;->d(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 10
    invoke-virtual {p3, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 11
    invoke-static {p1, v4}, Landroidx/appcompat/widget/d0;->b(Landroid/content/Context;I)I

    move-result p1

    .line 12
    invoke-static {}, Landroidx/appcompat/widget/e;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    .line 13
    invoke-direct {p0, p2, p1, p3}, Landroidx/appcompat/widget/e$a;->d(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    return v0

    :cond_0
    const v6, 0x7f07003f

    if-eq p2, v6, :cond_2

    const v6, 0x7f07003e

    if-eq p2, v6, :cond_2

    const v6, 0x7f070040

    if-ne p2, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 14
    :cond_2
    :goto_0
    check-cast p3, Landroid/graphics/drawable/LayerDrawable;

    .line 15
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 16
    invoke-static {p1, v5}, Landroidx/appcompat/widget/d0;->a(Landroid/content/Context;I)I

    move-result v3

    .line 17
    invoke-static {}, Landroidx/appcompat/widget/e;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    .line 18
    invoke-direct {p0, p2, v3, v5}, Landroidx/appcompat/widget/e$a;->d(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 19
    invoke-virtual {p3, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 20
    invoke-static {p1, v4}, Landroidx/appcompat/widget/d0;->b(Landroid/content/Context;I)I

    move-result v2

    .line 21
    invoke-static {}, Landroidx/appcompat/widget/e;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    .line 22
    invoke-direct {p0, p2, v2, v3}, Landroidx/appcompat/widget/e$a;->d(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 23
    invoke-virtual {p3, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 24
    invoke-static {p1, v4}, Landroidx/appcompat/widget/d0;->b(Landroid/content/Context;I)I

    move-result p1

    .line 25
    invoke-static {}, Landroidx/appcompat/widget/e;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    .line 26
    invoke-direct {p0, p2, p1, p3}, Landroidx/appcompat/widget/e$a;->d(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    return v0
.end method

.method public f(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 6

    .line 1
    invoke-static {}, Landroidx/appcompat/widget/e;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/e$a;->a:[I

    invoke-direct {p0, v1, p2}, Landroidx/appcompat/widget/e$a;->a([II)Z

    move-result v1

    const v2, 0x1010031

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    const v2, 0x7f0300b1

    :goto_0
    const/4 p2, -0x1

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    .line 3
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/e$a;->c:[I

    invoke-direct {p0, v1, p2}, Landroidx/appcompat/widget/e$a;->a([II)Z

    move-result v1

    if-eqz v1, :cond_1

    const v2, 0x7f0300af

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/e$a;->d:[I

    invoke-direct {p0, v1, p2}, Landroidx/appcompat/widget/e$a;->a([II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_2
    const v1, 0x7f070031

    if-ne p2, v1, :cond_3

    const v2, 0x1010030

    const p2, 0x42233333    # 40.8f

    .line 6
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    goto :goto_1

    :cond_3
    const v1, 0x7f070019

    if-ne p2, v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p2, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    if-eqz v1, :cond_7

    .line 7
    invoke-static {p3}, Landroidx/appcompat/widget/o;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 9
    :cond_5
    invoke-static {p1, v2}, Landroidx/appcompat/widget/d0;->b(Landroid/content/Context;I)I

    move-result p1

    .line 10
    invoke-static {p1, v0}, Landroidx/appcompat/widget/e;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eq p2, v3, :cond_6

    .line 11
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_6
    return v5

    :cond_7
    return v4
.end method
