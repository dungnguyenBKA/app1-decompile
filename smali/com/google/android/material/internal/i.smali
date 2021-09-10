.class public final Lcom/google/android/material/internal/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x7f0300b9

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1
    sput-object v1, Lcom/google/android/material/internal/i;->a:[I

    new-array v1, v0, [I

    const v2, 0x7f0300bc

    aput v2, v1, v3

    .line 2
    sput-object v1, Lcom/google/android/material/internal/i;->b:[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 3
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/material/internal/i;->c:[I

    new-array v0, v0, [I

    const v1, 0x7f030231

    aput v1, v0, v3

    .line 4
    sput-object v0, Lcom/google/android/material/internal/i;->d:[I

    return-void

    :array_0
    .array-data 4
        0x1010000
        0x7f0302f3
    .end array-data
.end method

.method private static a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/material/R$styleable;->K:[I

    .line 2
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 3
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p3, :cond_1

    .line 5
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    const v0, 0x7f030198

    invoke-virtual {p3, v0, p1, p2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    iget p2, p1, Landroid/util/TypedValue;->type:I

    const/16 p3, 0x12

    if-ne p2, p3, :cond_1

    iget p1, p1, Landroid/util/TypedValue;->data:I

    if-nez p1, :cond_1

    .line 8
    :cond_0
    sget-object p1, Lcom/google/android/material/internal/i;->b:[I

    const-string p2, "Theme.MaterialComponents"

    invoke-static {p0, p1, p2}, Lcom/google/android/material/internal/i;->d(Landroid/content/Context;[ILjava/lang/String;)V

    .line 9
    :cond_1
    sget-object p1, Lcom/google/android/material/internal/i;->a:[I

    const-string p2, "Theme.AppCompat"

    invoke-static {p0, p1, p2}, Lcom/google/android/material/internal/i;->d(Landroid/content/Context;[ILjava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/material/internal/i;->b:[I

    const-string v1, "Theme.MaterialComponents"

    invoke-static {p0, v0, v1}, Lcom/google/android/material/internal/i;->d(Landroid/content/Context;[ILjava/lang/String;)V

    return-void
.end method

.method private static varargs c(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/material/R$styleable;->K:[I

    .line 2
    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_0
    const/4 v1, -0x1

    if-eqz p5, :cond_4

    .line 5
    array-length v3, p5

    if-nez v3, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 7
    array-length p1, p5

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_3

    aget p3, p5, p2

    .line 8
    invoke-virtual {p0, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-ne p3, v1, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    .line 11
    :cond_4
    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    if-eq p0, v1, :cond_5

    :goto_2
    const/4 v2, 0x1

    .line 12
    :cond_5
    :goto_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v2, :cond_6

    return-void

    .line 13
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method private static d(Landroid/content/Context;[ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The style on this component requires your app theme to be "

    const-string v0, " (or a descendant)."

    invoke-static {p1, p2, v0}, Lic;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static e(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/material/internal/i;->d:[I

    .line 2
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    .line 3
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 4
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_3

    .line 5
    instance-of p2, p0, Lm;

    if-eqz p2, :cond_0

    move-object p2, p0

    check-cast p2, Lm;

    .line 6
    invoke-virtual {p2}, Lm;->a()I

    move-result p2

    if-eq p2, v0, :cond_3

    .line 7
    :cond_0
    new-instance p2, Lm;

    invoke-direct {p2, p0, v0}, Lm;-><init>(Landroid/content/Context;I)V

    .line 8
    sget-object p0, Lcom/google/android/material/internal/i;->c:[I

    invoke-virtual {p2, p1, p0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 9
    invoke-virtual {p0, p3, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 11
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, p3

    :goto_0
    if-eqz p1, :cond_2

    .line 12
    new-instance p0, Lm;

    invoke-direct {p0, p2, p1}, Lm;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_2
    move-object p0, p2

    :cond_3
    :goto_1
    return-object p0
.end method

.method public static varargs f(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;
    .locals 0

    .line 1
    invoke-static {p0, p1, p3, p4}, Lcom/google/android/material/internal/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    invoke-static/range {p0 .. p5}, Lcom/google/android/material/internal/i;->c(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method public static varargs g(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/i0;
    .locals 0

    .line 1
    invoke-static {p0, p1, p3, p4}, Lcom/google/android/material/internal/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    invoke-static/range {p0 .. p5}, Lcom/google/android/material/internal/i;->c(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/i0;->u(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/i0;

    move-result-object p0

    return-object p0
.end method
