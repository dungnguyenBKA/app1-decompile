.class public abstract Lza0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lab0;


# instance fields
.field private a:Lxa0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lza0;Landroid/app/Activity;Lcb0;)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_0

    .line 2
    iget-object v0, p0, Lza0;->a:Lxa0;

    invoke-virtual {p0, p1}, Lza0;->i(Landroid/app/Activity;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lxa0;->e(Z)V

    .line 3
    iget-object v0, p0, Lza0;->a:Lxa0;

    invoke-virtual {v0}, Lxa0;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lza0;->g(Landroid/app/Activity;)[I

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lza0;->a:Lxa0;

    invoke-virtual {p0, p1}, Lza0;->h(Landroid/app/Activity;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lxa0;->e(Z)V

    .line 6
    iget-object v0, p0, Lza0;->a:Lxa0;

    invoke-virtual {v0}, Lxa0;->a()Ljava/lang/String;

    iget-object v0, p0, Lza0;->a:Lxa0;

    invoke-virtual {v0}, Lxa0;->c()Z

    .line 7
    iget-object v0, p0, Lza0;->a:Lxa0;

    invoke-virtual {v0}, Lxa0;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0, p1}, Lza0;->f(Landroid/app/Activity;)[I

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    array-length v0, p1

    if-le v0, v2, :cond_2

    .line 10
    iget-object v0, p0, Lza0;->a:Lxa0;

    invoke-virtual {v0}, Lxa0;->a()Ljava/lang/String;

    aget v0, p1, v1

    aget v0, p1, v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 11
    :cond_2
    :goto_0
    iget-object v0, p0, Lza0;->a:Lxa0;

    invoke-virtual {v0}, Lxa0;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 12
    array-length v0, p1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 13
    iget-object v0, p0, Lza0;->a:Lxa0;

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Lxa0;->g(I)V

    .line 14
    iget-object v0, p0, Lza0;->a:Lxa0;

    aget p1, p1, v2

    invoke-virtual {v0, p1}, Lxa0;->f(I)V

    goto :goto_1

    .line 15
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lza0;->a:Lxa0;

    invoke-virtual {p0}, Lxa0;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " notch args get error"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    .line 16
    iget-object p0, p0, Lza0;->a:Lxa0;

    invoke-interface {p2, p0}, Lcb0;->a(Lxa0;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public b(Landroid/app/Activity;Z)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lza0;->d(Landroid/app/Activity;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const/4 v0, 0x2

    .line 4
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p0, p1}, Lza0;->c(Landroid/app/Activity;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, p1}, Lza0;->e(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method protected c(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method protected d(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method protected e(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method protected abstract f(Landroid/app/Activity;)[I
.end method

.method protected g(Landroid/app/Activity;)[I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    aput v2, v0, v1

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const/4 v2, 0x1

    aput p1, v0, v2

    .line 8
    iget-object p1, p0, Lza0;->a:Lxa0;

    invoke-virtual {p1}, Lxa0;->a()Ljava/lang/String;

    aget p1, v0, v1

    aget p1, v0, v2

    :cond_0
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method protected abstract h(Landroid/app/Activity;)Z
.end method

.method protected i(Landroid/app/Activity;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lza0;->a:Lxa0;

    invoke-virtual {p1}, Lxa0;->a()Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Lza0;->a:Lxa0;

    invoke-virtual {p1}, Lxa0;->a()Ljava/lang/String;

    return v0
.end method

.method public j(Landroid/app/Activity;Lcb0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lza0;->a:Lxa0;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lza0;->a:Lxa0;

    .line 3
    :cond_0
    new-instance v0, Lxa0;

    invoke-direct {v0}, Lxa0;-><init>()V

    iput-object v0, p0, Lza0;->a:Lxa0;

    .line 4
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Lxa0;->d(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lza0$a;

    invoke-direct {v1, p0, p1, p2}, Lza0$a;-><init>(Lza0;Landroid/app/Activity;Lcb0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
