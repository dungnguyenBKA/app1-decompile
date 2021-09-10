.class public Lcom/camerasideas/collagemaker/activity/widget/m;
.super Landroid/widget/Toast;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/activity/widget/m$a;,
        Lcom/camerasideas/collagemaker/activity/widget/m$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 3
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/camerasideas/collagemaker/activity/widget/m;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lcom/camerasideas/collagemaker/activity/widget/m;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 3
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    const-class v0, Ljava/lang/reflect/Field;

    const-string v2, "accessFlags"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, -0x11

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 9
    :cond_1
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/camerasideas/collagemaker/activity/widget/m;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/widget/m;-><init>(Landroid/content/Context;)V

    const-string v1, "layout_inflater"

    .line 3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v2, "android"

    const-string v3, "transient_notification"

    const-string v4, "layout"

    .line 5
    invoke-virtual {p0, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const-string v3, "message"

    const-string v4, "id"

    .line 6
    invoke-virtual {p0, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 9
    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    return-object v0

    .line 10
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public show()V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const-string v0, "mShow"

    :try_start_0
    const-string v1, "mTN"

    .line 2
    invoke-static {p0, v1}, Lcom/camerasideas/collagemaker/activity/widget/m;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3
    invoke-static {v1, v0}, Lcom/camerasideas/collagemaker/activity/widget/m;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 4
    instance-of v4, v3, Ljava/lang/Runnable;

    if-eqz v4, :cond_1

    .line 5
    new-instance v2, Lcom/camerasideas/collagemaker/activity/widget/m$b;

    check-cast v3, Ljava/lang/Runnable;

    invoke-direct {v2, p0, v3}, Lcom/camerasideas/collagemaker/activity/widget/m$b;-><init>(Lcom/camerasideas/collagemaker/activity/widget/m;Ljava/lang/Runnable;)V

    invoke-static {v1, v0, v2}, Lcom/camerasideas/collagemaker/activity/widget/m;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    :cond_1
    if-nez v2, :cond_2

    const-string v0, "mHandler"

    .line 6
    invoke-static {v1, v0}, Lcom/camerasideas/collagemaker/activity/widget/m;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    instance-of v1, v0, Landroid/os/Handler;

    if-eqz v1, :cond_2

    const-string v1, "mCallback"

    .line 8
    new-instance v2, Lcom/camerasideas/collagemaker/activity/widget/m$a;

    move-object v3, v0

    check-cast v3, Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/camerasideas/collagemaker/activity/widget/m$a;-><init>(Lcom/camerasideas/collagemaker/activity/widget/m;Landroid/os/Handler;)V

    invoke-static {v0, v1, v2}, Lcom/camerasideas/collagemaker/activity/widget/m;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    :cond_2
    if-nez v2, :cond_3

    const-string v0, "ToastCompat"

    const-string v1, "tryToHack error."

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    :cond_3
    :goto_1
    invoke-super {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
