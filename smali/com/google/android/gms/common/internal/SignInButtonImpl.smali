.class public final Lcom/google/android/gms/common/internal/SignInButtonImpl;
.super Landroid/widget/Button;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010048

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static b(IIII)I
    .locals 0

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    return p3

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const/16 p2, 0x21

    const-string p3, "Unknown color scheme: "

    invoke-static {p2, p3, p0}, Lic;->C(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return p2

    :cond_2
    return p1
.end method


# virtual methods
.method public final a(Landroid/content/res/Resources;II)V
    .locals 6

    .line 1
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v0, 0x41600000    # 14.0f

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 3
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42400000    # 48.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setMinHeight(I)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setMinWidth(I)V

    const v0, 0x7f0700ae

    const v1, 0x7f0700b3

    .line 6
    invoke-static {p3, v0, v1, v1}, Lcom/google/android/gms/common/internal/SignInButtonImpl;->b(IIII)I

    move-result v0

    const v1, 0x7f0700b7

    const v2, 0x7f0700bc

    .line 7
    invoke-static {p3, v1, v2, v2}, Lcom/google/android/gms/common/internal/SignInButtonImpl;->b(IIII)I

    move-result v1

    const-string v2, "Unknown button size: "

    const/16 v3, 0x20

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v5, :cond_1

    if-ne p2, v4, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v3, v2, p2}, Lic;->C(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    move v0, v1

    .line 9
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->j(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f050061

    .line 10
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 12
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->h(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f050057

    const v1, 0x7f05005c

    .line 14
    invoke-static {p3, v0, v1, v1}, Lcom/google/android/gms/common/internal/SignInButtonImpl;->b(IIII)I

    move-result p3

    .line 15
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    const-string v0, "null reference"

    .line 16
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    invoke-virtual {p0, p3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    if-eq p2, v5, :cond_3

    if-ne p2, v4, :cond_2

    .line 18
    invoke-virtual {p0, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v3, v2, p2}, Lic;->C(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const p2, 0x7f0e004f

    .line 20
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const p2, 0x7f0e004e

    .line 21
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 22
    :goto_1
    invoke-virtual {p0, p3}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 23
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/util/c;->g(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x13

    .line 24
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setGravity(I)V

    :cond_5
    return-void
.end method
