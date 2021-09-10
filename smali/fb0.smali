.class public Lfb0;
.super Lza0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lza0;-><init>()V

    return-void
.end method


# virtual methods
.method protected f(Landroid/app/Activity;)[I
    .locals 9

    const-string v0, ","

    const-string v1, ""

    const-string v2, "ro.oppo.screen.heteromorphism"

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "android.os.SystemProperties"

    .line 1
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "get"

    new-array v7, v3, [Ljava/lang/Class;

    .line 2
    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 3
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v2, v7, v4

    .line 4
    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-object v2, v1

    .line 6
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    const-string v5, "["

    .line 7
    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "]"

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 8
    array-length v2, v1

    if-ne v2, v7, :cond_1

    .line 9
    aget-object v2, v1, v4

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 10
    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [I

    .line 11
    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v4

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v3

    new-array v2, v7, [I

    .line 12
    aget-object v5, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v2, v4

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v2, v3

    .line 13
    aget v0, v2, v4

    aget v5, v1, v4

    sub-int/2addr v0, v5

    .line 14
    aget v2, v2, v3

    aget v1, v1, v3

    sub-int/2addr v2, v1

    new-array v1, v7, [I

    aput v0, v1, v4

    aput v2, v1, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 15
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_1
    :goto_1
    if-nez v6, :cond_3

    new-array v6, v7, [I

    const/16 v0, 0x144

    aput v0, v6, v4

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v5, "android"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :cond_2
    aput v4, v6, v3

    :cond_3
    return-object v6
.end method

.method protected h(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
