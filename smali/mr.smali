.class public final Lmr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lkr;

.field private static b:Lfr;

.field private static c:Landroid/widget/Toast;


# direct methods
.method private static a()V
    .locals 2

    .line 1
    sget-object v0, Lmr;->c:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ToastUtils has not been initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b()Landroid/widget/Toast;
    .locals 1

    .line 1
    sget-object v0, Lmr;->c:Landroid/widget/Toast;

    return-object v0
.end method

.method public static c(Landroid/app/Application;)V
    .locals 11

    .line 1
    new-instance v0, Lpr;

    invoke-direct {v0, p0}, Lpr;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object v1, Lmr;->a:Lkr;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lkr;

    invoke-direct {v1}, Lkr;-><init>()V

    .line 4
    sput-object v1, Lmr;->a:Lkr;

    .line 5
    :cond_0
    sget-object v1, Lmr;->b:Lfr;

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Llr;

    invoke-direct {v1}, Llr;-><init>()V

    .line 7
    sput-object v1, Lmr;->b:Lfr;

    .line 8
    sget-object v2, Lmr;->c:Landroid/widget/Toast;

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v1, v2}, Llr;->a(Landroid/widget/Toast;)V

    .line 10
    :cond_1
    sget-object v1, Lmr;->b:Lfr;

    check-cast v1, Llr;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const/4 v3, 0x0

    if-lt v1, v2, :cond_2

    .line 13
    new-instance v1, Ler;

    invoke-direct {v1, p0}, Ler;-><init>(Landroid/app/Application;)V

    goto/16 :goto_3

    :cond_2
    const/16 v4, 0x19

    if-ne v1, v4, :cond_3

    .line 14
    new-instance v1, Lir;

    invoke-direct {v1, p0}, Lir;-><init>(Landroid/app/Application;)V

    goto/16 :goto_3

    :cond_3
    const/16 v4, 0x1d

    const/4 v5, 0x1

    if-ge v1, v4, :cond_7

    const/16 v4, 0x18

    if-lt v1, v4, :cond_4

    .line 15
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v1

    goto :goto_1

    :cond_4
    const-string v1, "appops"

    .line 16
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 17
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "checkOpNoThrow"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    aput-object v9, v8, v5

    const-class v9, Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v8, "OP_POST_NOTIFICATION"

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 19
    const-class v8, Ljava/lang/Integer;

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-array v7, v7, [Ljava/lang/Object;

    .line 20
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v10

    invoke-virtual {v4, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_7

    .line 21
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "xiaomi"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    :cond_7
    :goto_2
    if-eqz v5, :cond_8

    .line 23
    new-instance v1, Lgr;

    invoke-direct {v1, p0}, Lgr;-><init>(Landroid/app/Application;)V

    goto :goto_3

    .line 24
    :cond_8
    new-instance v1, Ler;

    invoke-direct {v1, p0}, Ler;-><init>(Landroid/app/Application;)V

    .line 25
    :goto_3
    sget-object v4, Lmr;->c:Landroid/widget/Toast;

    if-eqz v4, :cond_9

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_9

    .line 26
    sget-object v4, Lmr;->c:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Lgr;->setView(Landroid/view/View;)V

    .line 27
    sget-object v4, Lmr;->c:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->getGravity()I

    move-result v4

    sget-object v5, Lmr;->c:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->getXOffset()I

    move-result v5

    sget-object v6, Lmr;->c:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->getYOffset()I

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 28
    sget-object v4, Lmr;->c:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->getHorizontalMargin()F

    move-result v4

    sget-object v5, Lmr;->c:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->getVerticalMargin()F

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/Toast;->setMargin(FF)V

    .line 29
    :cond_9
    sput-object v1, Lmr;->c:Landroid/widget/Toast;

    .line 30
    sget-object v4, Lmr;->b:Lfr;

    if-eqz v4, :cond_a

    .line 31
    check-cast v4, Llr;

    invoke-virtual {v4, v1}, Llr;->a(Landroid/widget/Toast;)V

    .line 32
    :cond_a
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const p0, 0x102000b

    .line 33
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setId(I)V

    const/high16 p0, -0x45000000    # -0.001953125f

    .line 34
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    invoke-virtual {v0}, Lpr;->g()F

    move-result p0

    invoke-virtual {v1, v3, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 36
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    invoke-virtual {v0}, Lpr;->e()I

    move-result v4

    invoke-virtual {v0}, Lpr;->f()I

    move-result v5

    .line 38
    invoke-virtual {v0}, Lpr;->e()I

    move-result v6

    .line 39
    invoke-virtual {v0}, Lpr;->f()I

    move-result v7

    .line 40
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 41
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v5, -0x151516

    .line 43
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 44
    invoke-virtual {v0}, Lpr;->d()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 45
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v4, 0x15

    if-lt p0, v4, :cond_b

    int-to-float p0, v2

    .line 46
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setZ(F)V

    :cond_b
    const/4 p0, 0x5

    .line 47
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 48
    invoke-static {}, Lmr;->a()V

    .line 49
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 50
    instance-of v2, p0, Landroid/app/Activity;

    if-nez v2, :cond_d

    instance-of p0, p0, Landroid/app/Service;

    if-nez p0, :cond_d

    .line 51
    sget-object p0, Lmr;->c:Landroid/widget/Toast;

    if-eqz p0, :cond_c

    .line 52
    invoke-virtual {p0}, Landroid/widget/Toast;->cancel()V

    .line 53
    sget-object p0, Lmr;->c:Landroid/widget/Toast;

    invoke-virtual {p0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    :cond_c
    const/16 p0, 0x50

    .line 54
    invoke-virtual {v0}, Lor;->b()I

    move-result v0

    .line 55
    invoke-static {}, Lmr;->a()V

    .line 56
    invoke-static {}, Lmr;->a()V

    .line 57
    sget-object v1, Lmr;->c:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    invoke-static {p0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p0

    .line 59
    sget-object v1, Lmr;->c:Landroid/widget/Toast;

    invoke-virtual {v1, p0, v3, v0}, Landroid/widget/Toast;->setGravity(III)V

    return-void

    .line 60
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The view must be initialized using the context of the application"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized d(Ljava/lang/CharSequence;)V
    .locals 3

    const-class v0, Lmr;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lmr;->a()V

    .line 2
    sget-object v1, Lmr;->a:Lkr;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_1

    .line 4
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_2
    :try_start_1
    sget-object v1, Lmr;->b:Lfr;

    check-cast v1, Llr;

    invoke-virtual {v1, p0}, Llr;->b(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
