.class public Lw6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw6$b;,
        Lw6$a;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I


# direct methods
.method static a(Landroid/content/Context;I)Z
    .locals 3

    .line 1
    sget v0, Lw6;->a:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    sput p1, Lw6;->a:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "save keyboard: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    invoke-static {p0, p1}, Lv6;->b(Landroid/content/Context;I)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public static b(Landroid/app/Activity;Lcn/dreamtobe/kpswitch/b;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 10

    const v0, 0x1020002

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2
    invoke-static {p0}, Lu6;->b(Landroid/app/Activity;)Z

    move-result v3

    .line 3
    invoke-static {p0}, Lu6;->e(Landroid/app/Activity;)Z

    move-result v4

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v5

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 7
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 9
    iget v9, v0, Landroid/graphics/Point;->y:I

    .line 10
    new-instance p0, Lw6$a;

    const/4 v8, 0x0

    move-object v2, p0

    move-object v6, v1

    move-object v7, p1

    invoke-direct/range {v2 .. v9}, Lw6$a;-><init>(ZZZLandroid/view/ViewGroup;Lcn/dreamtobe/kpswitch/b;Lw6$b;I)V

    .line 11
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-object p0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 2

    .line 1
    sget v0, Lw6;->a:I

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    sget v1, Lw6;->c:I

    if-nez v1, :cond_0

    const v1, 0x7f06029f

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lw6;->c:I

    .line 5
    :cond_0
    sget v0, Lw6;->c:I

    .line 6
    invoke-static {p0, v0}, Lv6;->a(Landroid/content/Context;I)I

    move-result p0

    sput p0, Lw6;->a:I

    .line 7
    :cond_1
    sget p0, Lw6;->a:I

    return p0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 1

    .line 1
    sget v0, Lw6;->d:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f06029e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lw6;->d:I

    .line 3
    :cond_0
    sget p0, Lw6;->d:I

    return p0
.end method

.method public static e(Landroid/content/Context;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    sget v1, Lw6;->b:I

    if-nez v1, :cond_0

    const v1, 0x7f06029d

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lw6;->b:I

    .line 4
    :cond_0
    sget v0, Lw6;->b:I

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 6
    sget v2, Lw6;->c:I

    if-nez v2, :cond_1

    const v2, 0x7f06029f

    .line 7
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lw6;->c:I

    .line 8
    :cond_1
    sget v1, Lw6;->c:I

    .line 9
    invoke-static {p0}, Lw6;->c(Landroid/content/Context;)I

    move-result p0

    .line 10
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 11
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static f(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public static g(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
